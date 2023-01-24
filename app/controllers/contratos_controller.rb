class ContratosController < ApplicationController
  def index
    @contratos = Contrato.all
  end
end
