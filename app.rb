require('sinatra')
require('json')

# accept connection from any host, not just local host so will work both in container and locally
set(:bind, '0.0.0.0')

get '/hello-world' do
    content_type(:json)
    response = {message: 'Hello CodeClan!'}
    return response.to_json()
end