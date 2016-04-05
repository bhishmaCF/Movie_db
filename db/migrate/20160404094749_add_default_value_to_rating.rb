class AddDefaultValueToRating < ActiveRecord::Migration
  def change
  	change_column_default(:movies, :rating, 0)
  end
end
