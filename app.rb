require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{:name.to_s.reverse}"
  end

end