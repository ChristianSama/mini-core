class ContratosController < ApplicationController
  def index
    @contratos = Contrato.all

    fecha_inicio = params[:inicio]
    fecha_fin = params[:fin]

    @totales = Contrato
      .joins(:cliente)
      .group('clientes.nombre')
      .select('sum(contratos.monto) as monto, clientes.nombre as cliente_nombre')
      .where("fecha between (?) and (?)", fecha_inicio, fecha_fin)
  end
end
