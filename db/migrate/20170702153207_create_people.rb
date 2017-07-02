class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :fullname
      t.string :email
      t.string :contacts

      t.timestamps
    end
  end
end
