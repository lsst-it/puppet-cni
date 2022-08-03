# frozen_string_literal: true

require 'spec_helper'

describe 'cni' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      describe 'without any parameters' do
        it { is_expected.to compile.with_all_deps }

        %w[
          /opt/cni
          /opt/cni/bin
          /opt/cni/plugins
          /opt/cni/plugins/dl
          /run/cni
        ].each do |d|
          it do
            is_expected.to contain_file(d).with(
              ensure: 'directory',
              owner: 'root',
              group: 'root',
              mode: '0755',
            )
          end
        end
      end

      describe 'with base_path param' do
        let(:params) do
          {
            base_path: '/tmp/cni',
          }
        end

        it { is_expected.to compile.with_all_deps }

        %w[
          /tmp/cni
          /tmp/cni/bin
          /tmp/cni/plugins
          /tmp/cni/plugins/dl
          /run/cni
        ].each do |d|
          it do
            is_expected.to contain_file(d).with(
              ensure: 'directory',
              owner: 'root',
              group: 'root',
              mode: '0755',
            )
          end
        end
      end
    end
  end
end
