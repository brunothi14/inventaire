class RentalFleet2sController < ApplicationController
  # GET /rental_fleet2s
  # GET /rental_fleet2s.json
  def index
    @rental_fleet2s = RentalFleet2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rental_fleet2s }
    end
  end

  # GET /rental_fleet2s/1
  # GET /rental_fleet2s/1.json
  def show
    @rental_fleet2 = RentalFleet2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rental_fleet2 }
    end
  end

  # GET /rental_fleet2s/new
  # GET /rental_fleet2s/new.json
  def new
    @rental_fleet2 = RentalFleet2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rental_fleet2 }
    end
  end

  # GET /rental_fleet2s/1/edit
  def edit
    @rental_fleet2 = RentalFleet2.find(params[:id])
  end

  # POST /rental_fleet2s
  # POST /rental_fleet2s.json
  def create
    @rental_fleet2 = RentalFleet2.new(params[:rental_fleet2])

    respond_to do |format|
      if @rental_fleet2.save
        format.html { redirect_to @rental_fleet2, notice: 'Rental fleet2 was successfully created.' }
        format.json { render json: @rental_fleet2, status: :created, location: @rental_fleet2 }
      else
        format.html { render action: "new" }
        format.json { render json: @rental_fleet2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rental_fleet2s/1
  # PUT /rental_fleet2s/1.json
  def update
    @rental_fleet2 = RentalFleet2.find(params[:id])

    respond_to do |format|
      if @rental_fleet2.update_attributes(params[:rental_fleet2])
        format.html { redirect_to @rental_fleet2, notice: 'Rental fleet2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rental_fleet2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_fleet2s/1
  # DELETE /rental_fleet2s/1.json
  def destroy
    @rental_fleet2 = RentalFleet2.find(params[:id])
    @rental_fleet2.destroy

    respond_to do |format|
      format.html { redirect_to rental_fleet2s_url }
      format.json { head :no_content }
    end
  end
end
