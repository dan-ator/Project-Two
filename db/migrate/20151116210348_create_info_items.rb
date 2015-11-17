class CreateInfoItems < ActiveRecord::Migration
  def change
    create_table :info_items do |t|
      t.text :category
      t.text :body
      t.references :report, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
