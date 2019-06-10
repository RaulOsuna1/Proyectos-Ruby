class ArticlesController < ApplicationController
    def index
       @articles= Article.all
    end
    def show
        @articles= Article.find(params[:id])
    end
    def new
        @articles= Article.new
    end
    def create
        @articles=Article.new(article_params)
        if @articles.save
            redirect_to @articles
        else
            render :new
        end
    end

    def destroy
        @articles=Article.find(
            params[:id]
        )
        @articles.destroy
        redirect_to articles_path
    end

    def update 
        
    end

    private
    def article_params
        
        params.require(:article).permit(:title, :body)
        
    end
end

