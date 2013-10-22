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
    context 'with invalid options' do
      it 'without a valid client id it raises an error' do
        invalid_options = valid_options
        invalid_options.delete :stack_client_id
        expect {
          StackConnection.new(invalid_options)
        }.to raise_error(ArgumentError, 'Missing stack client id')
      end
    end
  end
end