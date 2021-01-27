# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'cni::plugins::install class' do
  describe 'without any parameters' do
    let(:pp) do
      <<-EOS
      include ::cni::plugins::install
      EOS
    end

    it_behaves_like 'an idempotent resource'

    %w[
      /opt/cni/plugins/dl/cni-plugins-linux-amd64-v0.8.5.tgz
    ].each do |d|
      describe file(d) do
        it { is_expected.to be_file }
        it { is_expected.to be_owned_by 'root' }
        it { is_expected.to be_grouped_into 'root' }
        it { is_expected.to be_mode '644' }
      end
    end

    %w[
      /opt/cni/plugins/0.8.5
    ].each do |d|
      describe file(d) do
        it { is_expected.to be_directory }
        it { is_expected.to be_owned_by 'root' }
        it { is_expected.to be_grouped_into 'root' }
        it { is_expected.to be_mode '755' }
      end
    end

    %w[
      /opt/cni/plugins/0.8.5/macvlan
      /opt/cni/plugins/0.8.5/dhcp
    ].each do |d|
      describe file(d) do
        it { is_expected.to be_file }
        it { is_expected.to be_owned_by 'root' }
        it { is_expected.to be_grouped_into 'root' }
        it { is_expected.to be_mode '755' }
      end
    end
  end

  describe 'with parameters' do
    context '0.8.5' do
      let(:pp) do
        <<-EOS
        class { cni::plugins::install:
          version       => '0.8.5',
          checksum_type => 'sha256',
          checksum      => 'bd682ffcf701e8f83283cdff7281aad0c83b02a56084d6e601216210732833f9',
        }
        EOS
      end

      it_behaves_like 'an idempotent resource'

      %w[
        /opt/cni/plugins/dl/cni-plugins-linux-amd64-v0.8.5.tgz
      ].each do |d|
        describe file(d) do
          it { is_expected.to be_file }
          it { is_expected.to be_owned_by 'root' }
          it { is_expected.to be_grouped_into 'root' }
          it { is_expected.to be_mode '644' }
        end
      end

      %w[
        /opt/cni/plugins/0.8.5
      ].each do |d|
        describe file(d) do
          it { is_expected.to be_directory }
          it { is_expected.to be_owned_by 'root' }
          it { is_expected.to be_grouped_into 'root' }
          it { is_expected.to be_mode '755' }
        end
      end

      %w[
        /opt/cni/plugins/0.8.5/macvlan
        /opt/cni/plugins/0.8.5/dhcp
      ].each do |d|
        describe file(d) do
          it { is_expected.to be_file }
          it { is_expected.to be_owned_by 'root' }
          it { is_expected.to be_grouped_into 'root' }
          it { is_expected.to be_mode '755' }
        end
      end
    end  # 0.8.5

    context '0.9.0' do
      let(:pp) do
        <<-EOS
        class { cni::plugins::install:
          version       => '0.9.0',
          checksum_type => 'sha256',
          checksum      => '58a58d389895ba9f9bbd3ef330f186c0bb7484136d0bfb9b50152eed55d9ec24',
        }
        EOS
      end

      it_behaves_like 'an idempotent resource'

      %w[
        /opt/cni/plugins/dl/cni-plugins-linux-amd64-v0.9.0.tgz
      ].each do |d|
        describe file(d) do
          it { is_expected.to be_file }
          it { is_expected.to be_owned_by 'root' }
          it { is_expected.to be_grouped_into 'root' }
          it { is_expected.to be_mode '644' }
        end
      end

      %w[
        /opt/cni/plugins/0.9.0
      ].each do |d|
        describe file(d) do
          it { is_expected.to be_directory }
          it { is_expected.to be_owned_by 'root' }
          it { is_expected.to be_grouped_into 'root' }
          it { is_expected.to be_mode '755' }
        end
      end

      %w[
        /opt/cni/plugins/0.9.0/macvlan
        /opt/cni/plugins/0.9.0/dhcp
      ].each do |d|
        describe file(d) do
          it { is_expected.to be_file }
          it { is_expected.to be_owned_by 'root' }
          it { is_expected.to be_grouped_into 'root' }
          it { is_expected.to be_mode '755' }
        end
      end
    end  # 0.9.0
  end # with parameters
end
