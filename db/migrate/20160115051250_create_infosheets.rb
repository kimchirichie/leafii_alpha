class CreateInfosheets < ActiveRecord::Migration
  def change
    create_table :infosheets do |t|
		  t.string :name
  		t.string :email
  		t.string :phone
  		t.text :other_data
		  t.timestamps null: false
    end
  end
end
