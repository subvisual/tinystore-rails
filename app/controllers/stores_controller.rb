class StoresController < ::ApplicationController
  def new
  end

  def create
    CreatesStore.new(store_params: store_params).create
    redirect_to stores_path
  end

  def index
    @stores = StoreDecorator.decorate_collection GetsStore.new.all
  end

  def show
    @store = StoreDecorator.decorate GetsStore.new.find_by_id(params[:id])
  end

  private
  def store_params
    params.require(:store).permit(:name, :description, :owner_email, :owner_password)
  end
end
