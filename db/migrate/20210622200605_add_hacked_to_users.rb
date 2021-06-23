class AddHackedToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :hacked, :boolean
  end
end
