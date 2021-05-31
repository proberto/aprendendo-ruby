class CreateRestaturants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaturants do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
