class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start
      t.datetime :end
      t.string :allDay
      t.references :consulting_room, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true
      

      t.timestamps null: false
    end
  end
end
