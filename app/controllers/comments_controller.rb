class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments/:post_id/comments
  def create
    option_comment = Comment.new(comment_params) # для того чтоб удобнее использовать значение параметров

    if option_comment.commentable_type == 'Post'
      @comment = Post.find(option_comment.commentable_id).comments.new(comment_params)
    elsif option_comment.commentable_type == 'Image'
      @comment = Image.find(option_comment.commentable_id).comments.new(comment_params)
    end

    if params[:post_id] # прверка где создан коммент на странице родительской сущности или нет
      if @comment.save
        @post = Post.find(params[:post_id])
        redirect_to post_path(@post) # get /posts/id  #show
      else
        render :new
      end
    elsif params[:image_id]
      if @comment.save
        @image = Image.find(params[:image_id])
        redirect_to image_path(@image) # get /images/id  #show
      else
        render :new
      end
    else
      respond_to do |format|
        if @comment.save
          format.html { redirect_to comment_url(@comment), notice: "Comment was successfully created." }
          format.json { render :show, status: :created, location: @comment }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    end
    
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to comment_url(@comment), notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url, notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params # добавляем commentable поля
    params.require(:comment).permit(:author, :body, :commentable_type, :commentable_id) 
  end
end
