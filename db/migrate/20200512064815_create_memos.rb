class CreateMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :memos do |t|
      t.string :food, nul: false
      t.date   :limit_date
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
