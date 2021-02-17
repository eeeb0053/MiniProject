package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
@SessionAttributes({"ctx","bkg","cmm", "uss"})
public class HomeController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired HttpSession session;
	@Autowired HttpServletRequest request;

    @GetMapping("/")
    public String index(HttpSession session, HttpServletRequest request) {
    	String ctx = request.getContextPath();
    	session.setAttribute("ctx", ctx);
    	session.setAttribute("bkg", session.getAttribute("ctx")+"/resources/bkg");
    	session.setAttribute("uss", session.getAttribute("ctx")+"/resources/uss");
    	session.setAttribute("cmm", session.getAttribute("ctx")+"/resources/cmm");
        logger.info("Hello. This is LogManager's logger");
        return "index";
    }
    @GetMapping("/move/uss/{page}")
    public String moveUss(@PathVariable String page){
        logger.info("이동경로>>> uss/"+page);
        return String.format("uss:%s", page);
    }
    @GetMapping("/move/bkg/{page}")
    public String moveBkg(@PathVariable String page){
        logger.info("이동경로>>> bkg/"+page);
        return String.format("bkg:%s", page);
    }
}
