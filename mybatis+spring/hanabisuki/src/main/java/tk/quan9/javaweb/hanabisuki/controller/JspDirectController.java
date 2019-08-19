package tk.quan9.javaweb.hanabisuki.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

@Controller
public class JspDirectController {
    @RequestMapping(method = RequestMethod.GET,value = {"/redirectJsp/{path}"})
    public String jspRedirect(@PathVariable String path){
        return path;
    }
}