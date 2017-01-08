class CreateOfficeRates < ActiveRecord::Migration
  def change
    create_table :office_rates do |t|
      t.references :consulting_room, index: true, foreign_key: true
      t.float :price
      t.references :specialty, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
