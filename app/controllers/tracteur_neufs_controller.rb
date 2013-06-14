class TracteurNeufsController < ApplicationController
  # GET /tracteur_neufs
  # GET /tracteur_neufs.json
  def index
     @search = TracteurNeuf.search(params[:q])
     @tracteur_neufs = @search.result

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tracteur_neufs }
    end
  end

  # GET /tracteur_neufs/1
  # GET /tracteur_neufs/1.json
  def show
    @tracteur_neuf = TracteurNeuf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tracteur_neuf }
    end
  end

  # GET /tracteur_neufs/new
  # GET /tracteur_neufs/new.json
  def new
    @tracteur_neuf = TracteurNeuf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tracteur_neuf }
    end
  end

  # GET /tracteur_neufs/1/edit
  def edit
    @tracteur_neuf = TracteurNeuf.find(params[:id])
  end

  # POST /tracteur_neufs
  # POST /tracteur_neufs.json
  def create
    @tracteur_neuf = TracteurNeuf.new(params[:tracteur_neuf])

    respond_to do |format|
      if @tracteur_neuf.save
        format.html { redirect_to @tracteur_neuf, notice: 'Tracteur neuf was successfully created.' }
        format.json { render json: @tracteur_neuf, status: :created, location: @tracteur_neuf }
      else
        format.html { render action: "new" }
        format.json { render json: @tracteur_neuf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tracteur_neufs/1
  # PUT /tracteur_neufs/1.json
  def update
    @tracteur_neuf = TracteurNeuf.find(params[:id])

    respond_to do |format|
      if @tracteur_neuf.update_attributes(params[:tracteur_neuf])
        format.html { redirect_to @tracteur_neuf, notice: 'Tracteur neuf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tracteur_neuf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracteur_neufs/1
  # DELETE /tracteur_neufs/1.json
  def destroy
    @tracteur_neuf = TracteurNeuf.find(params[:id])
    @tracteur_neuf.destroy

    respond_to do |format|
      format.html { redirect_to tracteur_neufs_url }
      format.json { head :no_content }
    end
  end
end
