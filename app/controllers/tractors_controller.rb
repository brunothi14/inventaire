class TractorsController < ApplicationController
  # GET /tractors
  # GET /tractors.json
  def index
    @tractors = Tractor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tractors }
    end
  end

  # GET /tractors/1
  # GET /tractors/1.json
  def show
    @tractor = Tractor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tractor }
    end
  end

  # GET /tractors/new
  # GET /tractors/new.json
  def new
    @tractor = Tractor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tractor }
    end
  end

  # GET /tractors/1/edit
  def edit
    @tractor = Tractor.find(params[:id])
  end

  # POST /tractors
  # POST /tractors.json
  def create
    @tractor = Tractor.new(params[:tractor])

    respond_to do |format|
      if @tractor.save
        format.html { redirect_to @tractor, notice: 'Tractor was successfully created.' }
        format.json { render json: @tractor, status: :created, location: @tractor }
      else
        format.html { render action: "new" }
        format.json { render json: @tractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tractors/1
  # PUT /tractors/1.json
  def update
    @tractor = Tractor.find(params[:id])

    respond_to do |format|
      if @tractor.update_attributes(params[:tractor])
        format.html { redirect_to @tractor, notice: 'Tractor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tractors/1
  # DELETE /tractors/1.json
  def destroy
    @tractor = Tractor.find(params[:id])
    @tractor.destroy

    respond_to do |format|
      format.html { redirect_to tractors_url }
      format.json { head :no_content }
    end
  end
end
