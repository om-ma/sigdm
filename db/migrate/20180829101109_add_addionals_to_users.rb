class AddAddionalsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :db, :string
    add_column :users, :sex, :string
    add_column :users, :mother_fn, :string
    add_column :users, :mother_ln, :string
    add_column :users, :father_fn, :string
    add_column :users, :bg, :string
    add_column :users, :tel1, :string
    add_column :users, :tel2, :string
    add_column :users, :address, :text
    add_column :users, :prime_contact_name, :string
    add_column :users, :prime_contact_tel, :string
  end
end
