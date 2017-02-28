*SAS code to open .SD2 data file and convert to .csv;

libname inv6 v6 "H:\BeerProject"; *v6 specifies engine v6;
*Note: .SD2 files are created on Windows so can only be opened using Windows;
*SAS University Edition uses Linux so can't open this file;

*The data file that we wanted to open was upcber.SD2;
DATA data1;
	set inv6.upcber;
RUN;

PROC PRINT DATA = data1;
RUN;

*We are exporting to upcber.csv;
PROC EXPORT DATA = data1
	OUTFILE = "H:\BeerProject\upcber.csv" 
	dbms = csv;
RUN;