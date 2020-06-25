class CreateDiners < ActiveRecord::Migration[6.0]
  def change
    create_table :diners do |t|
      t.string :name
      t.string :address
      t.string :hours

      t.timestamps
    end
  end
end
