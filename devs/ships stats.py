

class ShipsStatsCalculator:

      # Get for ship stats
      print('PLEASE ENTER SHIP STATS')
      thrust = float(input('Thrust:'))
      mass = float(input('Mass(with outfits and no cargo):'))
      drag = float(input('Drag:'))
      turn = float(input('Turn(with outfits and no cargo):'))
      print(' ')
      
      # Compute final stats
      acceleration = thrust / mass
      max_speed = thrust / drag
      turn_rate= turn / mass
      
      # Print results
      print('SHIP STATS:')
      print('Acceleration: ' + str(acceleration))
      print('Max Speed: ' + str(max_speed))
      print('Turn Rate: ' + str(turn_rate))