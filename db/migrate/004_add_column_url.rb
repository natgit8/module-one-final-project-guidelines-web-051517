class AddColumnUrl < ActiveRecord::Migration

  def change
    add_column :venues, :website_url, :string 
  end


end
