class Profile < ApplicationRecord
   
    def self.new_from_lookupRepos(username)
        lookedup_path = 'https://api.github.com/users/' + username + '/repos'

        HTTParty.get(lookedup_path)
        
        
    end

    def self.new_from_lookupUser(username)
        lookedup_path = 'https://api.github.com/users/' + username
        HTTParty.get(lookedup_path)
    end


end
