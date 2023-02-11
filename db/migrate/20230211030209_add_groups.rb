class AddGroups < ActiveRecord::Migration[6.1]
  def change
    t.integer :owner_id
  end
end
