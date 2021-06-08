class AddCoordinatesToRecommendations < ActiveRecord::Migration[6.0]
  def change
    add_column :recommendations, :latitude, :float
    add_column :recommendations, :longitude, :float
  end
end
