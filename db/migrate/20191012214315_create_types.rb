class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :name
      t.string :icon
      t.references :parent, null: true, foreign_key: { to_table: :types }

      t.timestamps
    end
  end
end
