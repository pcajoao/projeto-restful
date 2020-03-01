class AddDeletedAtToVisit < ActiveRecord::Migration[6.0]
  def change
    add_column :visits, :deleted_at, :datetime
    add_index :visits, :deleted_at
  end
end
