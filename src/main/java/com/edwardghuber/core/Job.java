package com.edwardghuber.core;

import java.util.ArrayList;

public class Job {
    public String companyName;
    public String location;
    public String jobTitle;
    public String startDate;
    public String endDate;
    public ArrayList<String> jobDescriptions;

    public Job(){}

    public Job(String companyName, String location, String jobTitle, String startDate, String endDate, ArrayList<String> jobDescriptions) {
        this.companyName = companyName;
        this.location = location;
        this.jobTitle = jobTitle;
        this.startDate = startDate;
        this.endDate = endDate;
        this.jobDescriptions = jobDescriptions;
    }
}
