require "sinatra"
require "sinatra/reloader"

get("/") do
erb(:square_new)
end


get("/square/new") do
erb(:square_new)
end

get("/square/results") do
@number = params.fetch("number").to_f
@square = @number ** 2
erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_new)
  end
  
get("/square_root/results") do
  @number = params.fetch("number").to_f
  @square_root = @number ** 0.5
  erb(:square_root_results)
  end

  get("/payment/new") do
    erb(:payment_new)
    end
    
  get("/payment/results") do
    @years = params.fetch("years_input").to_f
    @apr = params.fetch("apr_input").to_f
    @principal = params.fetch("principal_input").to_f
    @apr_rate = (@apr/100)/12
    @monthly = @years *12
    @payment = ( @apr_rate * @principal )/(1-(1+ @apr_rate )**- @monthly )
    
    @user_apr = @apr_rate.to_fs(:percentage, {:precision=>4})
    @user_payment = @payment.to_fs(:currency)
    @user_principal = @principal.to_fs(:currency)

    erb(:payment_results)
    end

    get("/random/new") do
      erb(:random_new)
      end

      get("/random/results") do
        @min_input = params.fetch("user_min").to_f
        @max_input = params.fetch("user_max").to_f
        @rand_num = rand(@min_input..@max_input)
    
        erb(:random_results)
        end
