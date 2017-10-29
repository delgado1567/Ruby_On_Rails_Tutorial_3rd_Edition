require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest
  def setup
		@admin = users(:michael)
		@user = users(:billy)
	end
		
	test "non-activated user pages are not accesible" do
		log_in_as @admin
		get user_path @user
		assert_redirected_to root_url
	end
end
