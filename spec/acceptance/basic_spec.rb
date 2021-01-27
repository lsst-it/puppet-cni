# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'cni class' do
  let(:pp) do
    <<-EOS
    include ::cni
    EOS
  end

  it_behaves_like 'an idempotent resource'

  %w[
    /opt/cni
    /opt/cni/bin
    /opt/cni/plugins
  ].each do |d|
    describe file(d) do
      it { is_expected.to be_directory }
      it { is_expected.to be_owned_by 'root' }
      it { is_expected.to be_grouped_into 'root' }
      it { is_expected.to be_mode '755' }
    end
  end
end
