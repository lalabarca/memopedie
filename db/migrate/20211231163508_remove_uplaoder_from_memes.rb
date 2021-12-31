class RemoveUplaoderFromMemes < ActiveRecord::Migration[6.0]
  def change
    remove_column :memes, :uploader, :string
  end
end
