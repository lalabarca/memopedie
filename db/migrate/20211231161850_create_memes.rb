class CreateMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :memes do |t|
      t.text :description
      t.string :extern_link
      t.string :type
      t.string :origin
      t.integer :year
      t.string :uploader
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
