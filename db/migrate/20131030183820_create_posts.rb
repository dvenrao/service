class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :city
      t.integer :locality_id
      t.string :type
      t.string :you_are
      t.integer :price
      t.string :mobile_no

      t.timestamps
    end
  end
end
