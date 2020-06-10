package com.edwardghuber.action;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;
import com.edwardghuber.core.Job;
import com.edwardghuber.db.dbDAO;

public class ITHistoryAction extends ActionSupport {
    private ArrayList<Job> workHistory;
//    private String companyName = "";
//    private String location = "";
//    private String jobTitle = "";
    private final SimpleDateFormat MMMyyyyWithSpace = new SimpleDateFormat("MMM yyyy");


    public String execute() throws SQLException{
        String ret = ERROR;
        dbDAO dbWorkHistory = new dbDAO();
        Connection conn = null;
        workHistory = new ArrayList<>();

        try {
            conn = dbWorkHistory.openConnection("WorkHistory");

            String sqlJobText = "SELECT id, companyName, location, jobTitle, startDate, endDate FROM Jobs";
            sqlJobText+= " WHERE isIT = 1";
            sqlJobText+= " ORDER BY id DESC";
            Statement jobStatement = conn.createStatement();

            String sqlJobDescText = "SELECT description FROM JobDescriptions";
            sqlJobDescText += " WHERE jobID = ?";
            PreparedStatement psJobDesc = conn.prepareStatement(sqlJobDescText);


//            PreparedStatement ps = conn.prepareStatement(sqlText);
//            ps.setString(1, asdf);
//            ps.SetString(2, fdsa);
//            ResultSet rs = ps.executeQuery();

            ResultSet rsJob = jobStatement.executeQuery(sqlJobText);

            while (rsJob.next()) {
                String companyName = rsJob.getString("companyName");
                String location = rsJob.getString("location");
                String jobTitle = rsJob.getString("jobTitle");
                Date startDate = rsJob.getDate("startDate");
                Date endDate = rsJob.getDate("endDate");
                psJobDesc.setString(1, rsJob.getString("id"));

                String sdFormatted = MMMyyyyWithSpace.format(startDate);
                String edFormatted = (endDate == null) ? "Present" : MMMyyyyWithSpace.format(endDate);


                ArrayList<String> descriptions = new ArrayList<>();
                ResultSet rsDesc = psJobDesc.executeQuery();
                while (rsDesc.next()) {
                    String description = rsDesc.getString("description");
                    descriptions.add(description);
                }

                workHistory.add(new Job(companyName, location, jobTitle, sdFormatted, edFormatted, descriptions));
                ret = SUCCESS;
            }

        } catch (SQLException sqle) {
            ret = ERROR;
        } finally {
            dbWorkHistory.closeConnection(conn);
        }
        return ret;
    }

    public ArrayList<Job> getWorkHistory() {
        return workHistory;
    }

    public void setWorkHistory(ArrayList<Job> workHistory) {
        this.workHistory = workHistory;
    }

//    public String getCompanyName() {
//        return companyName;
//    }
//
//    public void setCompanyName(String companyName) {
//        this.companyName = companyName;
//    }
//
//    public String getLocation() {
//        return location;
//    }
//
//    public void setLocation(String location) {
//        this.location = location;
//    }
//
//    public String getJobTitle() {
//        return jobTitle;
//    }
//
//    public void setJobTitle(String jobTitle) {
//        this.jobTitle = jobTitle;
//    }
}