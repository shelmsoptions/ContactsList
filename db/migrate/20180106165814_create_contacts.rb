class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cell_phone
      t.string :phone_extension
      t.references :dept_title, foreign_key: true
      
      t.timestamps
    end
  end
end
