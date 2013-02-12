class ScaffsController < ApplicationController
  # GET /scaffs
  # GET /scaffs.json
  def index
    @scaffs = Scaff.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scaffs }
    end
  end

  # GET /scaffs/1
  # GET /scaffs/1.json
  def show
    @scaff = Scaff.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scaff }
    end
  end

  # GET /scaffs/new
  # GET /scaffs/new.json
  def new
    @scaff = Scaff.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scaff }
    end
  end

  # GET /scaffs/1/edit
  def edit
    @scaff = Scaff.find(params[:id])
  end

  # POST /scaffs
  # POST /scaffs.json
  def create
    @scaff = Scaff.new(params[:scaff])

    respond_to do |format|
      if @scaff.save
        format.html { redirect_to @scaff, notice: 'Scaff was successfully created.' }
        format.json { render json: @scaff, status: :created, location: @scaff }
      else
        format.html { render action: "new" }
        format.json { render json: @scaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scaffs/1
  # PUT /scaffs/1.json
  def update
    @scaff = Scaff.find(params[:id])

    respond_to do |format|
      if @scaff.update_attributes(params[:scaff])
        format.html { redirect_to @scaff, notice: 'Scaff was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @scaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffs/1
  # DELETE /scaffs/1.json
  def destroy
    @scaff = Scaff.find(params[:id])
    @scaff.destroy

    respond_to do |format|
      format.html { redirect_to scaffs_url }
      format.json { head :ok }
    end
  end
end
