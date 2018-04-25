class CreateClients < ActiveRecord::Migration[5.2]
  def change
  	create_table :client do |t|
  		t.text :name
  		t.text :phome
  		t.text :datestamp
  		t.text :barber
  		t.text :color

  		t.timestamps
  	end
  end
end
