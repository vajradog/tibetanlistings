require 'spec_helper'
#require 'rails_helper'


describe "users posts a listing" do
	it "posts a new listing" do
		visit 'listings/new'
		fill_in 'name', with: name
		fill_in 'address', with: 'address'
		fill_in 'city', with: 'new york'
		fill_in 'phone', with: '123456789'
		fill_in 'website', with: www.yahoo.com
		fill_in 'image', with: 'http://img.jpg'
		click_button 'submit'
	end 
end