class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string      :title, null: false, limit: 250
      t.text        :memo, limit: 1000
      t.references  :list, foreign_key: true, null: false
      t.timestamps
    end
  end
end