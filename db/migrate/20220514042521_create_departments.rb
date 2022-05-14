class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.belongs_to :company, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
