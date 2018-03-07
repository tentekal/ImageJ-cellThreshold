//use this to measure all ROIS in a folder
//AFTER the background ROI has been manually added

print("start directory loop");
//dir = getDirectory("Choose Hoescht channel input  Directory");     
// prompts the user to select the folder to be processed,  you might only have one dir. 

dir= getDirectory("Choose Original Images directory") // prompt user for multi-channel originals

list = getFileList(dir);                                    // gives ImageJ a list of all files in the folder to work through
print("number of files in dir1: ",list.length);      // optional prints the number of files in the folder


dir2 = getDirectory("Choose ROI Directory ");
list2 = getFileList(dir2);                 				// gives ImageJ a list of all files in the folder to work through for directory2 
//extension2 = ".tif";   									//defines file type  variable 

print("number of files in dir2: ",list2.length);                 // optional prints the number of files in the folder
setBatchMode(true);               // runs up to 6 times faster, without showing images onscreen.  Turn off during troubleshooting steps??


for (f=0;  f<list.length; f++) { //this iterates through all available files in the file list
        path = dir+list[f];          // creates the filepath for reading original images 
        pathROI = dir2+list2[f];
	//if(dbugp>0) {             
     	// optional prints the path & file name to a log window
		//print("Name of path reading file from dir3",path); 
	//}

       
	showProgress(f, list.length);    
	// optional progress monitor displayed at top of Fiji
	
	if(!endsWith(path,"/")) {
	       open(path);
	}
	title = getTitle();    // gets the name of the image being processed   
	//string=replace(pathROI,".tif",""); 
	print("Opening ROI:", pathROI);
	//roiManager("open", string2 + ".zip");
	roiManager("open", pathROI);
	
	run("Set Measurements...", "mean display redirect=None decimal=3");
	roiManager("multi-measure measure_all one append");
	//saveAs("Measurements", dir3 + string + ".xls");
	//now need to discard ROIs and add in new ones
	roiManager("reset");
	
	      }


	
 	

         
	// Closes a loop.  Note there are as many } as there are { in the code, and each } is on it's own line
		


//                                    }
//selectWindow("Results");
//saveAs(dir3+"WantedFileName.txt");
//selectWindow("Log");
//saveAs(dir3+"runlog.txt");
  // END processing per image