class AddSxoleioIdToSecrets < ActiveRecord::Migration
  def change
    add_column :secrets, :sxoleio_id, :integer
  end
end
