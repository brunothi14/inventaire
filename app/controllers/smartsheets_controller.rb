class SmartsheetsController < ApplicationController
  # GET /smartsheets
  # GET /smartsheets.json
  def index
    @smartsheets = Smartsheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @smartsheets }
    end
  end

  # GET /smartsheets/1
  # GET /smartsheets/1.json
  def show
    @smartsheet = Smartsheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @smartsheet }
    end
  end

  # GET /smartsheets/new
  # GET /smartsheets/new.json
  def new
    @smartsheet = Smartsheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @smartsheet }
    end
  end

  # GET /smartsheets/1/edit
  def edit
    @smartsheet = Smartsheet.find(params[:id])
  end

  # POST /smartsheets
  # POST /smartsheets.json
  def create
    @smartsheet = Smartsheet.new(params[:smartsheet])

    respond_to do |format|
      if @smartsheet.save
        format.html { redirect_to @smartsheet, notice: 'Smartsheet was successfully created.' }
        format.json { render json: @smartsheet, status: :created, location: @smartsheet }
      else
        format.html { render action: "new" }
        format.json { render json: @smartsheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /smartsheets/1
  # PUT /smartsheets/1.json
  def update
    @smartsheet = Smartsheet.find(params[:id])

    respond_to do |format|
      if @smartsheet.update_attributes(params[:smartsheet])
        format.html { redirect_to @smartsheet, notice: 'Smartsheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @smartsheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smartsheets/1
  # DELETE /smartsheets/1.json
  def destroy
    @smartsheet = Smartsheet.find(params[:id])
    @smartsheet.destroy

    respond_to do |format|
      format.html { redirect_to smartsheets_url }
      format.json { head :no_content }
    end
  end
end
