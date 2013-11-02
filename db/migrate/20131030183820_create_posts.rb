class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.integer :locality_id
      t.string :title
      t.text :description
      t.string :city
      t.string :service_type
      t.string :mobile_no
      t.boolean :status,:default => true

      t.timestamps
    end
  end
end
