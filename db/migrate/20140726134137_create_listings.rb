class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
    	t.string :name
    	t.string :address
    	t.string :city
    	t.string :phone
    	t.string :website
    	t.string :image
    	t.timestamps
    end
  end
end
