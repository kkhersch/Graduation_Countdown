class ChangeNameInMultipliers < ActiveRecord::Migration[5.2]
  def up
    rename_column :multipliers, :name, :multiplier_name
  end

  def down
    rename_column :multipliers, :multiplier_name, :name
  end
end
