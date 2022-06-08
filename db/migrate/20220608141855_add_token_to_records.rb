class AddTokenToRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :records, :token, :string
  end
end
