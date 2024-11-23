#include <sys/mount.h>
#include <stdio.h>

int main(void){
	printf("Mounting these niggers!\n");
	
	//mount -t devtmpfs none /dev
	if(mount("none", "/dev", "devtmpfs", 0, "") != 0){
		printf("Failed to mount /dev\n");
	}

	//mount -t proc none /proc
	if(mount("none", "/proc", "proc", 0, "") != 0){
		printf("Failed to mount /proc\n");
	}

	//mount -t sysfs none /sys
	if(mount("none", "/sys", "sysfs", 0, "") != 0){
		printf("failed to mount /sys\n");	
	}

	printf("We came all in their assholes.\n");
	while(1){}
	return 0;
}
