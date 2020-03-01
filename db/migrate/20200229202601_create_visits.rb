class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.datetime :data
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.datetime :checkin_at
      t.datetime :checkout_at

      t.timestamps
    end
  end
end
