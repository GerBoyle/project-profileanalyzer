require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  
  def setup
    @user = User.new(email: "Ger_Boyle@yahoo.ier")
  end
  
  test "email is valid" do
    assert @user.valid?
  end

  test "e mail  should be present" do
    @user.email = ""
    assert_not @user.valid?
  end
  
  test "email should be unique" do
    @user.save
    user2 = User.new(email: "User")
    assert_not user2.valid?
  end
  
  
end
