package pdsu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pdsu.bean.User;
import pdsu.util.HibernateUtil;

public class UserDaoImpl implements UserDao{

	@Override
	public User userLogin(String username, String password) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction trans=null;
		User user=new User();
		try {
			trans=session.beginTransaction();
			String sql="from User where username=:n and password=:p";
			Query query=session.createQuery(sql);
			query.setString("n", username);
			query.setString("p", password);
			List<User> list=query.list();
			for(User u:list){
				return u;
			}
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null && session.isOpen()) {
				//session鏈川灏辨槸jdbc鐨刢onnection
				session.close();
			}
		}
		return user;
	}
//娣诲姞
	@Override
	public int Register(User user) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction trans=null;
		int i=-1;
		try {
			trans=session.beginTransaction();
			session.save(user);
			trans.commit(); 
			i=1;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(session!=null && session.isOpen()) {
				//session鏈川灏辨槸jdbc鐨刢onnection
				session.close();
			}
			
		}
		return i;
	}
//鍒ゆ柇鐢ㄦ埛鍚嶆槸鍚﹀瓨鍦�
	@Override
	public boolean isExist(String username) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction trans=null;
		try{
			trans=session.beginTransaction();
			//鐢ㄥ悕瀛楀畾浣�:鍙仛named parameter
			String hql="from User where username=:n";
			Query query=session.createQuery(hql);
			query.setString("n", username);
			List<User> list=query.list();
			for(User u:list){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(session!=null){
				session.close();
			}
		}
		return false;
	}
	
	@Override
	public User findUserByName(String username,String sex) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction trans=null;
		User user=new User();
		try{
			trans=session.beginTransaction();
			String hql="from User where username=:u and sex=:s";
			Query query=session.createQuery(hql);
			query.setString("u", username);
			query.setString("s", sex);
			List<User> list=query.list();
			for(User u:list){
				return u;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(session!=null){
				session.close();
			}
		}
		return user;
	}

	
	//鏍规嵁id鏌ヨ涓�鏉¤褰�
	@Override
	public User findUserById(int userid) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction trans=null;
		try{
			trans=session.beginTransaction();
			User user=(User) session.get(User.class, userid);
			return user;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(session!=null){
				session.close();
			}
		}
		return null;
	}
	//鏇存柊
	@Override
	public boolean Update(User user) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction trans=null;
		try{
			trans=session.beginTransaction();
			session.update(user);
			trans.commit();
			return true;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(session!=null){
				session.close();
			}
		}
		return false;
	}
	
	
	//鏌ユ壘鎵�鏈�
	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction trans=null;
		try{
			trans=session.beginTransaction();
			String hql="from User";
			Query query=session.createQuery(hql);
			List<User> list=query.list();
			trans.commit();
			return list;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(session!=null){
				session.close();
			}
		}
		return null;
	}
	@Override
	public boolean Delete(int id) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction trans=null;
		try{
			trans=session.beginTransaction();
			User user=(User) session.get(User.class, id);
			session.delete(user);
			trans.commit();
			return true;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(session!=null){
				session.close();
			}
		}
		return false;
	}
	
	public static void main(String[] args) {
		UserDaoImpl ud=new UserDaoImpl();
		User user=new User();
//		user.setUsername("qq");
//		user.setPassword("123");
//		user.setSex("male");
//		user.setAge(21);
//		user.setCity("shanghai");
//		user.setIntersting("lanqiu");
//		user.setStatus(1);
//		ud.Register(user);
//		System.out.println(user);
		
//		System.out.println(ud.userLogin("aaa1234", "aaa_1234"));
//		System.out.println(ud.isExist("aaa123"));
		
//		System.out.println(ud.userLogin("admin", "123456", 1));
//		System.out.println(ud.findUserByName("admin", "鐢�"));
//		user.setId(68);
//		user.setUsername("aaa1234");
//		user.setPassword("aa_123456");
//		user.setSex("濂�");
//		user.setAge(21);
//		user.setCity("鍖椾含");
//		user.setIntersting("绡悆");
//		user.setStatus(0);
//			System.out.println(ud.Update(user));
//		user.setId(68);
//		user.setUsername("aaa123");
//		user.setPassword("aaa_!23");
//		user.setSex("鐢�");
//		user.setAge(22);
//		user.setCity("涓婃捣");
//		user.setIntersting("绡悆");
//		user.setStatus(1);
//	System.out.println(ud.Delete(81));
//		System.out.println(ud.findAll());
//		System.out.println(ud.findAll().size());
//		System.out.println(ud.findAll().get(1));
	}
}
