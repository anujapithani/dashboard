class CreateRegistrations < ActiveRecord::Migration[7.0]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.integer :userid

      t.timestamps
    end
  end
end
