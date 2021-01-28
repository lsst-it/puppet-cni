# frozen_string_literal: true

require 'spec_helper'

describe 'cni::plugins' do
  let(:facts) do
    {
      os: {
        family: 'RedHat',
      },
    }
  end

  describe 'without any parameters' do
    it { is_expected.to compile.with_all_deps }

    it { is_expected.to have_cni__plugins__enable_resource_count(0) }
  end

  describe 'with enable param' do
    let(:params) do
      {
        'enable' => %w[
          macvlan
          dhcp
        ],
      }
    end
    it { is_expected.to compile.with_all_deps }

    it { is_expected.to contain_cni__plugins__enable('macvlan') }
    it { is_expected.to contain_cni__plugins__enable('dhcp') }
    it { is_expected.to have_cni__plugins__enable_resource_count(2) }
  end
end
