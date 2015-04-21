class CreateSxoleios < ActiveRecord::Migration
  def change
    create_table :sxoleios do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
