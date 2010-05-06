class TalentsController < ApplicationController
  # GET /talents
  # GET /talents.xml
  def index
    @talents = Talent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @talents }
    end
  end

  # GET /talents/1
  # GET /talents/1.xml
  def show
    @talent = Talent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @talent }
    end
  end

  # GET /talents/new
  # GET /talents/new.xml
  def new
    @talent = Talent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @talent }
    end
  end

  # GET /talents/1/edit
  def edit
    @talent = Talent.find(params[:id])
  end

  # POST /talents
  # POST /talents.xml
  def create
    @talent = Talent.new(params[:talent])

    respond_to do |format|
      if @talent.save
        format.html { redirect_to(@talent, :notice => 'Talent was successfully created.') }
        format.xml  { render :xml => @talent, :status => :created, :location => @talent }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @talent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /talents/1
  # PUT /talents/1.xml
  def update
    @talent = Talent.find(params[:id])

    respond_to do |format|
      if @talent.update_attributes(params[:talent])
        format.html { redirect_to(@talent, :notice => 'Talent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @talent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /talents/1
  # DELETE /talents/1.xml
  def destroy
    @talent = Talent.find(params[:id])
    @talent.destroy

    respond_to do |format|
      format.html { redirect_to(talents_url) }
      format.xml  { head :ok }
    end
  end
end
