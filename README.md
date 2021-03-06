# automata-datapack
This datapack allows the user to create various cellular automata.
Currently, the only supported automata are Conway's game of life and Wolfram's elementary cellular automata.

## Conway's Game of Life
To get started run the command `/function conway:give_markers`. Use the spawn eggs to toggle blocks between living and dead. Black Concrete is considered "alive", and all other blocks are considered dead. When a cell dies, it is replaced with the block one layer beneath it. The potion labeled "Step" will run a single step of the simulation, the potion labeled "Start" will start a continuous simulation, and the potion labeled "Stop" will pause a continuous simulation.

By default, the simulation runs at one step every 4 ticks, or 5 steps per second. The potion labeled "Faster" will decrease the number of ticks per step, down to a minimum of 1, or 20 steps for second. With larger simulations, it may take more than a tick to calculate all of the required updates, but the datapack will self-regulate to keep the simulation accurate. The potion labeled "Slower" will double the number of ticks per step, up to a maximum of 64, or about one update every three seconds.

## Wolfram's Elementary Cellular Automata
To get started, run the command `/trigger wolfram_rule set [rule_number]`. Use the spawn egg to set the initial "living" cells, all in a row with the same z coordinate. The potion labeled "Step" will run a single step of the simulation, the potion labeled "Start" will start a continuous simulation, and the potion labeled "Stop" will pause a continuous simulation.
