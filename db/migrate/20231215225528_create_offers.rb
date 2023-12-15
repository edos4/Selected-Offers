class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.text :description
      t.integer :start_age
      t.integer :end_age
      t.string :gender

      t.timestamps
    end
  end
end
