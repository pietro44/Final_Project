def choice_maker(parameters)
  groups = [mountain = {
    mountain1: 0,
    mountain2: 0,
    mountain3: 0,
    mountain4: 0
    },
  urban = {
    amsterdam: 0,
    johannesburg: 0,
    city3: 0,
    city4:0
    },
  beach = {
    beach1: 0,
    beach2: 0,
    beach3: 0,
    beach4: 0
    },
  rural = {
    rural1: 0,
    rural2: 0,
    rural3: 0,
    rural4: 0
    }
  ]
  puts groups[parameters[place_type]]
end