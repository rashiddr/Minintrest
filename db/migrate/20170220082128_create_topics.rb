#
# CreateTopics Migration
#
# @author rashid
#
class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :name
      t.string :description
      t.integer :hit

      t.timestamps
    end
  end
end
