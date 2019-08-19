package tk.quan9.javaweb.hanabisuki.controller;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import tk.quan9.javaweb.hanabisuki.entity.*;
import tk.quan9.javaweb.hanabisuki.service.*;

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
    @Autowired
    private PictureService pictureService;


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
            //默认pictureId就是0（不存在时）
            String pictureName=pictureService.getNameById(user.getPictureId());
            user.setPictureName("picture/"+pictureName);
        }
        session.setAttribute("userList",userList);
        session.setAttribute("userGroupService",userGroupService);
        return "userinfo";
    }

    @RequestMapping(method = RequestMethod.GET,value = {"/userProfileProducer"})
    public String userProfileProducer(HttpSession session, HttpServletRequest request){
        List<Picture> pictureList=pictureService.getAllPictures();
        User user=(User)session.getAttribute("userForProfile");
        user.setPictureName(pictureService.getNameById(user.getPictureId()));
        session.setAttribute("userForProfile",user);
        session.setAttribute("pictureList",pictureList);
        return "userprofile";
    }

    @RequestMapping(method = RequestMethod.POST,value = {"/userProfileEditor"})
    public void userProfileEditor(MultipartFile picture,HttpSession session,
                                    HttpServletRequest request,HttpServletResponse response){
        User user=(User)session.getAttribute("userForProfile");
        if(user!=null) {
            if (!picture.isEmpty()) {
                pictureService.upload(picture, user);
            }else {
                int pictureId=Integer.parseInt(request.getParameter("newPicture"));
                user.setPictureId(pictureId);
            }
        }
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
        User user=(User)session.getAttribute("rcUser");
        String roleName=request.getParameter("roleName");
        roleName= StringEscapeUtils.escapeHtml4(roleName);

        if(user!=null) {
            userService.updateRole(user.getId(),roleName);
        }
        session.setAttribute("rcUser",null);
        session.setAttribute("rsWarning","操作成功");
        return "rightsControl";
    }
}
