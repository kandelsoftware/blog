class HimalayasController < ApplicationController

filter_resource_access

  # GET /himalayas
  # GET /himalayas.json
  def index
    @himalayas ||= Himalaya.limit(10).order('id desc')
    @descuentos ||= Descuento.limit(10).order('id desc')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @himalayas }
    end
  end

  # GET /himalayas/1
  # GET /himalayas/1.json
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @himalaya }
    end
  end

  # GET /himalayas/new
  # GET /himalayas/new.json
  def new
    @ip=request.remote_ip

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @himalaya }
    end
  end

  # GET /himalayas/1/edit
  def edit
  end

  # POST /himalayas
  # POST /himalayas.json
  def create

    respond_to do |format|
      if @himalaya.save
        UserMailer.reserva_confirmation(@himalaya).deliver
        format.html { redirect_to  @himalaya, notice: "Gracias   #{@himalaya.nombre}  por  reserva.| Datos de reserva envia en su correo electronico"  }
        format.json { render json: @himalaya, status: :created, location: @himalaya }
      else
        format.html { render action: "new" }
        format.json { render json: @himalaya.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /himalayas/1
  # PUT /himalayas/1.json
  def update

    respond_to do |format|
      if @himalaya.update_attributes(params[:himalaya])
        format.html { redirect_to @himalaya, notice:'Reservar actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @himalaya.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /himalayas/1
  # DELETE /himalayas/1.json
  def destroy
    @himalaya.destroy

    respond_to do |format|
      format.html { redirect_to himalayas_url }
      format.json { head :no_content }
    end
  end
end
