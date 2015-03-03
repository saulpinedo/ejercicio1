class EmpleadosController < ApplicationController

  before_action :set_empleado, only: [:show, :edit, :update, :destroy]

  def new
  @empleado= Empleado.new
  end

  def index
  @empleados= Empleado.all
  end

  def create
    @empleado= Empleado.new(empleado_params)
    respond_to do |format|
      if @empleado.save
        format.html { redirect_to empleados_path, notice: 'Empleado Creado.' }
        format.json { render :index, status: :created, location: @empleado }
      else
        format.html { render :new }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @empleado.update(empleado_params)
        format.html { redirect_to empleados_path, notice: 'Empleado editado.' }
        format.json { render :new, status: :ok, location: @empleado }
      else
        format.html { render :edit }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end


  def show

  end

  def edit

  end

  def destroy
    @empleado.destroy
    respond_to do |format|
      format.html { redirect_to empleados_url, notice: 'Persona was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_empleado
    @empleado = Empleado.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def empleado_params
    params.require(:empleado).permit(:nombre, :nacionalidad, :pai_id)
  end
end