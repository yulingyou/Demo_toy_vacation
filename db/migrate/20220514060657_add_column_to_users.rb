class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :job_title, :string
    add_column :users, :department, :string
    add_column :users, :staff_no, :string
    add_column :users, :gender, :string
    add_column :users, :start_at, :date
  end
end
