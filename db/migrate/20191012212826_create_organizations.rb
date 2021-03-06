class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.boolean :isActive

      t.timestamps
    end
  end
end
