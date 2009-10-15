class BrindesController < ApplicationController
  # GET /brindes
  # GET /brindes.xml
  def index
    @brindes = Brinde.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @brindes }
    end
  end

  # GET /brindes/1
  # GET /brindes/1.xml
  def show
    @brinde = Brinde.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @brinde }
    end
  end

  # GET /brindes/new
  # GET /brindes/new.xml
  def new
    @brinde = Brinde.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @brinde }
    end
  end

  # GET /brindes/1/edit
  def edit
    @brinde = Brinde.find(params[:id])
  end

  # POST /brindes
  # POST /brindes.xml
  def create
    @brinde = Brinde.new(params[:brinde])

    respond_to do |format|
      if @brinde.save
        flash[:notice] = 'Brinde was successfully created.'
        format.html { redirect_to(@brinde) }
        format.xml  { render :xml => @brinde, :status => :created, :location => @brinde }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @brinde.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /brindes/1
  # PUT /brindes/1.xml
  def update
    @brinde = Brinde.find(params[:id])

    respond_to do |format|
      if @brinde.update_attributes(params[:brinde])
        flash[:notice] = 'Brinde was successfully updated.'
        format.html { redirect_to(@brinde) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @brinde.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /brindes/1
  # DELETE /brindes/1.xml
  def destroy
    @brinde = Brinde.find(params[:id])
    @brinde.destroy

    respond_to do |format|
      format.html { redirect_to(brindes_url) }
      format.xml  { head :ok }
    end
  end

  def sortear
    brinde = Brinde.find(params[:id])

    if not brinde.sortear!
      flash[:notice] = "Todos os participantes já ganharam brindes"
    end

    redirect_to brindes_path
  end
end
