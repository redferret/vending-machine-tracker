class CreateSnacks < ActiveRecord::Migration[5.2]
  def change
    create_table :snacks do |t|
      t.string :name
      t.float :price
      t.machine :references

      t.timestamps
    end
  end
end
