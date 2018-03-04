class StocksController < ApplicationController
   
   def search
       @stock = Stock.new_from_lookup(params[:stock])
       #looked_up_stock = HTTParty.get('https://api.github.com/users/GerBoyle')
       render json: @stock
   end
    
end