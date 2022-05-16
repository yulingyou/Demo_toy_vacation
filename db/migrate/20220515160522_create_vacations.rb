class CreateVacations < ActiveRecord::Migration[6.1]
  def change
    create_table :vacations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :vacation_type
      t.string :approval, default: false
      t.string :content

      t.timestamps
    end
  end
end
