require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{:name.reverse}"
  end

end