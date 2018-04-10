require 'test_helper'

class CategoriesUserTest < ActionDispatch::IntegrationTest
   test "should get users index" do
       get :my_profile_path
       assert_response :success
   end 
   
   test "should get new" do
       get :new_user_path
       assertresponse :success
   end
   
   test "should get show" do
       get :user_path
       assert_response :success
   end
    
end