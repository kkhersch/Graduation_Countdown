class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :days_until_graduation
      t.string :declared_major
      t.integer :credits

      t.timestamps
    end
  end
end
