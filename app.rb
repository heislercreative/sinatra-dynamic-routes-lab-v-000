require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @backwards = params[:name].reverse
    "#{@backwards}"
  end
  
  get '/square/:number' do
    @sqnum = params[:number].to_i**2
    "#{@sqnum.to_s}"
  end

  get '/say/:number/:phrase' do
    @phrasenumber = params[:number].to_i.times{params[:phrase]}
    "#{@phrasenumber}"
  end

end