class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.string :action_id
      t.string :drama_id
      t.string :horror_id
      t.string :anime_id
      t.string :comedy_id

      t.timestamps
    end
  end
end
