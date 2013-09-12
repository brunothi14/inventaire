class SnowblowersController < ApplicationController
  # GET /snowblowers
  # GET /snowblowers.json
  
  before_filter :check_for_mobile, :only => [:new, :edit]

  # Always render mobile versions for these, regardless of User-Agent.
  before_filter :prepare_for_mobile, :only => :show
  
  before_filter :authenticate_user!
  
  
  
  def index
    @search = Snowblower.search(params[:q])
    @snowblowers = @search.result

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @snowblowers }
    end
  end

  # GET /snowblowers/1
  # GET /snowblowers/1.json
  def show
    @snowblower = Snowblower.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @snowblower }
    end
  end

  # GET /snowblowers/new
  # GET /snowblowers/new.json
  def new
    @snowblower = Snowblower.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @snowblower }
    end
  end

  # GET /snowblowers/1/edit
  def edit
    @snowblower = Snowblower.find(params[:id])
  end

  # POST /snowblowers
  # POST /snowblowers.json
  def create
    @snowblower = Snowblower.new(params[:snowblower])

    respond_to do |format|
      if @snowblower.save
        format.html { redirect_to @snowblower, notice: 'Snowblower was successfully created.' }
        format.json { render json: @snowblower, status: :created, location: @snowblower }
      else
        format.html { render action: "new" }
        format.json { render json: @snowblower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /snowblowers/1
  # PUT /snowblowers/1.json
  def update
    @snowblower = Snowblower.find(params[:id])

    respond_to do |format|
      if @snowblower.update_attributes(params[:snowblower])
        format.html { redirect_to @snowblower, notice: 'Snowblower was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @snowblower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snowblowers/1
  # DELETE /snowblowers/1.json
  def destroy
    @snowblower = Snowblower.find(params[:id])
    @snowblower.destroy

    respond_to do |format|
      format.html { redirect_to snowblowers_url }
      format.json { head :no_content }
    end
  end
end
