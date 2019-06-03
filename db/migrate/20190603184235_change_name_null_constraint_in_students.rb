class ChangeNameNullConstraintInStudents < ActiveRecord::Migration[5.2]
  def up
    # add the column with NULL allowed
    # add_column :students, :name, :string
    students = Student.all
    # make sure every row has a value
    students.each do |student|
      # update each record's name has a non null value
      student.update!(name: "No Name Set")
    end

    # add NOT NULL constraint
    change_column_null :students, :name, false
  end

  # Migrations that manipulate data must use up/down instead of change
  def down
    remove_column :students, :name
  end
end
