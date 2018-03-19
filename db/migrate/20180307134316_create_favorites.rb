class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :micropost, foreign_key: true

      t.timestamps

      t.index [:micropost_id], unique: true
    end
  end
end
