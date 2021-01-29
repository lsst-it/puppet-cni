# frozen_string_literal: true

require 'spec_helper'

describe 'cni::plugins::enable' do
  let(:facts) do
    {
      os: {
        family: 'RedHat',
      },
    }
  end
  let(:title) { 'foo' }

  it { is_expected.to compile.with_all_deps }
end
