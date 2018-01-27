package pdsu.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import pdsu.bean.User;
import pdsu.dao.UserDao;
import pdsu.dao.UserDaoImpl;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport implements SessionAware{
	private static final long SerialVersionUID=1L;
	private User user;
	private UserDao userDao=new UserDaoImpl();
	private Map<String, Object> session;
	//从页面获取参数
	private int sid;
	
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	//鎺ユ敹瀹㈡埛绔紶鏉ョ殑楠岃瘉鐮�
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public static long getSerialversionuid() {
		return SerialVersionUID;
	}
	
	public String IsExist(){
		UserDaoImpl udao=new UserDaoImpl();
		//从ajax获取文本框输入的值
		HttpServletRequest request=ServletActionContext.getRequest();
		String username=request.getParameter("uname");
		System.out.println(username);
		boolean bl=udao.isExist(username);
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		try {
			if(bl){//json数据传到ajax
				response.getWriter().write("{\"status\" : \"0\",\"key\":\"用户名已存在\"}");
			}else{
				response.getWriter().write("{\"status\":1,\"key\":\"用户名可用\"}");
			}
			return null;
			} catch (IOException e) {
					// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return null;
	}
	//娉ㄥ唽
	public String regist() throws Exception{ 
		UserDaoImpl udao=new UserDaoImpl();
		//从文本框取值并判断
		boolean bl=udao.isExist(user.getUsername());
		if(!bl){
			int i=udao.Register(user);
			if(i!=-1){
				return SUCCESS;
			}else{
				return ERROR;
			}
		}else{
			return ERROR;
		}
	}
	//登录验证
	public String login(){
		User checkUser=userDao.userLogin(user.getUsername(),user.getPassword());
		
		if(checkUser == null){
			return ERROR;
		}else{
			//获取img验证码
			String serverCode=(String) session.get("SESSION_SECURITY_CODE");
			HttpServletRequest request=ServletActionContext.getRequest();
			String securityCode=request.getParameter("securityCode");
			ActionContext ac=ActionContext.getContext();
			Map<String, Object> session=ac.getSession();
			if(checkUser.getStatus() == 1) {
				session.put("welcome", "管理员页面");
				return "admin";
			}else {
				if(checkUser.getStatus() == 0) {
					session.put("welcome", "用户页面");
					session.put("id", checkUser.getId());
					return "user";
				}
			}
			System.out.println(serverCode+"123"+securityCode);
			if(!securityCode.equals(serverCode)){
				return ERROR;
			}
//			ActionContext.getContext().put("username", user.getUsername());
//			ActionContext.getContext().put("tip", getText("success"));
//			serverCode=(String) session.get("SESSION_SECURITY_CODE");
//			System.out.println(serverCode);
//			return SUCCESS;
			return null;
		}
	}
	//鏍规嵁鐢ㄦ埛鍚嶆�у埆鏌ヨ
	public String findByUS(){
		UserDaoImpl ud=new UserDaoImpl();
		User u=ud.findUserByName(user.getUsername(), user.getSex());
		ActionContext.getContext().put("s_id",u.getId());
		ActionContext.getContext().put("s_name",u.getUsername());
		ActionContext.getContext().put("s_pwd",u.getPassword());
		ActionContext.getContext().put("s_sex", u.getSex());
		ActionContext.getContext().put("s_age",u.getAge());
		ActionContext.getContext().put("s_city",u.getCity());
		ActionContext.getContext().put("s_intersting",u.getIntersting());
		return SUCCESS;
	}
	public String Update(){
		UserDaoImpl ud=new UserDaoImpl();
		boolean bl=ud.Update(user);
		if(bl){
			ActionContext.getContext().put("s_name",user.getId());
			ActionContext.getContext().put("s_name",user.getUsername());
			ActionContext.getContext().put("s_pwd",user.getPassword());
			ActionContext.getContext().put("s_sex", user.getSex());
			ActionContext.getContext().put("s_age",user.getAge());
			ActionContext.getContext().put("s_city",user.getCity());
			ActionContext.getContext().put("s_intersting",user.getIntersting());
			return "update";
		}
		return ERROR;
	}
	public String delete(){
		UserDaoImpl ud=new UserDaoImpl();
		System.out.println(sid);
		boolean bl=ud.Delete(sid);
		if(bl){
			return "delete";
		}else{
			return "error";
		}
	}
	public String findAll(){
		UserDaoImpl ud=new UserDaoImpl();
		List<User> list=ud.findAll();
		ActionContext.getContext().put("list", list);
		return SUCCESS;
	}
	
	public String findUserById() {
		UserDaoImpl ud=new UserDaoImpl();
		ActionContext ac=ActionContext.getContext();
		Map<String, Object> session=ac.getSession();
		//登录成功后传入id
		User u=ud.findUserById((int) session.get("id"));
		ActionContext.getContext().put("id",u.getId());
		ActionContext.getContext().put("s_name",u.getUsername());
		ActionContext.getContext().put("s_pwd",u.getPassword());
		ActionContext.getContext().put("s_sex", u.getSex());
		ActionContext.getContext().put("s_age",u.getAge());
		ActionContext.getContext().put("s_city",u.getCity());
		ActionContext.getContext().put("s_intersting",u.getIntersting());
		return SUCCESS;
	}
}
