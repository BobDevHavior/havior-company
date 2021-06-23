class AddDescriptionsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :years, :integer
    add_column :users, :hobby, :string
    add_column :users, :job, :string
  end
end
