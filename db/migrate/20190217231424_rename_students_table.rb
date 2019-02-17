class RenameStudentsTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :students, :admin
  end
end
