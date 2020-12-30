package City;
import java.sql.*;

public class DataBase {

	public static void main(String[] args)throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection con=DriverManager.getConnection("jdbc:sqlserver://KAJAL\\SQLEXPRESS:1433;"+"instance=SQLEXPRESS;databaseName=test;integratedSecurity=true","","");
		String cmd="insert into enq values('kajal','9999','kajal@gmail.com','hi')";
		Statement ps=con.createStatement();
		int i=ps.executeUpdate(cmd);
	
		if(i>0)
		{
			System.out.print("ho gya");
		}
		else
			System.out.print("nhi hua");
	}

}
