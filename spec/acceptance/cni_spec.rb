# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'cni class' do
  context 'without any parameters', :cleanup_opt do
    let(:manifest) do
      <<-PP
      include cni
      PP
    end

    it_behaves_like 'an idempotent resource'

    %w[
      /opt/cni
      /opt/cni/bin
      /opt/cni/plugins
      /opt/cni/plugins/dl
      /run/cni
    ].each do |d|
      describe file(d) do
        it { is_expected.to be_directory }
        it { is_expected.to be_owned_by 'root' }
        it { is_expected.to be_grouped_into 'root' }
        it { is_expected.to be_mode '755' }
      end
    end
  end

  context 'with base_path param' do
    basedir = default.tmpdir('cni')

    let(:manifest) do
      <<-PP
      class { cni:
        base_path => '#{basedir}',
      }
      PP
    end

    it_behaves_like 'an idempotent resource'

    [
      basedir,
      "#{basedir}/bin",
      "#{basedir}/plugins",
      "#{basedir}/plugins/dl",
      '/run/cni',
    ].each do |d|
      describe file(d) do
        it { is_expected.to be_directory }
        it { is_expected.to be_owned_by 'root' }
        it { is_expected.to be_grouped_into 'root' }
        it { is_expected.to be_mode '755' }
      end
    end
  end
end
