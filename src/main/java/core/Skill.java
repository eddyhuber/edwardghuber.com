package core;

public class Skill {
    private String skillName;
    private int skillLevel;
    private String type;
    private String category;
    private int yearsExp;

    public Skill(String skillName, int skillLevel, String type, String category, int yearsExp) {
        this.skillName = skillName;
        this.skillLevel = skillLevel;
        this.type = type;
        this.category = category;
        this.yearsExp = yearsExp;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    public int getSkillLevel() {
        return skillLevel;
    }

    public void setSkillLevel(int skillLevel) {
        this.skillLevel = skillLevel;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getYearsExp() {
        return yearsExp;
    }

    public void setYearsExp(int yearsExp) {
        this.yearsExp = yearsExp;
    }
}
