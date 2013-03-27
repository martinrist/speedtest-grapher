Broadband Speed Tester
======================

Introduction
------------
Provides the following two main components:

* A PHP script that runs a speed test against selected speedtest.net servers and stores the raw and averaged upload and download speeds to various data files.
* A simple web page that graphs average download speed data as recorded by the PHP script.

Further details on the speedtest PHP script can be found [here](http://tech.ivkin.net/wiki/Run_Speedtest_from_command_line).  


Installation Notes
------------------
To install and configure the 

1. Install the prerequisite modules `curl`, `php5`, `php5-curl` and `php5-cli`.
2. Create folders `data`, `upload` and `temp_down` folders.
3. Run `generate_upload_files.sh` to generate the test upload files in the `upload` directory.
4. Set up regular execution of `speedtest` script (see 'Cron Configuration' below).
5. Configure Apache to serve up `index.html`.


Cron Configuration
------------------
A simple way to configure `speedtest` to execute regularly would be to create a file in `/etc/cron.hourly` containing the following:

	#!/bin/bash
	cd /home/www/speedtest
	php speedtest


Bugs and Known Issues
---------------------
* `index.html` is hard-coded to graph content based on Speedtest servers in Bristol and Gloucester, UK.  This needs to be made more generic to allow more flexible configuration.


Acknowledgements & Licensing
----------------------------
* The speedtest script is a variant of the one provided [here](http://tech.ivkin.net/wiki/Run_Speedtest_from_command_line), which has been slighlty amended to calculate and store average values suitable for graphing.

* Graphs are produced using [Simile Timeplot](http://www.simile-widgets.org/timeplot/).  Timeplot is licensed under under the [BSD licence](http://simile.mit.edu/license.html).

