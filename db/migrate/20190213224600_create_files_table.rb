class CreateFilesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :files do |t|
      t.string :title
      t.timestamps
    end
  end
end
