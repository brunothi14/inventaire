class UsedAccessoriesController < ApplicationController
  # GET /used_accessories
  # GET /used_accessories.json
  def index
    @used_accessories = UsedAccessory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @used_accessories }
    end
  end

  # GET /used_accessories/1
  # GET /used_accessories/1.json
  def show
    @used_accessory = UsedAccessory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @used_accessory }
    end
  end

  # GET /used_accessories/new
  # GET /used_accessories/new.json
  def new
    @used_accessory = UsedAccessory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @used_accessory }
    end
  end

  # GET /used_accessories/1/edit
  def edit
    @used_accessory = UsedAccessory.find(params[:id])
  end

  # POST /used_accessories
  # POST /used_accessories.json
  def create
    @used_accessory = UsedAccessory.new(params[:used_accessory])

    respond_to do |format|
      if @used_accessory.save
        format.html { redirect_to @used_accessory, notice: 'Used accessory was successfully created.' }
        format.json { render json: @used_accessory, status: :created, location: @used_accessory }
      else
        format.html { render action: "new" }
        format.json { render json: @used_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /used_accessories/1
  # PUT /used_accessories/1.json
  def update
    @used_accessory = UsedAccessory.find(params[:id])

    respond_to do |format|
      if @used_accessory.update_attributes(params[:used_accessory])
        format.html { redirect_to @used_accessory, notice: 'Used accessory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @used_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /used_accessories/1
  # DELETE /used_accessories/1.json
  def destroy
    @used_accessory = UsedAccessory.find(params[:id])
    @used_accessory.destroy

    respond_to do |format|
      format.html { redirect_to used_accessories_url }
      format.json { head :no_content }
    end
  end
end
