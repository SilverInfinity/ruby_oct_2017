class RemoveCityFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :city, :string
  end
end
