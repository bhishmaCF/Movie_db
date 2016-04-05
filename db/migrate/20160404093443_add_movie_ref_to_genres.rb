class AddMovieRefToGenres < ActiveRecord::Migration
  def change
    add_reference :genres, :movie, index: true, foreign_key: true
  end
end
