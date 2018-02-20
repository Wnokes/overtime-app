require 'rails_helper'

RSpec.describe User, type: :model do
	before do
		@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "jon",last_name: "snow")
	end
	describe "creation" do
		
		it "can be created" do
			expect(@user).to be_valid
		end
		it "cannot be created without first name, last name" do
			@user.first_name = nil
			@user.last_name = nil
			expect(@user).to_not be_valid
		end
	end

	describe "custom name methods" do
		it "Has a full name method that combines fist nd last name" do
			expect(@user.full_name).to eq("SNOW, JON")
		end
	end
end
