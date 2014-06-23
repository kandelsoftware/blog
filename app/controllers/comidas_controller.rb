class ComidasController < ApplicationController
  filter_resource_access
before_filter :get_menu
  # GET /comidas
  # GET /comidas.json
  def index
    @comidas= @menu.comidas.all
    himalaya_form
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comidas }
    end
  end

  # GET /comidas/1
  # GET /comidas/1.json
  def show
   @comida=@menu.comidas.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comida }
      himalaya_form
    end
  end

  # GET /comidas/new
  # GET /comidas/new.json
  def new
@comida=@menu.comidas.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comida }
    end
  end

  # GET /comidas/1/edit
  def edit
    @comida=@menu.comidas.find(params[:id])

  end

  # POST /comidas
  # POST /comidas.json
  def create
@comida=@menu.comidas.build(params[:comida])

    respond_to do |format|
      if @comida.save
        himalaya_form
        format.html { redirect_to [@menu,@comida], notice: 'Comida was successfully created.' }
        format.json { render json: @comida, status: :created, location: @comida }
      else
        format.html { render action: "new" }
        format.json { render json: @comida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comidas/1
  # PUT /comidas/1.json
  def update
    @comida=@menu.comidas.find(params[:id])

    respond_to do |format|
      if @comida.update_attributes(params[:comida])
        himalaya_form
        format.html { redirect_to [@menu,@comida], notice: 'Comida was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comidas/1
  # DELETE /comidas/1.json
  def destroy
    @comida=@menu.comidas.find(params[:id])

    @comida.destroy
himalaya_form
    respond_to do |format|
      format.html { redirect_to menu_comidas_url(@menu) }
      format.json { head :no_content }
    end
  end
end
private
def get_menu
  if params[:menu_id]
  @menu=Menu.find(params[:menu_id])
  end
end

  def himalaya_form
    @himalaya = Himalaya.new

  end