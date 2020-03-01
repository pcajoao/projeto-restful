class ChangeCpfToBeStringInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :cpf, :string
  end
end
