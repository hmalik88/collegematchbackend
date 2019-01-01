class AddTuitionToColleges < ActiveRecord::Migration[5.2]
  def change
    add_column :colleges, :tuition, :integer
  end
end
