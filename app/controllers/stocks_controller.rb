class StocksController < ApplicationController
   
   def search
       @stock = Stock.new_from_lookup(params[:stock])
       #render json: @profile
       render 'users/my_profile'
   end
    
end