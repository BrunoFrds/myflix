class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.float :average_rating

      t.timestamps
    end
  end
end
