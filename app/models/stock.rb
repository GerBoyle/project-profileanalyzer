class Stock < ApplicationRecord
    
    def self.new_from_lookup(ticker_symbol)
        lookedup_path = 'https://api.github.com/users/' + ticker_symbol
        looked_up_stock = HTTParty.get(lookedup_path)
        
        
       #body = JSON.parse(looked_up_stock.body)
        #id = body["id"]
        #new(login: looked_up_stock.login, id: looked_up_stock.id, name: looked_up_stock.name)
        looked_up_stock
    end
    

end
