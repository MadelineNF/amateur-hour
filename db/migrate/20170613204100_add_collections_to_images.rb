class AddCollectionsToImages < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :collections
  end
end
