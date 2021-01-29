# frozen_string_literal: true

require 'spec_helper'

describe 'cni::plugins::dhcp' do
  let(:facts) do
    {
      os: {
        family: 'RedHat',
      },
      path: '/bin',
    }
  end

  describe 'without any parameters' do
    it { is_expected.to compile.with_all_deps }

    it { is_expected.to contain_cni__plugins__enable('dhcp') }
    it do
      is_expected.to contain_systemd__unit_file('cni-dhcp.service').with(
        content: %r{ExecStart=/opt/cni/bin/dhcp daemon},
      ).that_comes_before('Service[cni-dhcp]')
    end
    it { is_expected.to contain_systemd__unit_file('cni-dhcp.socket') }
    it do
      is_expected.to contain_service('cni-dhcp').with(
        ensure: 'running',
        enable: true,
      )
    end
  end
end
