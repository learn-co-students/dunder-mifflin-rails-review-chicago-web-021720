class AddEmployeesCountToDog < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :employees_count, :integer, default: 0
  end
end
