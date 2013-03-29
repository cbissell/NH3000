class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :startDate
      t.string :officeLocation
      t.string :computerType
      t.string :department


      t.timestamps
    end
  end
end
