class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/items' do 
    items = Item.all 
    items.to_json
  end

  get '/items/:id' do 
    item = Item.find(params[:id])
    item.to_json(include: buyer)
  end

  get '/buyers' do 
    buyer = Buyer.all
    buyer.to_json 
  end

  post '/items' do 
    item = Item.create(
      name: params[:name],
      category: params[:category],
      price: params[:price],
      isincart: params[:isincart],
      buyer_id: params[:buyer_id]
    )
    item.to_json
  end

  post '/buyers' do 
    buyer = Buyer.create(
      name: params[:name],
      location: params[:location]
   )
   buyer.to_json
  end

  # patch '/items/:id' do 
  #   item = Item.find(params[:id])
  #   item.update(
  #     name: params[:name],
  #     category: params[:category],
  #     price: params[:price]
  #   )
  #   item.to_json
  # end

  # patch '/buyers/:id' do 
  #   buyer = Buyer.find(params[:id])
  #   buyer.update(
  #     location: params[:location]
  #   )
  #   buyer.to_json
  # end

  # delete '/items/:id' do 
  #   item = Item.find(params[:id])
  #   item.destroy
  #   item.to_json
  # end

end
