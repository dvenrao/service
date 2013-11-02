class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :desc
      t.boolean :status,:default => false

      t.timestamps
    end
  end
end
