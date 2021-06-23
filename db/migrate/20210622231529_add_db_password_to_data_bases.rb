class AddDbPasswordToDataBases < ActiveRecord::Migration[6.1]
  def change
    add_column :data_bases, :db_password, :string
  end
end
