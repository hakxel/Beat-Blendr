class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :info, :json
  end
end
