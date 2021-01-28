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
  end
end
