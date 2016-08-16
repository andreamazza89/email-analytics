class RemoveEventTypeFromEmails < ActiveRecord::Migration[5.0]
  def change
    remove_column :emails, :event_type, :string
  end
end
