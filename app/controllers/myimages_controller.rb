class MyimagesController < ApplicationController
  before_action :set_myimage, only: [:show, :edit, :update, :destroy]
  access all: [], user: { except: [:destroy, :new, :create, :upadte, :edit, :show, :index]}, site_admin: :all

  # GET /myimages
  def index
    @myimages = Myimage.all
  end

  # GET /myimages/1
  def show
  end

  # GET /myimages/new
  def new
    @myimage = Myimage.new
  end

  # GET /myimages/1/edit
  def edit
  end

  # POST /myimages
  def create
    @myimage = Myimage.new(myimage_params)

    if @myimage.save
      redirect_to @myimage, notice: 'Myimage was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /myimages/1
  def update
    if @myimage.update(myimage_params)
      redirect_to @myimage, notice: 'Myimage was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /myimages/1
  def destroy
    @myimage.destroy
    redirect_to myimages_url, notice: 'Myimage was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myimage
      @myimage = Myimage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def myimage_params
      params.require(:myimage).permit(:image)
    end
end
