#!/bin/bash

#Compile ChromeTest.java
javac -cp .:/usr/share/java/junit-4.12.jar:/usr/share/java/hamcrest-core-1.3.jar:selenium-server-standalone-3.12.0.jar ChromeTest.java
#Run JUnit tests
java -cp .:/usr/share/java/junit-4.12.jar:/usr/share/java/hamcrest-core-1.3.jar:selenium-server-standalone-3.12.0.jar org.junit.runner.JUnitCore ChromeTest 

#Compile FirefoxTest.java
javac -cp .:/usr/share/java/junit-4.12.jar:/usr/share/java/hamcrest-core-1.3.jar:selenium-server-standalone-3.12.0.jar FirefoxTest.java 
#Run JUnit tests
java -cp .:/usr/share/java/junit-4.12.jar:/usr/share/java/hamcrest-core-1.3.jar:selenium-server-standalone-3.12.0.jar org.junit.runner.JUnitCore FirefoxTest
