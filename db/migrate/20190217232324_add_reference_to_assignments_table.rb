class AddReferenceToAssignmentsTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :assignments, :user, index: true
  end
end
