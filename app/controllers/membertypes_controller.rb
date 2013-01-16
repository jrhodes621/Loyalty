class MembertypesController < ApplicationController
  # GET /membertypes
  # GET /membertypes.json
  def index
    @membertypes = Membertype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @membertypes }
    end
  end

  # GET /membertypes/1
  # GET /membertypes/1.json
  def show
    @membertype = Membertype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @membertype }
    end
  end

  # GET /membertypes/new
  # GET /membertypes/new.json
  def new
    @membertype = Membertype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @membertype }
    end
  end

  # GET /membertypes/1/edit
  def edit
    @membertype = Membertype.find(params[:id])
  end

  # POST /membertypes
  # POST /membertypes.json
  def create
    @membertype = Membertype.new(params[:membertype])

    respond_to do |format|
      if @membertype.save
        format.html { redirect_to @membertype, notice: 'Membertype was successfully created.' }
        format.json { render json: @membertype, status: :created, location: @membertype }
      else
        format.html { render action: "new" }
        format.json { render json: @membertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /membertypes/1
  # PUT /membertypes/1.json
  def update
    @membertype = Membertype.find(params[:id])

    respond_to do |format|
      if @membertype.update_attributes(params[:membertype])
        format.html { redirect_to @membertype, notice: 'Membertype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @membertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /membertypes/1
  # DELETE /membertypes/1.json
  def destroy
    @membertype = Membertype.find(params[:id])
    @membertype.destroy

    respond_to do |format|
      format.html { redirect_to membertypes_url }
      format.json { head :no_content }
    end
  end
end
