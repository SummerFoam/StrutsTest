package pdsu.dao;

import java.util.List;

import pdsu.bean.User;

public interface UserDao {
	public User userLogin(String username,String password);
	public int Register(User user);
	public boolean isExist(String username);
	public User findUserById(int userid);
	public User findUserByName(String username,String sex);
	public List<User> findAll();
	public boolean Update(User user);
	public boolean Delete(int id);
}
