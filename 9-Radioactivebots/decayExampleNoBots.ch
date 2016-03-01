// This work is licensed by James Town and ACOE Core Learning under a
// Creative Commons Attribution-NonCommercial-ShareAlike 4.0
// International License: http://creativecommons.org/licenses/by-nc-sa/4.0/

int decayed; //1=decayed 0=not decayed
int timeCnt;
int maxSeconds=20;
int x, y, z; //counters
int index;
int currentNum;
double randomNumber;
char fake;
array int halfList[maxSeconds];
array int remainingList[maxSeconds];

decayed=0;
timeCnt=0;

for (x=0; x++; x<=10) {
	for (y=0; y++; y<=maxSeconds) {
		halfList[y]=0;
	}
	for (z=0, z++; z<=100) {
		decayed=0; 
		timeCnt=0;
		while (decayed==0) {
		    timeCnt+=1;
    		randomNumber=randdouble(0,1);//gives number in the range [0,1)
    		if (randomNumber>pow(.5,(1/19.29))){//halflife is 19.29 seconds
        		decayed=1;
        		index=int(timer/19.29)
                halfList[index]+=1;
        		printf (timeCnt);
        		printf ("\n");
        	}
	    }
	}
	currentNum=100;
	for (z=0; z++; z<=maxSeconds) {
		remainingList[z]+=currentNum;
		currentNum-=halfList[z];
	}
}
for (x=0; x++; x<=maxSeconds){
	printf(x*20, remainingList[x]/1000);
}