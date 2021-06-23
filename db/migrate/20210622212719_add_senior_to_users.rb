class AddSeniorToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :senior, :boolean
  end
end
