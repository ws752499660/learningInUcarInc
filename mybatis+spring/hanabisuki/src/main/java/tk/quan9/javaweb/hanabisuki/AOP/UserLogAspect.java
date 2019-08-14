package tk.quan9.javaweb.hanabisuki.AOP;


import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import tk.quan9.javaweb.hanabisuki.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Aspect
@Component
public class UserLogAspect {

    private User getLoginUser(){
        ServletRequestAttributes attributes=(ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request=attributes.getRequest();
        HttpSession session=request.getSession();
        return (User) session.getAttribute("LoginUser");
    }

    private String timeNow(){
        Date date=new Date();
        return date.toString();
    }

    private Object logging(ProceedingJoinPoint joinPoint,String type) throws Throwable{
        User user=getLoginUser();
        String re;
        System.out.print(timeNow()+"    ");
        try {
            long start = System.currentTimeMillis();
            Object proceed = joinPoint.proceed();
            long runTime = System.currentTimeMillis() - start;
            re="【"+type+"·成功】用户Id："+user.getId()+"  用时 " + runTime + "ms";
            System.out.println(re);
            return proceed;
        }catch (Exception e){
            re="【"+type+"·失败】用户Id："+user.getId();
            System.out.println(re);
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

    @Pointcut("this(tk.quan9.javaweb.hanabisuki.service.CommentService) " +
            "&& execution(* *..get*(..))")
    public void commentGetService(){
    }

    @Pointcut("this(tk.quan9.javaweb.hanabisuki.service.CommentService) " +
            "&& execution(* *..update*(..))")
    public void commentUpdateService(){
    }

    @Around("commentInsertService()")
    public Object commentInsetLog(ProceedingJoinPoint joinPoint) throws Throwable{
        return logging(joinPoint,"评论增加");
    }

    @Around("commentDeleteService()")
    public Object commentDeleteLog(ProceedingJoinPoint joinPoint) throws Throwable{
        return logging(joinPoint,"评论删除");
    }

    @Around("commentGetService()")
    public Object commentGetLog(ProceedingJoinPoint joinPoint) throws Throwable{
        return logging(joinPoint,"评论查询");
    }

    @Around("commentUpdateService()")
    public Object commentUpdateLog(ProceedingJoinPoint joinPoint) throws Throwable{
        return logging(joinPoint,"评论更新");
    }
}
