#include "types.h" 
#include "stat.h" 
#include "user.h" 

int 
main(int argc, char *argv[]) 
{ 
	trace();
	char s[7];
	strcpy(s,argv[1]);
	argv++;
/*    id = fork();

	
    if (id == 0) { 
        we are in the child */ 
       exec(s, argv); 
       printf(1, "Child: WE DON'T SEE THIS\n"); 
       exit();
        
   /* } else { 
         we are in the parent  
       id = wait(); 
       printf(1, "Parent: child terminated\n"); 
    } 

    exit(); */
}
