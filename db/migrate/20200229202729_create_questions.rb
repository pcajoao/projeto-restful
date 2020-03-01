class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :nome
      t.references :formulary, null: false, foreign_key: true
      t.string :tp_pergunta

      t.timestamps
    end
  end
end
