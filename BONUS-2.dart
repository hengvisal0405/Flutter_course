void main(){
  const x = "{what is (42)}?";
  const z = "[text}";
  const l = "{[[(a)b]c]d}";

int countbrace = 0;
int countbrace1 = 0;
int countbrace2 = 0;
int countparen = 0;
int countparen1 = 0;
int countparen2 = 0;
int countbracket = 0;
int countbracket1 = 0;
int countbracket2 =0;
  for(int i = 0;i<x.length;i++){
    String y = x[i];
    if ( y == '{' ){
      countbrace += 1;  
    }else if ( y == '}' ){
      countbrace -= 1;}
    else if ( y == '(' ){
      countparen += 1;}
          if ( y == ')' ){
      countparen -= 1;  
    }else if ( y == '[' ){
      countbracket += 1;}
          if ( y == ']' ){
      countbracket -= 1;  
  } 
}
  for(int i = 0;i<z.length;i++){
    String y = z[i];
    if ( y == '{' ){
      countbrace1 += 1;  
    }else if ( y == '}' ){
      countbrace1 -= 1;}
    else if ( y == '(' ){
      countparen1 += 1;}
          if ( y == ')' ){
      countparen1 -= 1;  
    }else if ( y == '[' ){
      countbracket1 += 1;}
          if ( y == ']' ){
      countbracket1 -= 1;  
  } 
}
  for(int i = 0;i<l.length;i++){
    String y = l[i];
    if ( y == '{' ){
      countbrace2 += 1;  
    }else if ( y == '}' ){
      countbrace2 -= 1;}
    else if ( y == '(' ){
      countparen2 += 1;}
          if ( y == ')' ){
      countparen2 -= 1;  
    }else if ( y == '[' ){
      countbracket2 += 1;}
          if ( y == ']' ){
      countbracket2 -= 1;  
  } 
}

if(countbracket == 0 && countparen == 0 && countbrace == 0){
  print("$x is balanced");
}else {
  print("$x is not balanced");
}
if(countbracket1 == 0 && countparen1 == 0 && countbrace1 == 0){
  print("$z is balanced");
}else {
  print("$z is not balanced");
}
if(countbracket2 == 0 && countparen2 == 0 && countbrace2 == 0){
  print("$l is balanced");
}else {
  print("$l is not balanced");
}
}