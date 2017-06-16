class AddUserToCollections < ActiveRecord::Migration[5.1]
  def change
    add_reference :collections, :user
  end
end
