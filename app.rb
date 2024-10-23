require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add/new") do
  erb(:add_form)
end

get("/add/results") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @the_result = @first_num + @second_num
  erb(:add_result)
end

get("/sub/new") do
  erb(:sub_form)
end

get("/sub/results") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @the_result = @first_num - @second_num
  erb(:sub_result)
end

get("/multiply/new") do
  erb(:mult_form)
end

get("/multiply/results") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @the_result = @first_num * @second_num
  erb(:mult_result)
end

get("/divide/new") do
  erb(:div_form)
end

get("/divide/results") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @the_result = @first_num / @second_num
  erb(:div_result)
end
