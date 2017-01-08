class CreateHasWeekdays < ActiveRecord::Migration
  def change
    create_table :has_weekdays do |t|
      t.references :consulting_room, index: true, foreign_key: true
      t.references :weekday, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
