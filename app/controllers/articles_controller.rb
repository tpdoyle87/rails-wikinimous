class ArticlesController < ApplicationController
before_action :set_article, only: [:show, :edit, :update, :destroy]

  def new
    @article = Article.new
    # render :new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    # redirect_to restaurant_path(@restaurant.id)
    redirect_to @article
  end

  def index
    @articles = Article.all
    # render :index
  end

  def show
    # render :show
  end

  def edit
    # render :edit
  end

  def update
    @article.update(article_params)
    redirect_to article_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
