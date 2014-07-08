class GratisController < ApplicationController
    filter_resource_access

  # GET /gratis
  # GET /gratis.json
  def index
    @gratis = Grati.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gratis }
    end
  end

  # GET /gratis/1
  # GET /gratis/1.json
  def show
    @grati = Grati.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grati }
    end
  end

  # GET /gratis/new
  # GET /gratis/new.json
  def new
    @grati = Grati.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grati }
    end
  end

  # GET /gratis/1/edit
  def edit
    @grati = Grati.find(params[:id])
  end

  # POST /gratis
  # POST /gratis.json
  def create
    @grati = Grati.new(params[:grati])

    respond_to do |format|
      if @grati.save
        format.html { redirect_to @grati, notice: 'Gracias nosotros publicar  .' }
        format.json { render json: @grati, status: :created, location: @grati }
      else
        format.html { render action: "new" }
        format.json { render json: @grati.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gratis/1
  # PUT /gratis/1.json
  def update
    @grati = Grati.find(params[:id])

    respond_to do |format|
      if @grati.update_attributes(params[:grati])
        format.html { redirect_to @grati, notice: 'Grati was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grati.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gratis/1
  # DELETE /gratis/1.json
  def destroy
    @grati = Grati.find(params[:id])
    @grati.destroy

    respond_to do |format|
      format.html { redirect_to gratis_url }
      format.json { head :no_content }
    end
  end
end
