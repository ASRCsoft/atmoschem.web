class ChangeColumnPurposeToReason < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :purpose, :reason
  end
end
