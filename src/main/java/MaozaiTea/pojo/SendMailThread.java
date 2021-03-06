package MaozaiTea.pojo;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import java.util.Properties;

public class SendMailThread implements Runnable{
    private static String myEmailAccount = "2364100979@qq.com";
    private static String myEmailPassword = "xylriqzndtebeaha";
    private String texts[];
    private String mails[];

    public SendMailThread(String[] texts, String[] mails) {
        this.texts = texts;
        this.mails = mails;
    }

    public void sendMail(Transport transport, Session session, String text, String receiveMail) throws Exception {
        Message message = MailUtil.createMimeMessage(session, text, receiveMail);
        transport.sendMessage(message, message.getAllRecipients());
    }

    public void run() {
        Properties props = new Properties();                    // 参数配置
        props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
        // 发件人邮箱的 SMTP 服务器地址, 必须准确, 不同邮件服务器地址不同, 一般(只是一般, 绝非绝对)格式为: smtp.xxx.com
        // 网易126邮箱的 SMTP 服务器地址为: smtp.126.com
        String myEmailSMTPHost = "smtp.qq.com";
        props.setProperty("mail.smtp.host", myEmailSMTPHost);   // 发件人的邮箱的 SMTP 服务器地址
        props.setProperty("mail.smtp.port", "465");
        props.setProperty("mail.smtp.socketFactory.port", "465");
        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.setProperty("mail.smtp.auth", "true");

        Session session = Session.getInstance(props);
        // 设置为debug模式, 可以查看详细的发送 log
        session.setDebug(true);

        try {
            Transport transport = session.getTransport();
            transport.connect(myEmailAccount, myEmailPassword);
            for (int i = 0; i < texts.length; ++i) {
                sendMail(transport, session, texts[i], mails[i]);
            }
            transport.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
