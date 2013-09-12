package org.sergut.acme;

public class Main {
    // TODO: use log4j or Java's logging system
    private void log(String msg) {
	System.out.println("Log: " + msg);
    }
    
    
    public void run() {
	// 0. Get the tests
	// 1. Download all the repos
	//  1.1. Get the names of the users
	//  1.2. Get the names of the repo
	//  1.3. ...and the files
	// 2. Run the battery of tests on each of them
	log("Starting tests.");
	//  2.1. Put the tested code somewhere in relation to the tests
	//  2.2. Run the test -- this can be easier with Java but the rest is easier in bash
	// 3. Collect the results and dump them on webpage	
    }

    public static void main(String... args) {
	Main main = new Main();
	main.run();
    }
}
