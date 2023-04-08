

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

  get "/shoe_stores/:id" do 
    store = ShoeStore.find(params[:id])
    store.to_json
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

  ##add patch

  delete '/inventory/:id' do
    shoe = Shoe.find(params[:id])
    shoe.destroy
    shoe.to_json
  end

  delete '/shoe_stores/:id' do
    store = ShoeStore.find(params[:id])
    store.destroy
    store.to_json
  end

end
