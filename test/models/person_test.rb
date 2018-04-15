require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  
    def setup
      @person = Person.new(username: "Gerard")
    end
  
  test "username is valid" do
    assert @person.valid?
  end
  
end
