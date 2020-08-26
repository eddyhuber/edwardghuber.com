package action;

import com.opensymphony.xwork2.ActionSupport;
import core.Skill;
import database.dbDAO;

import java.sql.*;
import java.util.ArrayList;

public class SkillsAction extends ActionSupport {
    ArrayList<Skill> skillSet;
    String ret;

    public String execute() {
        skillSet = new ArrayList<>();
        ret = ERROR;
        dbDAO dbSkills = new dbDAO();
        String dbSchema = "Skills";

        String[] skillSelectList = {"id", "skillName", "level", "type", "category"};
        String skillExtra = "ORDER BY category, type, level DESC";

        try {
            ResultSet rsSkills = dbSkills.createRunSelectQuery(dbSchema, "Proficiencies", skillSelectList, skillExtra);
            while (rsSkills.next()) {
                String skillName = rsSkills.getString("skillName");
                int level = rsSkills.getInt("level");
                String type = rsSkills.getString("type");
                String category = rsSkills.getString("category");

                skillSet.add(new Skill(skillName, level, type, category)); //, 999));
                ret = SUCCESS;
            }

        } catch (SQLException sqle) {
            ret = ERROR;
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
