class AddPwdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pwd, :string
  end
end
