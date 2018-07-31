class ShortenedUrlsController < ApplicationController
  before_action :find_url, only: [:show, :shortened]

  def show
    redirect_to @url.original_url
  end

  def create
    @url = ShortenedUrl.new
    @url.original_url = params[:original_url]
      if @url.save
        render json: { generated_url: "http://localhost:3000/#{@url.short_url}" }, status: :ok
      end
  end

  def find_url
    @url = ShortenedUrl.find_by_short_url(params[:short_url])
  end

end
