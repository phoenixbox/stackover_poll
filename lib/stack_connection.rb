class StackConnection
  attr_reader :client_id, :client_secret, :key

  def initialize(options)
    @client_id = options[:stack_client_id]
    @client_secret = options[:stack_client_secret]
    @key = options[:stack_key]
  end
end