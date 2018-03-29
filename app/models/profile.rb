class Profile < ApplicationRecord
   
    def self.new_from_lookupRepos(username)
        lookedup_path = 'https://api.github.com/users/' + username + '/repos'
        #looked_up_profile = HTTParty.get(lookedup_path, headers: {"Authorization" => "Token token=\"c21b2bf969c66418ba9ad423e9084725843e4cff\""})
      
        auth = {:username => "GerBoyle", :password => "#"}
        looked_up_profile = HTTParty.get(lookedup_path, :basic_auth => auth)
        
        
    end

    def self.new_from_lookupUser(username)
        lookedup_path = 'https://api.github.com/users/' + username
        auth = {:username => "GerBoyle", :password => "#"}
        looked_up_profile = HTTParty.get(lookedup_path, :basic_auth => auth)
    end


end
