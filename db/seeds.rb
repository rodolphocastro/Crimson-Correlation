# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Series.create(description: 'Primeira serie de testes, crescente.', data_series: '1, 2, 3, 4, 5, 6, 7, 8, 9, 10')
Series.create(description: 'Segunda série de dados, decrescente.', data_series: '10, 9, 8, 7, 6, 5, 4, 3, 2, 1')
Series.create(description: 'Terceira série, aleatória entre -20 e 20.', data_series: '12, 13, -4, -1, -15, -11, -6, -8, -6, -10, 14, 18, -7, 9, -2, 10')