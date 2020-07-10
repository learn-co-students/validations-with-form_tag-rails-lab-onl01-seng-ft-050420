class AuthorsController < ApplicationController
  before_action :set_author

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new
    @author.name = params[:name]
    @author.email = params[:email]
    @author.phone_number = params[:phone_number]

    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end

  end

  def update
    if @author.update(author_params)
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  private

  def set_author
    @author = Author.find_by_id(params[:id])
  end

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
