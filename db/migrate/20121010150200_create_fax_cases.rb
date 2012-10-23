class CreateFaxCases < ActiveRecord::Migration
  def change
    create_table :fax_cases do |t|
      t.integer :case_no
      t.string :name

      t.timestamps
    end
  end
end
