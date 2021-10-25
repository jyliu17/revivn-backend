class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.string :password_digest
      t.boolean :is_admin
      # t.belongs_to :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
