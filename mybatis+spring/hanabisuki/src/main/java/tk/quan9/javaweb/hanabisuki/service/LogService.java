package tk.quan9.javaweb.hanabisuki.service;

import tk.quan9.javaweb.hanabisuki.entity.Log;

import java.util.List;

public interface LogService {
    public void insertLog(Log log);
    public List<Log> getLogListByTypeAndTarget(String type,String target);
}
