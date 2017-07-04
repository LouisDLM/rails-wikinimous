class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def show
  end

  def edit
  end


  def new
    @article = Article.new
  end

  def index
    @articles = Article.all
  end

  def create
    Article.create(article_params)
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end

  private
  def article_params
    params.required(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
