require 'spec_helper'

describe StackConnection do
  describe '#initialize' do
    let(:valid_options) {
      { :stack_client_id => ENV["STACK_CLIENT_ID"], :stack_client_secret => ENV["STACK_CLIENT_SECRET"], :stack_key => ENV["STACK_KEY"] }
    }
    context 'with valid options' do
      it 'creates a valid communicator and exposes attributes' do
        communicator = StackConnection.new(valid_options)
        expect(communicator.client_id).to eq ENV["STACK_CLIENT_ID"]
        expect(communicator.client_secret).to eq ENV["STACK_CLIENT_SECRET"]
        expect(communicator.key).to eq ENV["STACK_KEY"]
      end
    end
  end
end