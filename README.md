# Nerd Game

This project has the goal to simulate a variation of the game rock, scissors, paper.

## Requirements

| Name | Version | 
|------|---------|
| Rails | 7.0.5 |
| Ruby | 3.0.0 | 

### Usage

To run this application, run the following commands:

```bash
bundle install # install dependencies
```

```bash
rails s # start application
```

### API

| Method | Endpoint                           |
|--------|------------------------------------|
| POST   | localhost:3000/api/games/play      |


Post Example:

```bash
{
   "moves": [
        {
            "name": "Thor",
            "move": "rock"
        },
        {
            "name": "Hulk",
            "move": "paper"
        }
    ]
}
```

OBS: name can be any name, move should be one of the available moves below:


|  Available moves  |
|-------------------|
|      rock         |
|      paper        | 
|      scissors     | 
|      lizard       | 
|      spock        | 


### Game Logic

![alt text](https://github.com/juunys/nerd-game/blob/main/game_logic.jpeg?raw=true)