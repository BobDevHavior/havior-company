class CreateDataBases < ActiveRecord::Migration[6.1]
  def change
    create_table :data_bases do |t|
      t.string :url
      t.string :port
      t.string :user
      t.string :password
      t.string :name

      t.timestamps
    end
  end
end
