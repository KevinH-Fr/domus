class CreateHomes < ActiveRecord::Migration[7.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :cp
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
