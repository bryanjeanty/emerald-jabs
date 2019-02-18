class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |a|
      a.string :title
      a.string :todo
      a.date :due_date
      
      a.timestamps
    end
  end
end
