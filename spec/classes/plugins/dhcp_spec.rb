# frozen_string_literal: true

require 'spec_helper'

describe 'cni::plugins::dhcp' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts.merge(
          path: '/bin'
        )
      end

      describe 'without any parameters' do
        it { is_expected.to compile.with_all_deps }

        it { is_expected.to contain_cni__plugins__enable('dhcp') }

        it do
          is_expected.to contain_systemd__unit_file('cni-dhcp.service').with(
            content: %r{ExecStart=/opt/cni/bin/dhcp daemon}
          ).that_comes_before('Service[cni-dhcp]').that_requires('Systemd::Unit_file[cni-dhcp.socket]')
        end

        it do
          is_expected.to contain_systemd__unit_file('cni-dhcp.socket')
        end

        it do
          is_expected.to contain_service('cni-dhcp').with(
            ensure: 'running',
            enable: true
          ).that_subscribes_to('Cni::Plugins::Enable[dhcp]')
        end
      end
    end
  end
end
