enum Direction { north, east, south, west }
 
void main() {
  // Initial position {7, 3} and facing north
  int x = 7;
  int y = 3;
  Direction direction = Direction.north;

  // Example instruction sequence
  const instructions = "RAALAL";

  // Process the instructions and get the final position and direction
  for(int i = 0;i<6;i++){
    String go = instructions[i];
  

  if(go == 'R'){
    if(direction == Direction.north){
      direction = Direction.east;
    }
    else if(direction == Direction.east){
      direction = Direction.south;
    }
    else if(direction == Direction.south){
      direction = Direction.west;
    }
    else if(direction == Direction.west){
      direction = Direction.north;
    }
    }
  
  else if(go == 'A'){
    if(direction == Direction.north){
      y += 1;
    }
    else if(direction == Direction.west){
      x -= 1;
    }
    else if(direction == Direction.east){
      x += 1;
    }
    else if(direction == Direction.south){
      y -= 1;
    }
  }
  else if(go == 'L'){
    if(direction == Direction.north){
      direction = Direction.west;
    }
    else if(direction == Direction.west){
      direction = Direction.south;
    }
    else if(direction == Direction.south){
      direction = Direction.east;
    }
    else if(direction == Direction.east){
      direction = Direction.north;
    }
  }

  }
  
  // Print the final position and direction
  print("Final position: ($x, $y)");  
  print("Facing: $direction");   
}