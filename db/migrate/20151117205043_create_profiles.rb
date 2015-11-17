class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :info
      t.string :facebook_url
      t.string :blog_url
      t.string :other_url
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
