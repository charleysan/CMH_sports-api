class FixtheDamnRole < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :role, :string
    
  end
end
