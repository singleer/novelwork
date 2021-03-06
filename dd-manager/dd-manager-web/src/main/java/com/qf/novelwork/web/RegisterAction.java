package com.qf.novelwork.web;

import com.qf.novel.pojo.po.NReader;
import com.qf.novel.service.ReaderService;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by ${lxh} on 2017/11/16 0016
 */
@Controller
@Scope("prototype")
public class RegisterAction {

    @Autowired
    private ReaderService readerService;

    private static String Url = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";

    @ResponseBody
    @RequestMapping("sendMess")
    public String sendMessage(@RequestParam String phone){

        HttpClient client = new HttpClient();
        PostMethod method = new PostMethod(Url);

        client.getParams().setContentCharset("GBK");
        method.setRequestHeader("ContentType","application/x-www-form-urlencoded;charset=GBK");

        int mobile_code = (int)((Math.random()*9+1)*100000);

        String content = new String("您的验证码是：" + mobile_code + "。请不要把验证码泄露给其他人。");

        NameValuePair[] data = {//提交短信
                new NameValuePair("account", "C69210135"), //查看用户名是登录用户中心->验证码短信->产品总览->APIID
                new NameValuePair("password", "7b829f4007211f9048292ea3cbc51b6a"),  //查看密码请登录用户中心->验证码短信->产品总览->APIKEY
                //new NameValuePair("password", util.StringUtil.MD5Encode("密码")),
                new NameValuePair("mobile", phone),
                new NameValuePair("content", content),
        };
        method.setRequestBody(data);

        try {
            client.executeMethod(method);

            String SubmitResult =method.getResponseBodyAsString();

            //System.out.println(SubmitResult);

            Document doc = DocumentHelper.parseText(SubmitResult);
            Element root = doc.getRootElement();

            String code = root.elementText("code");
            String msg = root.elementText("msg");
            String smsid = root.elementText("smsid");

            System.out.println(code);
            System.out.println(msg);
            System.out.println(smsid);

            if("2".equals(code)){
                System.out.println("短信提交成功");
            }

        } catch (HttpException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (DocumentException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        String s = mobile_code+"";

        return s;
    }

    @ResponseBody
    @RequestMapping("/checkcode")
    public String ajaxCheckCode(String code , HttpServletRequest request){
        //获取验证码
        String code1 = (String)request.getSession().getAttribute("checkcode_session");
        String code_ = code;
        //System.out.println(code1+"````"+code_);

        if(!code1.equals(code_)){
            return "0";
        }else{
            return "1";
        }


    }

    @RequestMapping("/readerZhuce")
    public String webReaderSave(NReader reader,Model model){
        int i=0;
        try {
            i=readerService.addReader(reader,model);
        }catch (Exception e){
            e.printStackTrace();
        }
        if(i>0){
            return "zhucesuccess";
        }
        else {
            return "false";
        }
    }
}
