class CreateActions < ActiveRecord::Migration[7.0]
  def change
    create_table :actions do |t|
      t.string :title
      t.string :image
      t.string :cast
      t.integer :ratings

      t.timestamps
    end
  end
end
