class AddMovieRefToDetail < ActiveRecord::Migration
  def change
    add_reference :details, :movie, index: true, foreign_key: true
  end
end
