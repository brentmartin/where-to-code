class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :hours

      t.timestamps null: false
    end
  end
end
