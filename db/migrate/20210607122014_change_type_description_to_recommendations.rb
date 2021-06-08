class ChangeTypeDescriptionToRecommendations < ActiveRecord::Migration[6.0]
  def change
    change_column :recommendations, :description, :text
  end
end
