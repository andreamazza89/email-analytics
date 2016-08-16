class RemoveTypeFromEmails < ActiveRecord::Migration[5.0]
  def change
    remove_column :emails, :type, :string
  end
end
