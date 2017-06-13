class AddUserToImages < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :user
  end
end
