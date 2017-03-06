#
# AddColumnsToUsers Migration
#
# @author rashid
#
class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :gender, :integer
    add_column :users, :name, :string
    add_column :users, :city, :string
    add_column :users, :mobile, :string
  end
end
