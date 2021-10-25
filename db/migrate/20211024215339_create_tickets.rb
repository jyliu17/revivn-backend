class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :description
      t.string :date
      t.string :location
      t.integer :status
      t.string :employee

      t.timestamps
    end
  end
end
