class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :city
      t.string :state
      t.string :position
      t.boolean :is_founding
      t.string :avatar
      t.references :company

      t.timestamps
    end
  end
end
