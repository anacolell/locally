class AddNameToInterests2 < ActiveRecord::Migration[6.0]
  def change
    add_column :interests, :name, :string
  end
end
