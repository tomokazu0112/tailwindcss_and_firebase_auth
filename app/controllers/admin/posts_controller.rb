# frozen_string_literal: true

class Admin::PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if post.save
      redirect_to admin_posts_path, notice: "投稿を作成しました。"
    else
      flash.now[:error] = "投稿を作成できませんでした。"
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to admin_posts_path, notice: "投稿を更新しました。"
    else
      flash.now[:error] = "投稿を更新できませんでした。"
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to admin_posts_path, notice: "投稿を削除しました。"
    else
      flash.now[:error] = "投稿を削除できませんでした。"
      render :edit
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :summary, :content, :slug, :status, :published_at)
    end
end
