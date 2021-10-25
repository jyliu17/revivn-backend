class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :company_name
      t.string :email
      t.string :password_digest
      t.boolean :is_admin

      t.timestamps
    end
  end
end
