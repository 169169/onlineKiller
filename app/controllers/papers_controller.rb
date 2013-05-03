class PapersController < ApplicationController
  # GET /papers
  # GET /papers.json
  def index
    @papers = Paper.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @papers }
    end
  end

  # GET /papers/1
  # GET /papers/1.json
  def show
    @paper = Paper.find(params[:id])
  end

  # GET /papers/new
  # GET /papers/new.json
  def new
    @paper = Paper.new
    @faculties = Faculty.all.collect { |faculty| [faculty.name, faculty.id] }
    @subjects = Subject.all.collect { |subject| [subject.name, subject.id] }
  end

  # POST /papers
  # POST /papers.json
  def create
    @paper = Paper.new(params[:paper])
    @faculties = Faculty.all.collect { |faculty| [faculty.name, faculty.id] }
    @subjects = Subject.all.collect { |subject| [subject.name, subject.id] }

    if @paper.save
      contents = Content.new
      questions = Question.where("subject_id=?", @paper.subject_id)
      i = 3;

      while i > 0 do
        content = Content.new
        content.question = questions[i]
        content.paper = @paper
        content.save

        i = i - 1
      end

      flash.now[:success] = "Success."
      redirect_to @paper
    else
      render new
    end
  end

  # DELETE /papers/1
  # DELETE /papers/1.json
  def destroy
    @paper = Paper.find(params[:id])
    @paper.destroy

    respond_to do |format|
      format.html { redirect_to papers_url }
      format.json { head :no_content }
    end
  end
end
