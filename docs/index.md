# Welcome
BAILnas is a Network Attached Storage(NAS) server provided by UW BAIL(Biophotonics And Imaging Lab). 

* Please make sure to read **Rules of Use** and **Disclaimer**(below) before using the server.

## Introduction

BAILnas is an Enterprise-grade NAS. It has the following features:

* Large, scalable storage:
	* 24 * 10TB redundant disk array, 178 TB usable disk space.
	* 16 * 8TB individually addressed archival hard-drives.
	* Expandable in forms of server cluster.
* Redundancy protection: 
	* NAS data is protected by RAIDZ1 redundant disk array. 
	* Current configurations allows up to 3 out of 24 drives to fail without any data loss.
	* Server has redundant power supply and generator-backed UPS to gurantee 24x7x365 operations
	* In case of hard-disk/power failure, the server will continue to function in a degraded state interuptions. 
* **Data recovery:**
	* All data in the NAS folder is backed-up by snapshots every 6 hours during working hours.
	* In case of mannual errors such as unintended deletes, any folder can be rollded back to any snapshots within the past two weeks.
	* Snapshot roll-backs are available upon request. Please contact [system admin](mailto:szsong@uw.edu).
* High-speed input/output (i/o):
	* BAILnas is connected to UW network with 10GBps ethernet. Typical sequential data read/write speed from a lab/office PC (1Gbps ethernet) should be approximately 100MB/s.
	* 10GBps bandwidth minimizes i/o conflicts from multiple users. Feel free to process/review data on N drive and T drive.

## Disclaimer
Although the chance of catastrophic server failure is very faint, BAILnas is provided to you with no warranty. UW/BAIL has no responsibility for any data loss. Make **MULTIPLE** backups to your most critical data!!!

# Contact

For more information or requests email [Shaozhen Song](mailto:szsong@uw.edu).