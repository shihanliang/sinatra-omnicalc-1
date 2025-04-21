require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end


get("/square/new") do
  erb :square_form
end

get("/square/results") do
  @user_number = params[:user_number].to_f
  @square = @user_number ** 2
  erb :square_results
end

get("/square_root/new") do
  erb :sqrt_form
end

get("/square_root/results") do
  @user_number = params[:user_number].to_f
  @sqrt = Math.sqrt(@user_number)
  erb :sqrt_results
end

get("/random/new") do
  erb :random_form
end

get("/random/results") do
  @min = params[:user_min].to_f
  @max = params[:user_max].to_f
  @random_number = rand(@min..@max)
  erb :random_results
end

get("/payment/new") do
  erb :payment_form
end


