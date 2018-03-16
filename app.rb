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
    str = ""
    params[:number].to_i.times{str += params[:phrase]}
    str
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} "
  end
  
  get '/:operation/:number1/:number2' do
    
  end
  
end