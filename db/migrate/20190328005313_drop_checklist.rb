class DropChecklist < ActiveRecord::Migration[5.2]
  def change
    drop_table :checklists
  end
end
