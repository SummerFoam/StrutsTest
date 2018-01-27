package pdsu.validate.action;

import java.io.ByteArrayInputStream;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pdsu.validate.SecurityCode.SecurityCode;
import pdsu.validate.SecurityImage.SecurityImage;


import com.opensymphony.xwork2.ActionSupport;

/*
 * 提供图片验证码
 */
@SuppressWarnings("serial")
public class SecurityCodeImageAction extends ActionSupport implements SessionAware{
	private Map<String,Object> session;
	//图片流
	private ByteArrayInputStream imageStream;
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public ByteArrayInputStream getImageStream() {
		return imageStream;
	}
	public void setImageStream(ByteArrayInputStream imageStream) {
		this.imageStream = imageStream;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		//如果开启Hard模式，可以不区分大小写
		//String securityCode=SecurityCode.getSecurityCode();
		//获取默认难度和长度的验证码
		String securityCode=SecurityCode.getSecurityCode();
		imageStream=SecurityImage.getImageAsInputStream(securityCode);
		//放入session中
		session.put("SESSION_SECURITY_CODE", securityCode);
		return SUCCESS;
	}
}
