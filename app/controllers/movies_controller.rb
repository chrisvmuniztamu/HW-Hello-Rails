# app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show edit update destroy]

  def index
    sort_by = params[:sort_by] || 'title'
    sort_order = %w[asc desc].include?(params[:sort_order]) ? params[:sort_order] : 'asc'
    @movies = Movie.order("#{sort_by} #{sort_order}")
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path, notice: 'Movie was successfully deleted.'
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :rating, :release_date, :description)
  end
end
