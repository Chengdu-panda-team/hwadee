package MaozaiTea.controller;

import MaozaiTea.pojo.MailUtil;
import MaozaiTea.pojo.SendMailThread;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import java.util.Properties;

@Controller
@RequestMapping(value = "/about")
public class AboutController{

    @RequestMapping(value = "/send")
    public String sendJoinText(@RequestParam("Name") String name, @RequestParam("Tel") String tel, @RequestParam("Region") String region, @RequestParam("Question") String question, @RequestParam("Mail") String mail){
        String text = "姓名：" + name + "\n" + "电话：" + tel + "\n" + "加盟地区：" + region + "\n" + "咨询内容：" + question;
        String[] texts = {text, "我们已经收到您的加盟信息，请等待通知！"};
        String[] mails = {"2364100979@qq.com", mail};
        SendMailThread sendMailThread = new SendMailThread(texts, mails);
        Thread thread = new Thread(sendMailThread, "sendMailThread1");
        thread.start();
        return "aboutour";
    }

    @RequestMapping(value = "/sendCustomerText")
    public String sendCustomerText(@RequestParam("flavor") String flavor, @RequestParam("outlook") String outlook, @RequestParam("service") String service, @RequestParam("feedback") String feedback) {
        String text = "口感打分：" + flavor + "\n" + "外观打分：" + outlook + "\n" + "服务打分：" + service + "\n" + "反馈：" + feedback;
        String[] texts = {text};
        String[] mails = {"2364100979@qq.com"};
        SendMailThread sendMailThread = new SendMailThread(texts, mails);
        Thread thread = new Thread(sendMailThread, "sendMailThread1");
        thread.start();
        return "aboutour";
    }


}
