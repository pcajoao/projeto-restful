class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :senha
      t.string :email
      t.integer :cpf

      t.timestamps
    end
  end
end
