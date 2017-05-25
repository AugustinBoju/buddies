class AddCurrentCityToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :current_city, :string
  end
end
