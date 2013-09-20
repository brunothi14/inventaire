class UsedOthersController < ApplicationController
  # GET /used_others
  # GET /used_others.json
  
  before_filter :check_for_mobile, :only => [:new, :edit]

  # Always render mobile versions for these, regardless of User-Agent.
  before_filter :prepare_for_mobile, :only => :show
  
  before_filter :authenticate_user!
  
  
  def index
    @search = UsedOther.search(params[:q])
    @used_others = @search.result

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @used_others }
    end
  end

  # GET /used_others/1
  # GET /used_others/1.json
  def show
    @used_other = UsedOther.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @used_other }
    end
  end

  # GET /used_others/new
  # GET /used_others/new.json
  def new
    @used_other = UsedOther.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @used_other }
    end
  end

  # GET /used_others/1/edit
  def edit
    @used_other = UsedOther.find(params[:id])
  end

  # POST /used_others
  # POST /used_others.json
  def create
    @used_other = UsedOther.new(params[:used_other])

    respond_to do |format|
      if @used_other.save
        format.html { redirect_to @used_other, notice: 'Used other was successfully created.' }
        format.json { render json: @used_other, status: :created, location: @used_other }
      else
        format.html { render action: "new" }
        format.json { render json: @used_other.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /used_others/1
  # PUT /used_others/1.json
  def update
    @used_other = UsedOther.find(params[:id])

    respond_to do |format|
      if @used_other.update_attributes(params[:used_other])
        format.html { redirect_to @used_other, notice: 'Used other was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @used_other.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /used_others/1
  # DELETE /used_others/1.json
  def destroy
    @used_other = UsedOther.find(params[:id])
    @used_other.destroy

    respond_to do |format|
      format.html { redirect_to used_others_url }
      format.json { head :no_content }
    end
  end
end
