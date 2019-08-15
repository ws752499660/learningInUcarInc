package tk.quan9.javaweb.hanabisuki.entity;


public class Role {
    private String roleName;
    private String rights;

    public Role() {
    }

    public Role(String roleName, String rights) {
        this.roleName = roleName;
        this.rights = rights;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRights() {
        return rights;
    }

    public void setRights(String rights) {
        this.rights = rights;
    }
}
