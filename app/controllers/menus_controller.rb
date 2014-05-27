class MenusController < ApplicationController
filter_resource_access
layout 'menu'

  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.all
himalaya_form
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @menus }
    end
  end


  # GET /menus/1
  # GET /menus/1.json
  def show
      himalaya_form

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @menu }
    end
  end

  # GET /menus/new
  # GET /menus/new.json
  def new
      himalaya_form
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @menu }
    end

  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus
  # POST /menus.json
  def create

    respond_to do |format|
              himalaya_form

      if @menu.save
        format.html { redirect_to menus_url, notice: 'Menu was successfully created.' }
        format.json { render json: @menu, status: :created, location: @menu }
      else
        format.html { render action: "new" }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /menus/1
  # PUT /menus/1.json
  def update

    respond_to do |format|
      if @menu.update_attributes(params[:menu])
        himalaya_form
        format.html { redirect_to menus_url, notice: 'Menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
himalaya_form
    respond_to do |format|
      format.html { redirect_to menus_url }
      format.json { head :no_content }
    end
  end

private
  def himalaya_form
    @himalaya = Himalaya.new

  end
end
