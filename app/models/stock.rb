class Stock < ApplicationRecord
    
    def self.new_from_lookup(ticker_symbol)
        lookedup_path = 'https://api.github.com/users/' + ticker_symbol
       looked_up_stock = HTTParty.get(lookedup_path)
       #price = strip_commas(looked_up_stock.l)
       #new(name: looked_up_stock.name, ticker: looked_up_stock.symbol, last_price: price)
       looked_up_stock
    end
    
    
    def self.strip_commas(number)
       number.gsub(",","") 
    end
end
