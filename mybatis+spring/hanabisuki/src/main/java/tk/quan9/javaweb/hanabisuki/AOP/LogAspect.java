package tk.quan9.javaweb.hanabisuki.AOP;


import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import tk.quan9.javaweb.hanabisuki.entity.Log;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.service.LogService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Aspect
@Component
public class LogAspect {
    @Autowired
    LogService logService;


    private User getLoginUser(){
        ServletRequestAttributes attributes=(ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request=attributes.getRequest();
        HttpSession session=request.getSession();
        return (User) session.getAttribute("LoginUser");
    }

    private Date timeNow(){
        Date date=new Date();
        return date;
    }

    private Object logging(ProceedingJoinPoint joinPoint,String type,String target) throws Throwable{
        User user=getLoginUser();
        if(user==null){
            return joinPoint.proceed();
        }
        Log log=new Log();
        String re;

        log.setUserId(user.getId());
        log.setTime(timeNow());
        log.setType(type);
        log.setTarget(target);
        try {
            long start = System.currentTimeMillis();
            Object proceed = joinPoint.proceed();
            long runTime = System.currentTimeMillis() - start;

            log.setResult("success");
            log.setSpendTime(Integer.parseInt(String.valueOf(runTime)));

            re="【"+type+" "+target+"·成功】用户Id："+user.getId()+"  用时 " + runTime + "ms";
            System.out.println(re);
            logService.insertLog(log);
            return proceed;
        }catch (Exception e){
            log.setResult("fail");
            re="【"+type+" "+target+"·失败】用户Id："+user.getId();
            System.out.println(re);
            logService.insertLog(log);
        }
        return null;
    }

    @Pointcut("this(tk.quan9.javaweb.hanabisuki.service.CommentService) " +
            "&& execution(* *..insert*(..))")
    public void commentInsertService(){
    }

    @Pointcut("this(tk.quan9.javaweb.hanabisuki.service.CommentService) " +
            "&& execution(* *..delete*(..))")
    public void commentDeleteService(){
    }

    @Pointcut("this(tk.quan9.javaweb.hanabisuki.service.CommentService)"+
            "&& execution(* *..get*(..))")
    public void commentGetService(){
    }

    @Pointcut("this(tk.quan9.javaweb.hanabisuki.service.CommentService) " +
            "&& execution(* *..update*(..))")
    public void commentUpdateService(){
    }

    @Pointcut("this(tk.quan9.javaweb.hanabisuki.service.UserService)" +
            "&& execution(* *..get*(..))")
    public void userGetService(){
    }

    @Pointcut("this(tk.quan9.javaweb.hanabisuki.service.UserService)" +
            "&& execution(* *..update*(..))")
    public void userUpdateService(){
    }

    @Pointcut("(this(tk.quan9.javaweb.hanabisuki.service.RightsCheck) || " +
            "this(tk.quan9.javaweb.hanabisuki.service.UserGroupService)) &&" +
            "execution(* *..get*(..))")
    public void rightsOrGroupGetService(){
    }

    @Around("commentInsertService()")
    public Object commentInsetLog(ProceedingJoinPoint joinPoint) throws Throwable{
        return logging(joinPoint,"Insert","Comment");
    }

    @Around("commentDeleteService()")
    public Object commentDeleteLog(ProceedingJoinPoint joinPoint) throws Throwable{
        return logging(joinPoint,"Delete","Comment");
    }

    @Around("commentGetService()")
    public Object commentGetLog(ProceedingJoinPoint joinPoint) throws Throwable{
        return logging(joinPoint,"Select ","Comment");
    }

    @Around("commentUpdateService()")
    public Object commentUpdateLog(ProceedingJoinPoint joinPoint) throws Throwable{
        return logging(joinPoint,"Update","Comment");
    }

    @Around("userGetService()")
    public Object userGetLog(ProceedingJoinPoint joinPoint) throws Throwable{
        return logging(joinPoint,"Select","User");
    }

    @Around("userUpdateService()")
    public Object userUpdateLog(ProceedingJoinPoint joinPoint) throws Throwable{
        return logging(joinPoint,"Update","User");
    }

    @Around("rightsOrGroupGetService()")
    public Object rightsOrGroupGetLog(ProceedingJoinPoint joinPoint) throws Throwable{
        return logging(joinPoint,"Select","Rights or Group");
    }
}
