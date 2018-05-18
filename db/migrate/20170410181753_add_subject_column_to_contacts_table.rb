class AddSubjectColumnToContactsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :subject, :string
  end
end
