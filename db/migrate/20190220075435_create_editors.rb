class CreateEditors < ActiveRecord::Migration[5.2]
  def change
    create_table :editors do |t|
      t.references :assignment, index: true
      t.text :session
      t.timestamps
    end
  end
end
