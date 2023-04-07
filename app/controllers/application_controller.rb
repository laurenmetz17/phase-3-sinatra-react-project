

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/inventory" do
    inventory = Shoe.all
    inventory.to_json
  end

  get "/inventory/count" do 
    count = Shoe.all.count
    count.to_json
  end

  get "/shoe_stores" do
    stores = ShoeStore.all
    stores.to_json
  end

  post '/inventory' do
    shoe = Shoe.create(
      name: params[:name],
      style: parmas[:style],
      price: params[:price],
      color: params[:color],
      shoe_store_id: params[:shoe_store_id]
    )

    shoe.to_json
  end

end
