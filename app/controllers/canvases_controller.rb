class CanvasesController < ApplicationController
  # GET /canvases
  # GET /canvases.xml
  def index
    @canvases = Canvas.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @canvases }
    end
  end

  # GET /canvases/1
  # GET /canvases/1.xml
  def show
    @canvas = Canvas.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @canvas }
    end
  end

  # GET /canvases/new
  # GET /canvases/new.xml
  def new
    @canvas = Canvas.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @canvas }
    end
  end

  def clone
    @canvas = Canvas.new
    @cloned_canvas = Canvas.find( params[:id] )
    @canvas.name = 'Copy of ' + @cloned_canvas.name
    @canvas.problem = @cloned_canvas.problem
    @canvas.solution = @cloned_canvas.solution
    @canvas.uvp = @cloned_canvas.uvp
    @canvas.unfair_advantage = @cloned_canvas.unfair_advantage
    @canvas.customer_segments = @cloned_canvas.customer_segments
    @canvas.key_metrics = @cloned_canvas.key_metrics
    @canvas.channels = @cloned_canvas.channels
    @canvas.cost_structure = @cloned_canvas.cost_structure
    @canvas.revenue_streams = @cloned_canvas.revenue_streams

    respond_to do |format|
      format.html { render :action => "new" }
      format.xml  { render :xml => @canvas }
    end
  end

  # GET /canvases/1/edit
  def edit
    @canvas = Canvas.find(params[:id])
  end

  # POST /canvases
  # POST /canvases.xml
  def create
    @canvas = Canvas.new(params[:canvas])

    respond_to do |format|
      if @canvas.save
        format.html { redirect_to(@canvas, :notice => 'Canvas was successfully created.') }
        format.xml  { render :xml => @canvas, :status => :created, :location => @canvas }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @canvas.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /canvases/1
  # PUT /canvases/1.xml
  def update
    @canvas = Canvas.find(params[:id])

    respond_to do |format|
      if @canvas.update_attributes(params[:canvas])
        format.html { redirect_to(@canvas, :notice => 'Canvas was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @canvas.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /canvases/1
  # DELETE /canvases/1.xml
  def destroy
    @canvas = Canvas.find(params[:id])
    @canvas.destroy

    respond_to do |format|
      format.html { redirect_to(canvases_url) }
      format.xml  { head :ok }
    end
  end
end
