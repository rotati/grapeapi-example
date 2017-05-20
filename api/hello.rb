module RGA
  class Hello < Grape::API
    format :json
    get '/hello' do
      { hello: 'world' }
    end
  end
end
