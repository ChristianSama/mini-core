class ContratosController < ApplicationController
  def index
    @contratos = Contrato.all

    # solucion 1
    @totales = Contrato
      .joins(:cliente)
      .select('contratos.id, sum(contratos.monto) as monto, clientes.nombre as cliente_nombre')
      .group(:cliente_id)

    # solucion 2
    # clientes = Cliente.all

    # @totales = []

    # clientes.each do |cliente|
    #   total = cliente.contratos.reduce(0) do |acc, cont|
    #     acc + cont.monto 
    #   end
    #   @totales.push({:cliente_nombre => cliente.nombre, :monto => total})
    # end

  end
end
