# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'date'

Cliente.create([
  {nombre: "Udla"},
  {nombre: "Supermaxi"},
  {nombre: "Cigarra"},
])

Contrato.create([
  {
    nombre: "Tour Udla",
    monto: 4000,
    fecha: Date.new(2023, 1, 1),
    cliente_id: 1
  },
  {
    nombre: "SEO Website",
    monto: 2000,
    fecha: Date.new(2023, 2, 1),
    cliente_id: 1
  },
  {
    nombre: "Nueva App Movil",
    monto: 6000,
    fecha: Date.new(2023, 3, 1),
    cliente_id: 2
  },
  {
    nombre: "Facturacion electronica",
    monto: 2500,
    fecha: Date.new(2023, 4, 1),
    cliente_id: 3
  }
])