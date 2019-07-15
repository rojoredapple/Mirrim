class MoodsController < ApplicationController
  def index
end 

  def new
    #respond_to do |format|
      @mood = mood.new
      if @mood.save
        flash[:moodsaved] = "Saved."
        redirect_to root_path
      else
        render :new
        flash[:moodnots] = "Oops, that didn't work. Press anywhere on the chart to plot your mood."
      end

  end


end