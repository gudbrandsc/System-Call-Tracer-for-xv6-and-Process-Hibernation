#include "types.h" 
#include "stat.h" 
#include "user.h" 

int 
main(int argc, char *argv[]) 
{ 
	char s[64];
  int id;

	strcpy(s,argv[1]);
	argv++;
  id = fork();

	
    if (id == 0) { 
      trace();
      exec(s, argv); 
      printf(1, "Child: WE DON'T SEE THIS\n"); 
      exit();  
    } else { 
      id = wait(); 
      printf(1, "Parent: child terminated\n"); 
    } 
    exit(); 
}
