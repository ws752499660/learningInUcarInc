package tk.quan9.javaweb.hanabisuki.entity;

import java.util.Date;

public class Log {
    private int id;
    private Date time;
    private int userId;
    private String type;
    private String target;
    private int spendTime;
    private String result;

    public Log() {
    }

    public Log(int id, Date time, int userId, String type, String target, int spendTime, String result) {
        this.id = id;
        this.time = time;
        this.userId = userId;
        this.type = type;
        this.target = target;
        this.spendTime = spendTime;
        this.result = result;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getSpendTime() {
        return spendTime;
    }

    public void setSpendTime(int spendTime) {
        this.spendTime = spendTime;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }
}
