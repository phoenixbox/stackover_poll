class StackConnection
  attr_reader :client_id, :client_secret, :key

  def initialize(options)
    @client_id = options[:stack_client_id]
    @client_secret = options[:stack_client_secret]
    @key = options[:stack_key]

    raise ArgumentError, 'Missing stack client id' unless client_id
    raise ArgumentError, 'Missing stack client secret' unless client_secret
  end
end