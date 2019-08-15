package tk.quan9.javaweb.hanabisuki.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tk.quan9.javaweb.hanabisuki.entity.Log;
import tk.quan9.javaweb.hanabisuki.repository.LogRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LogController {
    @Autowired
    private LogRepository logRepository;

    @RequestMapping(method = RequestMethod.GET,value = {"/log"})
    public String getLogPage(){
        return "log";
    }

    @RequestMapping(method = RequestMethod.POST,value = {"/getLog"})
    public String getLog(HttpServletRequest request){
        HttpSession session=request.getSession();
        String type=request.getParameter("type");
        String target=request.getParameter("target");
        List<Log> logList=logRepository.getLogListByTypeAndTarget(type,target);
        session.setAttribute("logList",logList);
        return "log";
    }
}
