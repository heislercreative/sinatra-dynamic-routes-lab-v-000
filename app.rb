require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @backwards = :name.reverse
    "#{@backwards}"
  end

end