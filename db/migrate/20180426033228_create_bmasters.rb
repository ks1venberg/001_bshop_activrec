class CreateBmasters < ActiveRecord::Migration[5.2]
  def change

  	  	create_table :barbers do |t|
  		t.text :name
  		t.timestamps
 		end

  		Barber.create :name => 'Jessie Pinkman'
  		Barber.create :name => 'Gus Fring'
  		Barber.create :name => 'Hisenberg'
  		Barber.create :name => 'Mike Ehrmanntrout'
  end
end
