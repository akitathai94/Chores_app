class CreateRoomapplies < ActiveRecord::Migration[5.0]
  def change
    create_table :roomapplies do |t|
      t.string :fullname
      t.string :description
      t.string :email

      t.timestamps
    end
  end
end
