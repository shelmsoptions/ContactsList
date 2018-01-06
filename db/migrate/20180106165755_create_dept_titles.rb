class CreateDeptTitles < ActiveRecord::Migration[5.1]
  def change
    create_table :dept_titles do |t|
      t.string :name

      t.timestamps
    end
  end
end
