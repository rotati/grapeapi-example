module RGA
  class API < Grape::API
    prefix 'api'
    format :json
    mount ::RGA::Hello
  end
end
