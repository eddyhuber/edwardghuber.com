package action;

import com.opensymphony.xwork2.ActionSupport;
import core.Skill;
import database.dbDAO;

import java.sql.*;
import java.util.ArrayList;

public class SkillsAction extends ActionSupport {
    ArrayList<Skill> skillSet;


    public String execute() throws SQLException {
        String ret = ERROR;
        dbDAO dbSkills = new dbDAO();
        Connection conn = null;
        skillSet = new ArrayList<>();

        try {
            conn = dbSkills.openConnection("Skills");

            String sqlSkillText = "SELECT id, skillName, level, type, category FROM Proficiencies";
            sqlSkillText+= " ORDER BY category, type, level DESC";
            Statement skillStatement = conn.createStatement();

//            PreparedStatement ps = conn.prepareStatement(sqlText);
//            ps.setString(1, asdf);
//            ps.SetString(2, fdsa);
//            ResultSet rs = ps.executeQuery();

            ResultSet rsSkill = skillStatement.executeQuery(sqlSkillText);

            while (rsSkill.next()) {
                String skillName = rsSkill.getString("skillName");
                int level = rsSkill.getInt("level");
                String type = rsSkill.getString("type");
                String category = rsSkill.getString("category");

                skillSet.add(new Skill(skillName, level, type, category, 999));
                ret = SUCCESS;
            }

        } catch (SQLException sqle) {
            ret = ERROR;
        } finally {
            dbSkills.closeConnection(conn);
        }
        return ret;
    }

    public ArrayList<Skill> getSkillSet() {
        return skillSet;
    }

    public void setSkillSet(ArrayList<Skill> skillSet) {
        this.skillSet = skillSet;
    }
}
