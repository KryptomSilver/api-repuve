class Api::CarrosController < ApplicationController
    before_action :buscar_carro, only: [:show, :update, :destroy]
 
  def index
    @carros = Carro.all
    render json: @carros
  end
 
  def show
    /render json: @carro/
    
    render json: @carrob
  end
 
  def create
    @carro = Carro.new(carro_params)
 
    if @carro.save
      render json: @carro, status: :created
    else
      render json: @carro.errors, status: :unprocessable_entity
    end
  end
 
  def update
    if @carro.update(carro_params)
      render json: @carro, status: :ok
    else
      render json: @carro.errors, status: :unprocessable_entity
    end
  end
 
  def destroy
    @carro.destroy
  end
  private
    def set_carro
      @carro = Carro.find(params[:id])
    end
    def buscar_carro
      @carrob = Carro.where(matricula: params[:id]).take
    end
    def carro_params
      params.require(:carro).permit(:clave_car, :marca_car, :modelo_car,:matricula,:reprobo)
    end
end

