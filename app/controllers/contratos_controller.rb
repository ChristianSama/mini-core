class ContratosController < ApplicationController
  def index
    @contratos = Contrato.all

    fecha_inicio = params[:inicio]
    fecha_fin = params[:fin]

    @totales = Contrato
      .joins(:cliente)
      .select('contratos.id, sum(contratos.monto) as monto, clientes.nombre as cliente_nombre')
      .group(:cliente_id)
      .where("fecha between (?) and (?)", fecha_inicio, fecha_fin)
  end
end
