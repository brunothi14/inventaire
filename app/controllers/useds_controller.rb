class UsedsController < ApplicationController
  # GET /useds
  # GET /useds.json
  def index
    @useds = Used.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @useds }
    end
  end

  # GET /useds/1
  # GET /useds/1.json
  def show
    @used = Used.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @used }
    end
  end

  # GET /useds/new
  # GET /useds/new.json
  def new
    @used = Used.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @used }
    end
  end

  # GET /useds/1/edit
  def edit
    @used = Used.find(params[:id])
  end

  # POST /useds
  # POST /useds.json
  def create
    @used = Used.new(params[:used])

    respond_to do |format|
      if @used.save
        format.html { redirect_to @used, notice: 'Used was successfully created.' }
        format.json { render json: @used, status: :created, location: @used }
      else
        format.html { render action: "new" }
        format.json { render json: @used.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /useds/1
  # PUT /useds/1.json
  def update
    @used = Used.find(params[:id])

    respond_to do |format|
      if @used.update_attributes(params[:used])
        format.html { redirect_to @used, notice: 'Used was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @used.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /useds/1
  # DELETE /useds/1.json
  def destroy
    @used = Used.find(params[:id])
    @used.destroy

    respond_to do |format|
      format.html { redirect_to useds_url }
      format.json { head :no_content }
    end
  end
end
