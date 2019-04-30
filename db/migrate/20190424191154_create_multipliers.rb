class CreateMultipliers < ActiveRecord::Migration[5.2]
  def change
    create_table :multipliers do |t|
      t.string :name
      t.decimal :multiplier_value

      t.timestamps
    end
  end
end
