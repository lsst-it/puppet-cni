# frozen_string_literal: true

require 'spec_helper'

describe 'cni' do
  describe 'without any parameters' do
    it { is_expected.to compile.with_all_deps }

    %w[
      /opt/cni
      /opt/cni/bin
      /opt/cni/plugins
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
