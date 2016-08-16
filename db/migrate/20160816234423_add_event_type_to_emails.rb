class AddEventTypeToEmails < ActiveRecord::Migration[5.0]
  def change
    add_column :emails, :event_type, :string
  end
end
