class AlterUser3 < ActiveRecord::Migration[5.2]
  def change
    
    add_foreign_key :posts, :users

  end
end
