
class DescuentosController < ApplicationController

  filter_resource_access

    # GET /descuentos
    # GET /descuentos.json
    def index
      @descuentos ||= Descuento.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @descuentos }
      end
    end

    # GET /descuentos/1
    # GET /descuentos/1.json
    def show

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @descuento }
      end
    end

    # GET /descuentos/new
    # GET /descuentos/new.json
    def new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @descuento }
      end
    end

    # GET /descuentos/1/edit
    def edit
    end

    # POST /descuentos
    # POST /descuentos.json
    def create

      respond_to do |format|
        if @descuento.save
          DescuentoMailer.reserva_confirmation(@descuento).deliver
          format.html { redirect_to  @descuento, notice: "Gracias   #{@descuento.nombre}  por su reserva. Datos de reserva envia en su email"  }
          format.json { render json: @descuento, status: :created, location: @descuento }
        else
          format.html { render action: "new" }
          format.json { render json: @descuento.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /descuentos/1
    # PUT /descuentos/1.json
    def update

      respond_to do |format|
        if @descuento.update_attributes(params[:descuento])
          format.html { redirect_to @descuento, notice:'Reservar actualizado correctamente.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @descuento.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /descuentos/1
    # DELETE /descuentos/1.json
    def destroy
      @descuento.destroy

      respond_to do |format|
        format.html { redirect_to descuentos_url }
        format.json { head :no_content }
      end
    end
  end
