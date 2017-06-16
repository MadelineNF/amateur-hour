class Api::V1::CollectionsController < Api::V1::BaseController
  def index
    respond_with Collection.all
  end
  def show
    collection = Collection.find(params["id"])
    respond_with collection, json: collection
  end
  def create
    respond_with :api, :v1, Collection.create(collection_params)
  end
  def destroy
    respond_with Collection.destroy(collection_params)
  end
  def update
    collection = Collection.find(params["id"]) 
    collection.update_attributes(collection_params) 
    respond_with collection, json: collection
  end

  private

  def collection_params
    params.require(:collection).permit(:id, :name, :description)
  end
end