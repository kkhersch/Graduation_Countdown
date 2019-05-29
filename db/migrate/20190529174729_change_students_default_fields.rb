class ChangeStudentsDefaultFields < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:students, :credits, 0)
    change_column_default(:students, :days_until_graduation, 0)
    change_column_default(:students, :declared_major, "Undeclared")

    change_column_null(:multipliers, :name, false)
    change_column_null(:multipliers, :multiplier_value, false)
    change_column_default(:multipliers, :multiplier_value, 0)
    change_column_default(:multipliers, :name, "Name not set")
  end
end
