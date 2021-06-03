class ChangeLanguagesColumnInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :languages, :text, array: true, using: "(string_to_array(languages, ','))"
  end
end
