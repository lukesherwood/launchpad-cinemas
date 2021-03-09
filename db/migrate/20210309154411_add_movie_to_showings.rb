class AddMovieToShowings < ActiveRecord::Migration[6.1]
  def change
    add_reference :showings, :movie, null: false, foreign_key: true
  end
end
