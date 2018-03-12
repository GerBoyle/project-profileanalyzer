class Stock < ApplicationRecord
    
    def self.new_from_lookup(username)
        lookedup_path = 'https://api.github.com/users/' + username + '/repos'
        looked_up_stock1 = HTTParty.get(lookedup_path)
        looked_up_stock = looked_up_stock1.parsed_response
    
       
        #looked_up_stock
    end
    

end
