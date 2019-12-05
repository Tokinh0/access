class CreateAccesses < ActiveRecord::Migration[5.2]
  def change
    create_table :accesses do |t|
      t.string :longitude
      t.string :latitude
      t.string :ip

      t.timestamps
    end
  end
end
