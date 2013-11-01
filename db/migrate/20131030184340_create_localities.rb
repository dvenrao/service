class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.string :name
      t.decimal :latitude,:precision => 10, :scale => 8
      t.decimal :longitude,:precision => 10, :scale => 8
      t.string :city

      t.timestamps
    end
  end
end
