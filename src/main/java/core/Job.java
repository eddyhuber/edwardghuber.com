package core;

import java.util.ArrayList;

public class Job {
    private String companyName;
    private String location;
    private String jobTitle;
    private String startDate;
    private String endDate;
    private ArrayList<String> jobDescriptions;

    public Job(String companyName, String location, String jobTitle, String startDate, String endDate, ArrayList<String> jobDescriptions) {
        this.companyName = companyName;
        this.location = location;
        this.jobTitle = jobTitle;
        this.startDate = startDate;
        this.endDate = endDate;
        this.jobDescriptions = jobDescriptions;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public ArrayList<String> getJobDescriptions() {
        return jobDescriptions;
    }

    public void setJobDescriptions(ArrayList<String> jobDescriptions) {
        this.jobDescriptions = jobDescriptions;
    }
}
