package com.javacto.action;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.javacto.po.User;
import com.javacto.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * liu
 **/
@Controller
@RequestMapping("/user")
public class UserAction {
    @Resource
    private UserService userService;

    @RequestMapping("/queryAll")
    public String queryAll(Model model,Integer pageNum){
        //第一次是没有值的
        if (pageNum == null) {
            pageNum = 1;
        }
        // pageNum  页码
        //pageSize 每页显示数量
        PageHelper.startPage(pageNum,2);
        //这个是查询的
        List<User> list = userService.queryAll();
        PageInfo<User> pageInfo = new PageInfo<>(list);
        model.addAttribute("list",pageInfo.getList());
        model.addAttribute("info",pageInfo);
        return "userList";
    }

    @RequestMapping("/goAdd")
    public String goAdd(){
        return "addUser";
    }

    @RequestMapping("/addUser")
    public String addUser(User user){
        userService.addUser(user);
        //添加成功后重定向到queryAll
        return "redirect:/rest/user/queryAll";
    }

    @RequestMapping("/deleteUser/{tid}")
    public String deleteUser(@PathVariable("tid") Integer tid) {
        userService.deleteUser(tid);
        return "redirect:/rest/user/queryAll";
    }

    @RequestMapping("/findById")
    public String findById(Model model,Integer tid) {
        User byId = userService.findById(tid);
        model.addAttribute("byId",byId);
        return "updateUser";
    }

    @RequestMapping("/updateUser")
    public String updateUser(User user) {
        userService.updateUser(user);
        return "redirect:/rest/user/queryAll";
    }
}
