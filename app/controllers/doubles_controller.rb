class DoublesController < ApplicationController
  # GET /doubles
  # GET /doubles.xml
  def index
    @doubles = Double.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @doubles }
    end
  end

  # GET /doubles/1
  # GET /doubles/1.xml
  def show
    @double = Double.find(params[:id])
    @double_years = 72/@double.rate unless @double.rate.nil?
    @earning = 72/@double.time unless @double.time.nil?

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @double }
    end
  end

  # GET /doubles/new
  # GET /doubles/new.xml
  def new
    @double = Double.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @double }
    end
  end

  # GET /doubles/1/edit
  def edit
    @double = Double.find(params[:id])
  end

  # POST /doubles
  # POST /doubles.xml
  def create
    @double = Double.new(params[:double])
    respond_to do |format|
      if @double.save!
        format.html { redirect_to(@double, :notice => 'Double was successfully created.') }
        format.xml  { render :xml => @double, :status => :created, :location => @double }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @double.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /doubles/1
  # PUT /doubles/1.xml
  def update
    @double = Double.find(params[:id])

    respond_to do |format|
      if @double.update_attributes(params[:double])
        format.html { redirect_to(@double, :notice => 'Double was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @double.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /doubles/1
  # DELETE /doubles/1.xml
  def destroy
    @double = Double.find(params[:id])
    @double.destroy

    respond_to do |format|
      format.html { redirect_to(doubles_url) }
      format.xml  { head :ok }
    end
  end
end
