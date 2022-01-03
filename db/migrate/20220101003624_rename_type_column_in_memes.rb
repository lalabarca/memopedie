class RenameTypeColumnInMemes < ActiveRecord::Migration[6.0]
  def change
    rename_column(:memes, :type, :format)
  end
end
