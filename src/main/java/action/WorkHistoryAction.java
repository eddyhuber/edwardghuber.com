package action;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import com.opensymphony.xwork2.ActionSupport;
import core.Job;
import database.dbDAO;

public class WorkHistoryAction extends ActionSupport {
    ArrayList<Job> workHistory;
    boolean ITOnly;
    private final SimpleDateFormat MMMyyyyWithSpace = new SimpleDateFormat("MMM yyyy");
    String ret;

    public String execute(boolean ITOnly) {
        workHistory = new ArrayList<>();
        ret = ERROR;
        dbDAO dbJobs = new dbDAO();
        String dbSchema = "WorkHistory";

        String[] workSelectList = {"id", "companyName", "location", "jobTitle", "startDate", "endDate"};
        String workExtra = "";
        if (ITOnly) {
            workExtra+= "WHERE isIT = true ";
        }
        workExtra+= "ORDER BY id DESC";

//        String sqlJobDescText = "SELECT description FROM JobDescriptions";
//        sqlJobDescText += " WHERE jobID = ?";
//        PreparedStatement psJobDesc = conn.prepareStatement(sqlJobDescText);

        try {
            ResultSet rsJobs = dbJobs.createRunSelectQuery(dbSchema, "Jobs", workSelectList, workExtra);
            while (rsJobs.next()) {
                int jobID = rsJobs.getInt("id");
                String companyName = rsJobs.getString("companyName");
                String location = rsJobs.getString("location");
                String jobTitle = rsJobs.getString("jobTitle");
                Date startDate = rsJobs.getDate("startDate");
                Date endDate = rsJobs.getDate("endDate");
//                psJobDesc.setString(1, rsJob.getString("id"));

                String sdFormatted = MMMyyyyWithSpace.format(startDate);
                String edFormatted = (endDate == null) ? "Present" : MMMyyyyWithSpace.format(endDate);

                // For each Job, grab Descriptions
                String[] descSelectList = {"description"};
                String descExtra = "WHERE jobID = " + jobID;
                ArrayList<String> descriptions = new ArrayList<>();

                ResultSet rsDesc = dbJobs.createRunSelectQuery(dbSchema, "JobDescriptions", descSelectList, descExtra);
                while (rsDesc.next()) {
                    String description = rsDesc.getString("description");
                    descriptions.add(description);
                }

                workHistory.add(new Job(companyName, location, jobTitle, sdFormatted, edFormatted, descriptions));
                ret = SUCCESS;
            }

        } catch (SQLException sqle) {
            ret = ERROR;
        }
        return ret;
    }

    public String allWorkHistory() {
        ret = execute(false);
        return ret;
    }

    public String allITHistory() {
        ret = execute(true);
        return ret;
    }

    public ArrayList<Job> getWorkHistory() {
        return workHistory;
    }

    public void setWorkHistory(ArrayList<Job> workHistory) {
        this.workHistory = workHistory;
    }

    public boolean getITOnly() { return ITOnly; }

    public void setITOnly(boolean ITOnly) { this.ITOnly = ITOnly; }

}
