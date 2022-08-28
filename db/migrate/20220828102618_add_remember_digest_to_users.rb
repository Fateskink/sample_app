class AddRememberDigestToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :remember_digest, :string
    add_column :users, :string, :string
  end
end
