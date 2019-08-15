package tk.quan9.javaweb.hanabisuki.controller;

import com.sun.deploy.net.HttpResponse;
import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tk.quan9.javaweb.hanabisuki.entity.Comment;
import tk.quan9.javaweb.hanabisuki.entity.Role;
import tk.quan9.javaweb.hanabisuki.entity.User;
import tk.quan9.javaweb.hanabisuki.entity.UserGroup;
import tk.quan9.javaweb.hanabisuki.service.CommentService;
import tk.quan9.javaweb.hanabisuki.service.RightsCheck;
import tk.quan9.javaweb.hanabisuki.service.UserGroupService;
import tk.quan9.javaweb.hanabisuki.service.UserService;
import tk.quan9.javaweb.hanabisuki.service.impl.Security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private RightsCheck rightsCheck;
    @Autowired
    private CommentService commentService;
    @Autowired
    private UserGroupService userGroupService;


    private void redirect(String url, HttpServletResponse response){
        try {
            response.sendRedirect(url);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @RequestMapping(method = RequestMethod.GET,value = {"/UserGetter"})
    public String userGetter(HttpSession session){
        List<User> userList=(List)session.getAttribute("userList");
        for (User user:userList) {
            user.setCommentCounts(userService.getCommentCount(user.getId()));
        }
        session.setAttribute("userList",userList);
        session.setAttribute("userGroupService",userGroupService);
        return "userinfo";
    }

    @RequestMapping(method = RequestMethod.GET,value = {"/userProfileProducer"})
    public String userProfileProducer(HttpSession session, HttpServletRequest request){
        return "userprofile";
    }

    @RequestMapping(method = RequestMethod.POST,value = {"/userProfileEditor"})
    public void userProfileEditor(HttpSession session,
                                    HttpServletRequest request,HttpServletResponse response){
        userService.updateUser(request,session);
        redirect("/UserGetter",response);
    }

    @RequestMapping(method = RequestMethod.POST,value = {"/searchByUser"})
    public String searchByUser(HttpSession session,HttpServletRequest request){
        int userId=Integer.parseInt(request.getParameter("commentUserId"));
        List<Comment> commentList=commentService.getCommentListByUserId(userId);
        session.setAttribute("commentListByUser",commentList);
        return "search";
    }

    @RequestMapping(method = RequestMethod.GET,value = {"/rightsControl"})
    public String rightsControl(HttpSession session){
        List<UserGroup> groupList=userGroupService.getAllUserGroup();
        List<Role> roleList=rightsCheck.getAllRoles();
        session.setAttribute("groupList",groupList);
        session.setAttribute("roleList",roleList);
        return "rightsControl";
    }

    @RequestMapping(method = RequestMethod.POST,value = {"/changeGroup"})
    public String changeGroup(HttpSession session,
                            HttpServletRequest request,HttpServletResponse response){
        String groupId=request.getParameter("newGroupId");
        groupId= StringEscapeUtils.escapeHtml4(groupId);
        User user=(User)session.getAttribute("rcUser");
        if(user!=null) {
            userService.updateGroup(user.getId(),Integer.parseInt(groupId));
        }
        session.setAttribute("rcUser",null);
        session.setAttribute("rsWarning","操作成功");
        return "rightsControl";
    }

    @RequestMapping(method = RequestMethod.POST,value = {"/changeRole"})
    public String changeRole(HttpSession session,
                             HttpServletRequest request, HttpServletResponse response){
        String roleName=request.getParameter("roleName");
        roleName= StringEscapeUtils.escapeHtml4(roleName);
        User user=(User)session.getAttribute("rcUser");
        if(user!=null) {
            userService.updateRole(user.getId(),roleName);
        }
        session.setAttribute("rcUser",null);
        session.setAttribute("rsWarning","操作成功");
        return "rightsControl";
    }
}
