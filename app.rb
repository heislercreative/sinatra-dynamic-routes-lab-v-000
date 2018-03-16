require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @backwards = params[:name].reverse
    "#{@backwards}"
  end
  
  get '/square/:number' do
    @num = params[:number].to_i
    @sqnum = @num**2
    "#{@sqnum}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phr = params[:phrase]
    
  end

end