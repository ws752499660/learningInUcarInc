package hanabiMVC.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JspDirectController {
    @RequestMapping(method = RequestMethod.GET,value = {"/redirectJsp/{path}"})
    public String jspRedirect(@PathVariable String path){
        return path;
    }
}
