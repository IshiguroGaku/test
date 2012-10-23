class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :shortname
      t.string :longname
      t.string :postcode

      t.timestamps
    end
  end
end
