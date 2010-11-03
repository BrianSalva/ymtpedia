/**
 * 
 */
package beans;

import java.sql.*;

/**
 * @author mtaskeen
 *
 */
class DB
{
	public DB(){}
	
	public Connection dbConnect(String db_connect_string,
	          String db_userid, String db_password)
	{
		try
        {
			System.out.println("Trying to connect");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
			//Class.forName("org.gjt.mm.mysql.Driver").newInstance();
                Connection conn = DriverManager.getConnection(
                  db_connect_string, db_userid, db_password);
                

                System.out.println("connected");
                return conn;
                
        }
        catch (Exception e)
        {
                e.printStackTrace();
                return null;
        }
	}
}

public class UserDB {

	public int saveUser(String username,String password)
	{
		int ret = 0;
		DB db = new DB();
		Connection connection = db.dbConnect("jdbc:mysql://localhost:3306/test", "root", "lakers");
		String insert = ("insert into Users values(\'"+username+"\',\'"+password+"\');");
		System.out.println(insert);
		try
		{
			java.sql.Statement statement = connection.createStatement();
			ret = statement.executeUpdate(insert);
		}
		catch (Exception e) 
		{
			System.out.println("Oops, exception "+e.getMessage());
		}
		return ret;
	}
	
	public String Authorization(String username, String password)
	{
		int ret = 0;
		String user = null;
		DB db = new DB();
		Connection connection = db.dbConnect("jdbc:mysql://localhost:3306/test", "root", "lakers");
		String select = "select * from Users where username=\'"+username+"\';";
		try
		{
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(select);
			if(rs.next())
			{
				user = rs.getString(1);
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getLocalizedMessage());
		}
		
		return user;
	}
	
//	public static void main(String[] args)
//	{
//		UserDB a = new UserDB();
//		a.saveUser("steven", "password");
//	}
}
