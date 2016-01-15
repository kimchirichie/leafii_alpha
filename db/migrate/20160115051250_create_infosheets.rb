class CreateInfosheets < ActiveRecord::Migration
  def change
    create_table :infosheets do |t|
		t.string :first_name
  		t.string :last_name
  		t.string :email
  		t.string :number
  		t.text :other_data
		t.timestamps null: false
    end
  end
end
