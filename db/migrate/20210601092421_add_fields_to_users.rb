class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :birthdate, :date
    add_column :users, :location, :string
    add_column :users, :languages, :string
    add_column :users, :description, :text
    add_column :users, :cities_visited, :string
    add_column :users, :user_type, :string
    add_column :users, :profile_type, :string
  end
end
