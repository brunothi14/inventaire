class AttachementsController < ApplicationController
  # GET /attachements
  # GET /attachements.json
  
  # Render mobile or desktop depending on User-Agent for these actions.
  before_filter :check_for_mobile, :only => [:new, :edit]

  # Always render mobile versions for these, regardless of User-Agent.
  before_filter :prepare_for_mobile, :only => :show
  
  before_filter :authenticate_user!
  
  def index
    @search = Attachement.search(params[:q])
    @attachements = @search.result

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attachements }
    end
  end

  # GET /attachements/1
  # GET /attachements/1.json
  def show
    @attachement = Attachement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attachement }
    end
  end

  # GET /attachements/new
  # GET /attachements/new.json
  def new
    @attachement = Attachement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attachement }
    end
  end

  # GET /attachements/1/edit
  def edit
    @attachement = Attachement.find(params[:id])
  end

  # POST /attachements
  # POST /attachements.json
  def create
    @attachement = Attachement.new(params[:attachement])

    respond_to do |format|
      if @attachement.save
        format.html { redirect_to @attachement, notice: 'Attachement was successfully created.' }
        format.json { render json: @attachement, status: :created, location: @attachement }
      else
        format.html { render action: "new" }
        format.json { render json: @attachement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attachements/1
  # PUT /attachements/1.json
  def update
    @attachement = Attachement.find(params[:id])

    respond_to do |format|
      if @attachement.update_attributes(params[:attachement])
        format.html { redirect_to @attachement, notice: 'Attachement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attachement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attachements/1
  # DELETE /attachements/1.json
  def destroy
    @attachement = Attachement.find(params[:id])
    @attachement.destroy

    respond_to do |format|
      format.html { redirect_to attachements_url }
      format.json { head :no_content }
    end
  end
end
