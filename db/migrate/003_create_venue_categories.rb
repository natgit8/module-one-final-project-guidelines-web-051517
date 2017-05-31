class CreateVenueCategories < ActiveRecord::Migration

  def change
    create_table :venue_categories do |t|
      t.references :venue
      t.references :category 
    end
  end



end
