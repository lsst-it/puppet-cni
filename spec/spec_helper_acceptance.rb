# frozen_string_literal: true

require 'voxpupuli/acceptance/spec_helper_acceptance'

def cleanup
  on hosts, 'rm -rf /opt/cni'
end

RSpec.configure do |c|
  c.before(:context, :cleanup_opt) do
    cleanup
  end
  c.after(:context, :cleanup_opt) do
    cleanup
  end
end

configure_beaker do |host|
  install_package(host, 'git')
end

shared_examples 'an idempotent resource' do
  it 'applies with no errors' do
    apply_manifest(pp, catch_failures: true)
  end

  it 'applies a second time without changes' do
    apply_manifest(pp, catch_changes: true)
  end
end
