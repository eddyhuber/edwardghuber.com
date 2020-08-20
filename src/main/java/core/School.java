package core;

import java.util.LinkedHashMap;

public class School {
    private String schoolName;
    private String degreeType;
    private String degreeMajor;
    private String location;
    private String startDate;
    private String endDate;
    LinkedHashMap<String, LinkedHashMap<String, String>> semesters;

    public School(String schoolName, String degreeType, String degreeMajor, String location, String startDate, String endDate, LinkedHashMap<String, LinkedHashMap<String, String>> semesters) {
        this.schoolName = schoolName;
        this.degreeType = degreeType;
        this.degreeMajor = degreeMajor;
        this.location = location;
        this.startDate = startDate;
        this.endDate = endDate;
        this.semesters = semesters;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getDegreeType() {
        return degreeType;
    }

    public void setDegreeType(String degreeType) {
        this.degreeType = degreeType;
    }

    public String getDegreeMajor() {
        return degreeMajor;
    }

    public void setDegreeMajor(String degreeMajor) {
        this.degreeMajor = degreeMajor;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
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

    public LinkedHashMap<String, LinkedHashMap<String, String>> getSemesters() {
        return semesters;
    }

    public void setSemesters(LinkedHashMap<String, LinkedHashMap<String, String>> semesters) {
        this.semesters = semesters;
    }
}
