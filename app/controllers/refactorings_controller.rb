class RefactoringsController < ApplicationController
  before_filter :capture_snippet

  # GET /refactorings
  # GET /refactorings.xml
  def index
    @refactorings = Refactoring.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @refactorings }
    end
  end

  # GET /refactorings/1
  # GET /refactorings/1.xml
  def show
    @refactoring = Refactoring.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @refactoring }
    end
  end

  # GET /refactorings/new
  # GET /refactorings/new.xml
  def new
    @refactoring = @snippet ? @snippet.refactorings.build : Refactoring.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @refactoring }
    end
  end

  # GET /refactorings/1/edit
  def edit
    @refactoring = Refactoring.find(params[:id])
  end

  # POST /refactorings
  # POST /refactorings.xml
  def create
    @refactoring = Refactoring.new(params[:refactoring])

    respond_to do |format|
      if @refactoring.save
        format.html { redirect_to(snippet_refactoring_path(@refactoring.snippet, @refactoring), :notice => 'Refactoring was successfully created.') }
        format.xml  { render :xml => @refactoring, :status => :created, :location => @refactoring }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @refactoring.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /refactorings/1
  # PUT /refactorings/1.xml
  def update
    @refactoring = Refactoring.find(params[:id])

    respond_to do |format|
      if @refactoring.update_attributes(params[:refactoring])
        format.html { redirect_to(@refactoring, :notice => 'Refactoring was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @refactoring.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /refactorings/1
  # DELETE /refactorings/1.xml
  def destroy
    @refactoring = Refactoring.find(params[:id])
    @refactoring.destroy

    respond_to do |format|
      format.html { redirect_to(refactorings_url) }
      format.xml  { head :ok }
    end
  end

  private

  def capture_snippet
    @snippet = Snippet.find(params[:snippet_id]) if params[:snippet_id]
  end
end
