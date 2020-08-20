package action;

import com.opensymphony.xwork2.ActionSupport;
import core.School;
import database.dbDAO;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedHashMap;

public class EducationAction extends ActionSupport {
    ArrayList<School> schools;
    String ret;
    private final SimpleDateFormat MMMyyyyWithSpace = new SimpleDateFormat("MMM yyyy");

    public String execute() {
        schools = new ArrayList<>();
        ret = ERROR;
        dbDAO dbEdu = new dbDAO();
        String dbSchema = "Education";

        // Grab schools
        String[] schoolSelectList = {"id", "schoolName", "degreeType", "degreeMajor", "location", "startDate", "endDate"};
        String schoolExtra = "ORDER BY startDate DESC";

        try {
            ResultSet rsSchools = dbEdu.createRunSelectQuery(dbEdu, dbSchema, "Schools", schoolSelectList, schoolExtra);
            while (rsSchools.next()) {
                int schoolID = rsSchools.getInt("id");
                String schoolName = rsSchools.getString("schoolName");
                String degreeType = rsSchools.getString("degreeType");
                String degreeMajor = rsSchools.getString("degreeMajor");
                String location = rsSchools.getString("location");
                Date startDate = rsSchools.getDate("startDate");
                Date endDate = rsSchools.getDate("endDate");

                String sdFormatted = MMMyyyyWithSpace.format(startDate);
                String edFormatted = (endDate == null) ? "Present" : MMMyyyyWithSpace.format(endDate);

                // For each school, get semesters
                String[] semesterSelectList = {"distinct(semesterNbr)", "semesterName", "semesterYear"};
                String semesterExtra = "WHERE schoolID = " + schoolID + " ORDER BY semesterNbr DESC";
                LinkedHashMap<String, LinkedHashMap<String, String>> semesters = new LinkedHashMap<>();

                ResultSet rsSemesters = dbEdu.createRunSelectQuery(dbEdu, dbSchema, "Courses", semesterSelectList, semesterExtra);
                while (rsSemesters.next()) {
                    int semesterID = rsSemesters.getInt("semesterNbr");
                    String semesterName = rsSemesters.getString("semesterName");
                    int semesterYear = rsSemesters.getInt("semesterYear");

                    String semester = semesterName + " " + semesterYear;

                    // For each semester, grab course list
                    String[] courseSelectList = {"category", "number", "courseName", "description"};
                    String courseExtra = "WHERE schoolID = " + schoolID + " AND semesterNbr = " + semesterID + " ORDER BY category, number DESC";
                    LinkedHashMap<String, String> courses = new LinkedHashMap<>();

                    ResultSet rsCourses = dbEdu.createRunSelectQuery(dbEdu, dbSchema, "Courses", courseSelectList, courseExtra);
                    while (rsCourses.next()) {
                        String category = rsCourses.getString("category");
                        int number = rsCourses.getInt("number");
                        String courseName = rsCourses.getString("courseName");
                        String description = rsCourses.getString("description");

                        String courseTitle = category + " " + number;
                        if (description != null) {
                            courseName += " - " + description;
                        }
                        courses.put(courseTitle, courseName);
                    }
                    semesters.put(semester, courses);
                }

                schools.add(new School(schoolName, degreeType, degreeMajor, location, sdFormatted, edFormatted, semesters));
                ret = SUCCESS;
            }

        } catch (SQLException sqle) {
            ret = ERROR;
        }
        return ret;
    }

    public ArrayList<School> getSchools() {
        return schools;
    }

    public void setSchools(ArrayList<School> schools) {
        this.schools = schools;
    }
}
