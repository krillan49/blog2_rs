class ImagesController < ApplicationController
  before_action :authenticate_user!, only: %i[ new create edit update destroy ]
  before_action :set_image, only: %i[ show edit update destroy ]
  before_action :owner?, only: %i[edit destroy]

  # GET /images or /images.json
  def index
    @images = Image.order "created_at DESC"
  end

  # GET /images/1 or /images/1.json
  def show
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images or /images.json
  def create
    @image = Image.new(image_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to image_url(@image), notice: "Image was successfully created." }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1 or /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to image_url(@image), notice: "Image was successfully updated." }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1 or /images/1.json
  def destroy
    @image.destroy

    respond_to do |format|
      format.html { redirect_to images_url, notice: "Image was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_image
    @image = Image.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def image_params
    params.require(:image).permit(:author, :url, :user_id)
  end

  def owner? # метод для проверки является ли юзер автором этого изображения
    if current_user != @image.user && !current_user.admin?
      redirect_back fallback_location: root_path, notice: 'User is not owner'
    end
  end
end
