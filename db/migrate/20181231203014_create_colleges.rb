class CreateColleges < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges do |t|
      t.string "name"
      t.string "city"
      t.string "state"
      t.integer "zip_code"
      t.text "info"
    end
  end
end
