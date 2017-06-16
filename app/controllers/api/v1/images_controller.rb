class Api::V1::ImagesController < Api::V1::BaseController
  def index
    respond_with Image.all
  end
  def show
    image = Image.find(params["id"])
    respond_with image, json: image
  end
  def create
    respond_with :api, :v1, Image.create(image_params)
  end
  def destroy
    respond_with Image.destroy(image_params)
  end
  def update
    image = Image.find(params["id"]) 
    image.update_attributes(image_params) 
    respond_with image, json: image
  end

  private

  def image_params
    params.require(:image).permit(:id, :name, :description)
  end
end