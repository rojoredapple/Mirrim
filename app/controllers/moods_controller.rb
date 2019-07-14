class MoodsController < ApplicationController
  def index

  end

	def new
    @mood = mood.new
  end

  def create
    @mood = mood.create(journals_params)

    respond_to do |format|
      if @mood.save
        format.html { redirect_to root_path, notice: "Congratulations on journaling!" }
      else
        format.html { render :new }
      end

    end
    
  end



end
