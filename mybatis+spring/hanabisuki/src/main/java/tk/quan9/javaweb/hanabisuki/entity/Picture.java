package tk.quan9.javaweb.hanabisuki.entity;

public class Picture {
    private int id;
    private String path;
    private int userId;
    private String fileName;

    public Picture(int id, String path, int userId, String fileName) {
        this.id = id;
        this.path = path;
        this.userId = userId;
        this.fileName = fileName;
    }

    public Picture() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
}
