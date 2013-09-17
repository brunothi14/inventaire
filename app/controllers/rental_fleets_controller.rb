class RentalFleetsController < ApplicationController
  # GET /rental_fleets
  # GET /rental_fleets.json
  
  
  # Render mobile or desktop depending on User-Agent for these actions.
  before_filter :check_for_mobile, :only => [:new, :edit]

  # Always render mobile versions for these, regardless of User-Agent.
  before_filter :prepare_for_mobile, :only => :show
  
  before_filter :authenticate_user!
  
  
  
  def index
    @search = RentalFleet.search(params[:q])
    @rental_fleets = @search.result

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rental_fleets }
    end
  end

  # GET /rental_fleets/1
  # GET /rental_fleets/1.json
  def show
    @rental_fleet = RentalFleet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rental_fleet }
    end
  end

  # GET /rental_fleets/new
  # GET /rental_fleets/new.json
  def new
    @rental_fleet = RentalFleet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rental_fleet }
    end
  end

  # GET /rental_fleets/1/edit
  def edit
    @rental_fleet = RentalFleet.find(params[:id])
  end

  # POST /rental_fleets
  # POST /rental_fleets.json
  def create
    @rental_fleet = RentalFleet.new(params[:rental_fleet])

    respond_to do |format|
      if @rental_fleet.save
        format.html { redirect_to @rental_fleet, notice: 'Rental fleet was successfully created.' }
        format.json { render json: @rental_fleet, status: :created, location: @rental_fleet }
      else
        format.html { render action: "new" }
        format.json { render json: @rental_fleet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rental_fleets/1
  # PUT /rental_fleets/1.json
  def update
    @rental_fleet = RentalFleet.find(params[:id])

    respond_to do |format|
      if @rental_fleet.update_attributes(params[:rental_fleet])
        format.html { redirect_to @rental_fleet, notice: 'Rental fleet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rental_fleet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_fleets/1
  # DELETE /rental_fleets/1.json
  def destroy
    @rental_fleet = RentalFleet.find(params[:id])
    @rental_fleet.destroy

    respond_to do |format|
      format.html { redirect_to rental_fleets_url }
      format.json { head :no_content }
    end
  end
end
