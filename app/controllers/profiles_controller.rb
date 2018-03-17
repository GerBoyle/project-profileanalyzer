class ProfilesController < ApplicationController
   
   def search
       if params[:profile].present?
          @profile = Profile.new_from_lookup(params[:profile])
          render 'users/my_profile'
       else
          flash[:danger] = "You have entered an empty search string"
          redirect_to my_profile_path
       end
   end
    
 
end