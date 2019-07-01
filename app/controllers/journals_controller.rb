class JournalsController < ApllicationController

  def index
    @journals = Journal.all
  end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.create(journals_params)

    respond_to do |format|
      if @journal.save
        format.html { redirect_to root_path, notice: "Congratulations on journaling!" }
      else
        formal.html { render :new }
      end
    end
  end

end
