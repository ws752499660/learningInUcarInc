package tk.quan9.javaweb.hanabisuki.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import tk.quan9.javaweb.hanabisuki.entity.Log;

import java.lang.annotation.Target;
import java.util.List;

@Repository
@Mapper
public interface LogRepository {
    public void insertLog(Log log);
    public List<Log> getLogListByTypeAndTarget(String type,String target);
}
