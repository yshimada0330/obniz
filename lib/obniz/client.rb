module Obniz
  class Client
    URI = 'https://obniz.io/obniz'.freeze

    def initialize(obniz_id:, access_token: nil)
      @uri = "#{URI}/#{obniz_id}/api/1"
      @client = HTTPClient.new
      @access_token = access_token
    end

    def post(params)
      headers = { 'Content-Type' => 'application/json' }
      headers['authorization'] = "Bearer #{@access_token}" unless @access_token.nil?
      # @client.debug_dev=STDOUT
      @client.post(@uri, body: params.to_json, header: headers)
    end
  end
end
