require 'spec_helper'

describe Product do
	
	let!(:product) { create(:product) }
  	
	it "should have a valid factory" do
		product.should be_valid
	end
# Now using shoulda to make tests more readable
	 it { should validate_presence_of(:name) }

	# it "must have a name" do
 #    	product.name = " "
 #    	product.should_not be_valid
 #  	end

 	it { should validate_presence_of(:description)}

  	it "must have a price" do
  		product.price_in_cents = " "
  	end

  	it "must have an integer for price" do
  		product.price_in_cents.is_a? Integer
  	end

  	it "has a formatted price" do
  		product.formatted_price 
  	end

  	it "can have many reviews" do
  		product.reviews
  	end

  	it "can list users that reviewed it with no duplicates" do
  		product.users 
  	end
 end