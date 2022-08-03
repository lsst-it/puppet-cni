# frozen_string_literal: true

require 'spec_helper'

describe 'cni::plugins::enable' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end
      let(:title) { 'foo' }

      it { is_expected.to compile.with_all_deps }
    end
  end
end
