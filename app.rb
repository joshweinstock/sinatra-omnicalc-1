require "sinatra"
require "sinatra/reloader"

get("/") do
  @number_square=params.fetch("number").ti_i
  @answer=[]
erb(:homepage)
end
