class CreateTrans < ActiveRecord::Migration
  def change
    create_table :trans do |t|
      t.references :user
      t.references :faxcase
      t.integer :tran_no

      t.timestamps
    end
    add_index :trans, :user_id
    add_index :trans, :faxcase_id
  end
end
