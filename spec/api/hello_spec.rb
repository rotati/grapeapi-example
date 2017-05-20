require 'spec_helper'

describe RGA::API do
  include Rack::Test::Methods

  def app
    RGA::API
  end

  it 'hello' do
    get '/api/hello'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to eq({ hello: 'world' }.to_json)
  end
end
