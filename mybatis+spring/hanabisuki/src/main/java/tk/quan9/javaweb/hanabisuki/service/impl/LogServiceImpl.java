package tk.quan9.javaweb.hanabisuki.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.quan9.javaweb.hanabisuki.entity.Log;
import tk.quan9.javaweb.hanabisuki.repository.LogRepository;
import tk.quan9.javaweb.hanabisuki.service.LogService;

import java.util.List;

@Service
public class LogServiceImpl implements LogService {
    @Autowired
    private LogRepository logRepository;

    @Override
    public void insertLog(Log log) {
        logRepository.insertLog(log);
    }

    @Override
    public List<Log> getLogListByTypeAndTarget(String type, String target) {
        return logRepository.getLogListByTypeAndTarget(type,target);
    }
}
