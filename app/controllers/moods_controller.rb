class MoodsController < ApplicationController
  def index

  end

	def new
    @mood = mood.new
  end

  def create
    @mood = mood.create(moods_params)

    respond_to do |format|
      if @mood.save
        format.html { redirect_to root_path, notice: "Congratulations on plotting your mood!" }
      else
        format.html { render :new }
      end

    end

  end

    def user_params
      params.permit(:mood)
    end 

end
end 