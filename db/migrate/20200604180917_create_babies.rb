class CreateBabies < ActiveRecord::Migration[6.0]
  def change
    create_table :babies do |t|
      t.string :name
      t.date :birthday
      t.string :mothers_name
      t.string :fathers_name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
