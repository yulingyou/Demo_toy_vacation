class CreateBulletins < ActiveRecord::Migration[6.1]
  def change
    create_table :bulletins do |t|
      t.belongs_to :company, null: false, foreign_key: true
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
