Problem Statement:\
Developing Automation Pipeline to ingest and calculate data in BigData Platform\
1)Using Scripts like - Ansible, Bash etc to setup Hadoop Stack\
2)Developing scripts/programs to download and ingest data from <https://chronicdata.cdc.gov/views/735e-byxc/rows.csv?accessType=DOWNLOAD> to HDFS and Hive.\
3)Developing scripts/programs to calculate the following using Spark, and store the results into separate Hive tables:\
	- Average of each Question’s "Data_Value" by year for all age groups\
	- Average of each Question’s "Data_Value" by year for female only\
4)Developing Data Visualization to show the data using springboot\

Solution:\
As I always ran into memory issues even after allocating 4GB RAM to the VM.
I installed & configured Apache Hadoop-3.1.0, Apache hive-3.0.0 and Apache Spark-2.3.1 on a MAC.

Step 1:Installing Apache Hadoop on a Mac\
	 Follow Steps in Hadoop_Installation_on_MAC Document.

Step 2:Installing Apache Hive on a Mac\
	 Follow Steps in Hive_Installation_on_MAC Document.

Step 3:Installing Apache Spark on a Mac\
	 Follow Steps in Spark_Installation_on_MAC Document.

Step 4:Running Hive Table Creation Scripts\
	 Follow Steps in Hive_Table_Creation_Scripts Document.

Step 5:Running HDFS & Spark Commands for ingestion & calculation\
	 Run scripts in HDFS_Spark_Commands Document. 

Step 6:Data Visualisation using Springboot-Hive Integration\
	I have created springboot-hive integration Web UI for Data Visualisation.\
	Here it is : [https://github.com/BhagatGhugtyal/UseCaseMSD](https://github.com/BhagatSG/UsecaseMSD)

Note : I have also attached run-hive.sh,mysql-connector-java-5.1.47.tar.gz etc 

