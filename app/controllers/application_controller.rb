

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

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
    stores.to_json(include: :shoes)
  end

  get "/shoe_stores/:id" do 
    store = ShoeStore.find(params[:id])
    store.to_json(include: :shoes)
  end

  get "/inventory/:id" do 
    shoe = Shoe.find(params[:id])
    shoe.to_json
  end

  post '/inventory' do
    shoe_store = ShoeStore.find_by(params[:shoe_store_id])
    shoe = shoe_store.shoes.create(
      name: params[:name],
      style: params[:style],
      price: params[:price],
      color: params[:color]
    )

    shoe.to_json
  end

  post '/shoe_stores' do
    store = ShoeStore.create(
      name: params[:name],
      address: params[:address]
    )

    store.to_json
  end

  patch '/inventory/:id' do
    shoe = Shoe.find(params[:id])
    shoe.update(
      price: params[:price]
    )
    shoe.to_json
  end

  patch '/shoe_stores/:id' do
    store = ShoeStore.find(params[:id])
    store.update(
      address: params[:address]
    )
    store.to_json
  end

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
