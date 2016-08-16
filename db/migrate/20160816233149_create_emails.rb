class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.string :address
      t.string :type
      t.string :event
      t.integer :timestamp

      t.timestamps
    end
  end
end
