class CreateOccupants < ActiveRecord::Migration[5.0]
  def change
    create_table :occupants do |t|
      t.string :firstname
      t.string :lastname
      t.string :roomnumber

      t.timestamps
    end
  end
end
