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
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    @op = params[:operation].to_downcase
    @num1 = params[:number1]
    @num2 = params[:number2]
    
    case @op
      when"add"
        answer = @num1 + @num2
        "#{answer}"
      when "subtract"
        
      when "multiply"
        
      when "divide"
        
      else
        "Enter a valid mathematical operation."
    end
  end
  
end