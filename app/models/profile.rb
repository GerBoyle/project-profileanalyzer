class Profile < ApplicationRecord
   
    def self.new_from_lookupRepos(username)
        lookedup_path = 'https://api.github.com/users/' + username + '/repos'
        auth = {:username => "GerBoyle", :password => "#"}
        HTTParty.get(lookedup_path, :basic_auth => auth)
        
        
    end

    def self.new_from_lookupUser(username)
        lookedup_path = 'https://api.github.com/users/' + username
        auth = {:username => "GerBoyle", :password => "#"}
        HTTParty.get(lookedup_path, :basic_auth => auth)
    end


end
