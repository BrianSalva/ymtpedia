package beans;


public class DBConnect {
	
public int saveUser(String username, String password)
{
	System.out.println("Inside DBConnect.saveUser");
	UserDB userdb = new UserDB();
	int ret = userdb.saveUser(username,password);
	return ret;
	
}

public String Authorization(String username,String password)
{
	UserDB userdb = new UserDB();
	String user = userdb.Authorization(username, password);
	return user;
	
}

}
