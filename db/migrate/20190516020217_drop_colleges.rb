class DropColleges < ActiveRecord::Migration[5.2]
  def change
        drop_table :colleges
  end
end
