class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.attachment :image
      t.references :specialty, index: true, foreign_key: true
      t.text :body
      t.references :doctor, index: true, foreign_key: true
      

      t.timestamps null: false
    end
  end
end
