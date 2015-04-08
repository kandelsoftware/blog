class ExitpopsController < ApplicationController
  # GET /exitpops
  # GET /exitpops.json
  def index
    @exitpops = Exitpop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exitpops }
    end
  end

  # GET /exitpops/1
  # GET /exitpops/1.json
  def show
    @exitpop = Exitpop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exitpop }
    end
  end

  # GET /exitpops/new
  # GET /exitpops/new.json
  def new
    @exitpop = Exitpop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exitpop }
    end
  end

  # GET /exitpops/1/edit
  def edit
    @exitpop = Exitpop.find(params[:id])
  end

  # POST /exitpops
  # POST /exitpops.json
  def create
    @exitpop = Exitpop.new(params[:exitpop])

    respond_to do |format|
      if @exitpop.save
        format.html { redirect_to @exitpop, notice: 'Exitpop was successfully created.' }
        format.json { render json: @exitpop, status: :created, location: @exitpop }
      else
        format.html { redirect_to action: "new" }
        format.json { render json: @exitpop.errors, status: :unprocessable_entity }

      end
    end
  end

  # PUT /exitpops/1
  # PUT /exitpops/1.json
  def update
    @exitpop = Exitpop.find(params[:id])

    respond_to do |format|
      if @exitpop.update_attributes(params[:exitpop])
        format.html { redirect_to @exitpop, notice: 'Exitpop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exitpop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exitpops/1
  # DELETE /exitpops/1.json
  def destroy
    @exitpop = Exitpop.find(params[:id])
    @exitpop.destroy

    respond_to do |format|
      format.html { redirect_to exitpops_url }
      format.json { head :no_content }
    end
  end
end
