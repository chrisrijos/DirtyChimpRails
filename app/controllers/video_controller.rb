class VideoController < ApplicationController
  
  def index
    @video = Video.all.order('created_at DESC')
    
     respond_to do |format|
      format.html # show.html.erb
      format.json  { render :json => @video }
    end
  end

  def new
    @video = Video.new
  end

  def show
    @video = Video.find(params[:id])
  end
  
  
  def create
     @video = Video.new(allowed_params)
        
        if @video.save
            redirect_to root_path
        else
            render 'new'
        end
  end
  
  def update
       @video = Video.find(params[:id])
 
      if @article.update(allowed_params)
        redirect_to @video
      else
        render 'edit'
      end
  end
  
  def edit
      @video = Video.find(params[:id])
  end

  def delete
     @video = Video.find(params[:id])
     @video.destroy!
    redirect_to root_path, :notice => "Your video has been deleted"
  end
  
  private 
      def allowed_params
          params.require(:video).permit(:title, :description, :banana, :video)
      end
        
end
