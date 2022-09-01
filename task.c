void main(void) {

	int fd;
	//get fd
	
	pid_t writeO, writeD, out;
	

	while (1) {

		serialPutchar(fd, "O");
		
		writeO = fork();
		switch (writeO) {
		
			//case -1: error processing; break;
			
			//children write
			case 0:

				//get answer
				while (serialDataAvail(fd))

					//write answer in shared memory???
					
				return;
			default: 
				waitpid(write, NULL, 0);
		}
		
		serialPutchar(fd, "D");
		
		writeD = fork();
		switch (writeD) {

			//case -1: error processing; break;
			
			//children writeD
			case 0:

				//get answer			
				while (serialDataAvail(fd))
				
					//write answer in shared memory for D replays
				
				return;
				
			default:	

				//
				waitpid(writeD, NULL, 0);
		}
	}
	

}
