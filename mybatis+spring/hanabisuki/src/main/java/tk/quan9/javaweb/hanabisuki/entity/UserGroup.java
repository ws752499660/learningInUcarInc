package tk.quan9.javaweb.hanabisuki.entity;

public class UserGroup {
    private int id;
    private String groupName;
    private String type;

    public UserGroup() {
    }

    public UserGroup(int id, String groupName, String type) {
        this.id = id;
        this.groupName = groupName;
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
