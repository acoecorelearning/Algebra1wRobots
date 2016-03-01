// This work is licensed by James Town and ACOE Core Learning under a
// Creative Commons Attribution-NonCommercial-ShareAlike 4.0
// International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

int decayed; //1=decayed 0=not decayed
int timeCnt;
int maxSeconds=20;
int x, y, z; //counters
int currentNum;
int i;
double randomNumber;
char fake;
array int halfList[maxSeconds];
array int remainingList[maxSeconds];

decayed=0;
timeCnt=0;
//printf("test");
for (x=0; x<10; x++) {
	for (y=0; y<maxSeconds; y++) {
		halfList[y]=0;
	}
	for (z=0; z<100; z++) {
		decayed=0; 
		timeCnt=0;
		while (decayed==0) {
		    timeCnt+=1;
    		randomNumber=randdouble(0,1);//gives number in the range [0,1)
            //printf(randomNumber);
    		if (randomNumber>pow(.5,(1/19.29))){//halflife is 19.29 seconds
        		decayed=1;
        		i=int(timeCnt/19.29);
                halfList[i]+=1;
        		//printf (timeCnt);
        		//printf ("\n");
        	}
	    }
	}
	currentNum=100;
	for (z=0; z<maxSeconds; z++) {
		remainingList[z]+=currentNum;
		currentNum-=halfList[z];
        //printf(currentNum," - ",halfList[z],"\n");
	}
}
printf(" t | atoms \n");
for (x=0; x<maxSeconds; x++){
	printf(x*20, " | ", remainingList[x]);
    printf("\n");
}
