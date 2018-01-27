package pdsu.validate.action;

import java.io.ByteArrayInputStream;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pdsu.validate.SecurityCode.SecurityCode;
import pdsu.validate.SecurityImage.SecurityImage;


import com.opensymphony.xwork2.ActionSupport;

/*
 * �ṩͼƬ��֤��
 */
@SuppressWarnings("serial")
public class SecurityCodeImageAction extends ActionSupport implements SessionAware{
	private Map<String,Object> session;
	//ͼƬ��
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
		//�������Hardģʽ�����Բ����ִ�Сд
		//String securityCode=SecurityCode.getSecurityCode();
		//��ȡĬ���ѶȺͳ��ȵ���֤��
		String securityCode=SecurityCode.getSecurityCode();
		imageStream=SecurityImage.getImageAsInputStream(securityCode);
		//����session��
		session.put("SESSION_SECURITY_CODE", securityCode);
		return SUCCESS;
	}
}
