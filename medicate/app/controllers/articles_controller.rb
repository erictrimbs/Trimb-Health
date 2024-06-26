class ArticlesController < ApplicationController
    private 
    def article_params
        params.require(:article).permit(:title, :text)
    end

    public
    def index
        @articles = Article.all
    end
    
    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    def new
        @article = Article.new
    end

    def edit
    end

    def show
        @article = Article.find(params[:id])
    end

    def update
    end

    def destroy
    end

   
end
