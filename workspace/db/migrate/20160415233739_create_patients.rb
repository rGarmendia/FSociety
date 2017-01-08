class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :cellphone
      t.string :sex
      t.date :birthdate
      t.text :address
      t.attachment :image
      t.references :country, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
