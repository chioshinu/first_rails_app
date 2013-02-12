class CreateScaffs < ActiveRecord::Migration
  def change
    create_table :scaffs do |t|
      t.string :name
      t.integer :cat

      t.timestamps
    end
  end
end
