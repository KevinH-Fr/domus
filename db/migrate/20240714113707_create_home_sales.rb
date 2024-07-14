class CreateHomeSales < ActiveRecord::Migration[7.1]
  def change
    create_table :home_sales do |t|
      t.references :home, null: false, foreign_key: true
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
