require 'spec_helper'

describe Url do

	before do 
		@user = User.create({:email => 'blah@blah.com', :password => 'Apple123'})
		@url = Url.new({:url => "http://www.yahoo.com", :user_id => @user.id } ) 
	end
		subject { @url }

		it { should respond_to(:url) }
		it { should respond_to(:shortened_url)}

	describe "when url is not present" do
		before { @url.url = " " }
		it {should_not be_valid }
	end

	describe "when user id is not present" do
		before { @url.user_id = '' }
		it {should_not be_valid }
	end

end
