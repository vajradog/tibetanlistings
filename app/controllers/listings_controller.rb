class ListingsController < ApplicationController
	before_action :require_admin, except: [:index, :show]


	def index
		@listings = Listing.all
	end
	def new  
		@listing = Listing.new
	end

	def create
		@listing = Listing.new(listing_params)

		if @listing.save
			flash[:notice] = "listing save"
			redirect_to listings_path
		else
			flash[:error] = "something went wrong"
			render 'new'
		end
	end

	def edit
		@listing = Listing.find(params[:id])
	end

	def update
		@listing = Listing.find(params[:id])

		if @listing.update(listing_params)
			flash[:notice] = "listing save"
			redirect_to listings_path
		else
			flash[:error] = "something went wrong"
			render 'edit'
		end
	end

	def destroy
		@listing = Listing.find(params[:id])
		@listing.destroy
		flash[:notice] = "listing destroyed"
		redirect_to root_path
	end

	private

	def listing_params
		params.require(:listing).permit(:name, :address, :city, :phone, :website, :image, category_ids: [])
	end


end