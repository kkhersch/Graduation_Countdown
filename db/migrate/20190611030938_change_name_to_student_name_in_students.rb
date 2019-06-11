class ChangeNameToStudentNameInStudents < ActiveRecord::Migration[5.2]
  def up
    rename_column :students, :name, :student_name
  end

  def down
    rename_column :students, :student_name, :name
  end
end
 