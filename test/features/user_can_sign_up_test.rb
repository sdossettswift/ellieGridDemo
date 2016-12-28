require "test_helper"

class UserCanSignUpTest < Capybara::Rails::TestCase
	test "Can Create User" do 
		visit root_path
		click_link "Sign Up"
		fill_in "Name", with: "test"
		fill_in "Email", with: "sdossettswift@gmail.com"
		fill_in "Password", with: "12345678"
		fill_in "Password confirmation", with: "12345678"
		click_button "Create User"
		assert_content page, "Welcome! Your account has been created."
	end
end
