require "sinatra"
require "csv"
require "pry"

get "/favorites-list" do
  @favorites = CSV.readlines('favorites_list.csv', headers: true)
  erb :index
end

get "/favorites" do
  erb :new
end

get "/" do
  redirect "/favorites-list"
end

post "/favorites" do

  favorite = params[:favorite]
  unless favorite.strip.empty?
    CSV.open('favorites_list.csv', "a") do |csv|
      csv << [favorite]
    end
  end

  redirect "/"
end
