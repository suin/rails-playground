class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      # null: falseを追加
      t.references :question, index: true, foreign_key: true, null: false

      # null: falseを追加
      t.integer :sequential_id, null: false

      t.timestamps null: false
    end
    # 複合ユニーク制約
    add_index :answers, [:question_id, :sequential_id], unique: true
  end
end
