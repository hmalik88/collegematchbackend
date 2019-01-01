class CreateChecklists < ActiveRecord::Migration[5.2]
  def change
    create_table :checklists do |t|
      t.string :task
      t.integer :college_id
      t.timestamps
    end
  end
end
