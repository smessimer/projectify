class CreateWorkUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :work_units do |t|
      t.string :name
      t.references :project, null: false, foreign_key: true
      t.references :parent, null: true, foreign_key: { to_table: :work_units }
      t.references :type, null: false, foreign_key: true
      t.references :iteration, null: false, foreign_key: true

      t.timestamps
    end
  end
end
