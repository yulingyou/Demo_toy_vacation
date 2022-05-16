class AddVacationDateToVacations < ActiveRecord::Migration[6.1]
  def change
    add_column :vacations, :vacation_date, :date
  end
end
