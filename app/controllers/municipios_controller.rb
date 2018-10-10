class MunicipiosController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  # skip_after_action :verify_policy_scoped, only: :index

  def index
    @municipios = Municipio.all
    @municipios = @municipios.where(departamento: Departamento.find_by(nombre: mun_params[:departamento].downcase)) if mun_params[:departamento].present?
  end

  private

  def mun_params
    params.require(:search).permit(:departamento, :municipio)
  end
end
