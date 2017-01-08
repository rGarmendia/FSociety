class CreateConsultingRooms < ActiveRecord::Migration
  def change
    create_table :consulting_rooms do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.time :starttime
      t.time :finaltime
      t.time :querytime
      t.references :country, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
