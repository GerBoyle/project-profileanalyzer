class Stock < ApplicationRecord
    
    def self.new_from_lookup(username)
        lookedup_path = 'https://api.github.com/users/' + username
        looked_up_stock = HTTParty.get(lookedup_path)
        
    
       
        #looked_up_stock
    end
    

end
