# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'cni::plugins::dhcp class' do
  context 'without any parameters', :cleanup_opt do
    let(:pp) do
      <<-EOS
      class { 'cni::plugins::dhcp': }
      EOS
    end

    it_behaves_like 'an idempotent resource'

    describe file('/opt/cni/bin/dhcp') do
      it { is_expected.to be_file }
      it { is_expected.to be_owned_by 'root' }
      it { is_expected.to be_grouped_into 'root' }
    end
    describe file('/etc/systemd/system/cni-dhcp.service') do
      it { is_expected.to be_file }
      it { is_expected.to be_owned_by 'root' }
      it { is_expected.to be_grouped_into 'root' }
      its(:content) { is_expected.to match %r{ExecStart=/opt/cni/bin/dhcp daemon} }
    end
    describe file('/etc/systemd/system/cni-dhcp.socket') do
      it { is_expected.to be_file }
      it { is_expected.to be_owned_by 'root' }
      it { is_expected.to be_grouped_into 'root' }
      its(:content) { is_expected.to match %r{ListenStream=/run/cni/dhcp.sock} }
    end
    describe file('/run/cni/dhcp.sock') do
      it { is_expected.to be_file }
      it { is_expected.to be_owned_by 'root' }
      it { is_expected.to be_grouped_into 'root' }
    end

    describe service('cni-dhcp') do
      # does not work on el7
      # it { is_expected.to be_installed }
      it { is_expected.to be_enabled }
      it { is_expected.to be_running }
    end
  end
end
