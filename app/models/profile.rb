class Profile < ApplicationRecord
    
    def self.new_from_lookup(username)
        #lookedup_path = 'https://api.github.com/users/' + username
        lookedup_path = 'https://api.github.com/users/' + username + '/repos'
        looked_up_profile = HTTParty.get(lookedup_path)
        #looked_up_profile1 = looked_up_profile.parsed_response
    end


end
