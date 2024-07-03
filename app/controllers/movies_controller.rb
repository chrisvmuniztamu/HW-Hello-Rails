class MoviesController < ApplicationController
  def index
    sort_by = params[:sort_by] || 'title'
    sort_order = %w[asc desc].include?(params[:sort_order]) ? params[:sort_order] : 'asc'
    @movies = Movie.order("#{sort_by} #{sort_order}")
  end
  

  def show
  end

  def new
  end

  def edit
  end
end
