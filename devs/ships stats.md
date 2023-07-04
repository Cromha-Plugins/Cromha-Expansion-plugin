# Ships Stats Formulas

## Formulas

*These are the formulas that endless sky uses for calculating ships stats like acceleration, max speed and turn rate.*

**To get the actual thrust, multiply the engine thrust in the engine outfit definition (the code) by 3,600**.

<details>

  <summary>Explanation</summary>

  *For example if an engine has a thrust of 128.3 in the outfit definition, I will multiply it by 3,600, 128.3 * 3,600 = 461,880. 461,880 is the actual thrust that is displayed on the engine definition on the outfitter in-game.*

</details>

**To get the actual turn, multiply the engine turn in the engine outfit definition (the code) by 60.**

<details>

  <summary>Explanation</summary>

  *For example, if an engine has a turn of 2,894 in the outfit definition, I will multiply it by 60, 2,894 * 60 = 173,640. 173,640 is the actual turn that is displayed on the engine definition on the outfitter in-game.*

</details>

* thrust / mass = acceleration
* thrust / drag / 60 = max speed
* turn / mass = turn rate

*You can use the 'devs/ships stats.py' python script.*

## Type of ships

*All thrusting stats(here thrust is max speed), acceleration, mass, drag, turn(here turn is max turn) and turn rate rated by type of ships.*

<details>

  <summary>Thrust</summary>

50-300 | Nanobots/Fuel Pods

300-400 | Heavy Freighters/Bulker/Transporters/Utility

500-600 | Light Freighters/Warship(any type) and some Interceptors/Transporters

700-900 | Empire Warships/Destroyers(without any nanobot)

</details>

<details>

  <summary>Acceleration</summary>

30-40 | Heavy Freighters/Bulkers(heavy ones)/World-Ships

50-60 | Interceptors/Warships(any) type/Light Freighters/Destroyers(mostly nanobot carriers)/Transporters/Utility

60-80 | Empire Warships/Destroyers/Fuel Pods

80-100 | Modified Ships/Nanobots

</details>

<details>

  <summary>Mass</summary>

50-200 | Light Interceptors/Nanobots/Fuel Pods/Transporters

200-350 | Light Freighters/Interceptors/Empire Warships(interceptor type)/Utility/Light Warships

350-450 | Medium Warships/Heavy Warships(some)/Heavy Freighters/Empire Warships(warships/utility type)/Utility/Destroyers(light type/carriers without any nanobot)

450-700 | Destroyers(heavy type)/World-Ships/Heavy Freighters(rare)

</details>

<details>

  <summary>Drag</summary>

1-3 | Nanobots/Fuel Pods/Transporters(rare)

3-5 | Light Freighters/Interceptors/Transporters/Light Warships

6-8 | Warships(medium and heavy)/Heavy Freighters/Empire Warships(interceptor type)/Destroyers(carrier type without any nanobot/light type)/Utility

9-11 | Heavy Warships(rare)/Destroyers(heavy type)/Utility(rare)/World-Ships

</details>

<details>

  <summary>Turn</summary>

50-150 | Heavy Freighters/Bulker/Utility

150-280 | Transporters/Interceptors/Warships(medium and heavy type)

280-330 | Light Freighters/Light Warships/Transporters(30% of time)/Destroyers(carriers type without any nanobot and light type)/Empire Warships(heavy and utility type)

700-900 | Empire Warships(light type)/Destroyers(heavy type)

</details>

<details>

  <summary>Turn Rate</summary>

50-150 | Heavy Freighters/Bulker/Utility

150-280 | Transporters/Interceptors/Warships(medium and heavy type)

280-330 | Light Freighters/Light Warships/Transporters(30% of time)/Destroyers(carriers type without any nanobot and light type)/Empire Warships(heavy and utility type)

700-900 | Empire Warships(light type)/Destroyers(heavy type)

</details>
