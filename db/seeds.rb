puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    stars:        5,
    chef:         'Gordon Ramsey'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    stars:        4,
    chef:         'Jamie Oliver'
  },
  {
    name:         'KFC',
    address:      '202 La Rambla, Barcelona',
    description:  'Very trendy and fashionable chicken diner.',
    stars:        5,
    chef:         'Michaelangelo'
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
