require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  
  def setup
    @user = User.new(name: "username")
  end
  
  

  test "name should be present" do
    @user.email = ""
    assert_not @user.valid?
  end
  
  test "email should be unique" do
    @user.save
    user2 = User.new(email: "username")
    assert_not user2.valid?
  end
  
  
end
