class BizcardsController < ApplicationController
  # GET /bizcards
  # GET /bizcards.json
  def index
    @bizcards = Bizcard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bizcards }
    end
  end

  # GET /bizcards/1
  # GET /bizcards/1.json
  def show
    @bizcard = Bizcard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bizcard }
    end
  end

  # GET /bizcards/new
  # GET /bizcards/new.json
  def new
    @bizcard = Bizcard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bizcard }
    end
  end

  # GET /bizcards/1/edit
  def edit
    @bizcard = Bizcard.find(params[:id])
  end

  # POST /bizcards
  # POST /bizcards.json
  def create
    @bizcard = Bizcard.new(params[:bizcard])

    respond_to do |format|
      if @bizcard.save
        format.html { redirect_to root_path, notice: 'Bizcard was successfully created.' }
        format.json { render json: @bizcard, status: :created, location: @bizcard }
      else
        format.html { render action: "new" }
        format.json { render json: @bizcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bizcards/1
  # PUT /bizcards/1.json
  def update
    @bizcard = Bizcard.find(params[:id])

    respond_to do |format|
      if @bizcard.update_attributes(params[:bizcard])
        format.html { redirect_to @bizcard, notice: 'Bizcard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bizcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bizcards/1
  # DELETE /bizcards/1.json
  def destroy
    @bizcard = Bizcard.find(params[:id])
    @bizcard.destroy

    respond_to do |format|
      format.html { redirect_to bizcards_url }
      format.json { head :no_content }
    end
  end
end
