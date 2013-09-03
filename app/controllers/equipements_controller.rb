class EquipementsController < ApplicationController
  # GET /equipements
  # GET /equipements.json
  
  before_filter :authenticate_user!
  load_and_authorize_resource
  
  
  def index
     @search = Equipement.search(params[:q])
    @equipements = @search.result

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipements }
    end
  end

  # GET /equipements/1
  # GET /equipements/1.json
  def show
    @equipement = Equipement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipement }
    end
  end

  # GET /equipements/new
  # GET /equipements/new.json
  def new
    @equipement = Equipement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipement }
    end
  end

  # GET /equipements/1/edit
  def edit
    @equipement = Equipement.find(params[:id])
  end

  # POST /equipements
  # POST /equipements.json
  def create
    @equipement = Equipement.new(params[:equipement])

    respond_to do |format|
      if @equipement.save
        format.html { redirect_to @equipement, notice: 'Equipement was successfully created.' }
        format.json { render json: @equipement, status: :created, location: @equipement }
      else
        format.html { render action: "new" }
        format.json { render json: @equipement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipements/1
  # PUT /equipements/1.json
  def update
    @equipement = Equipement.find(params[:id])

    respond_to do |format|
      if @equipement.update_attributes(params[:equipement])
        format.html { redirect_to @equipement, notice: 'Equipement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipements/1
  # DELETE /equipements/1.json
  def destroy
    @equipement = Equipement.find(params[:id])
    @equipement.destroy

    respond_to do |format|
      format.html { redirect_to equipements_url }
      format.json { head :no_content }
    end
  end
end
