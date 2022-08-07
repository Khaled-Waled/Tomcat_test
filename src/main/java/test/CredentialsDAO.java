package test;

public class CredentialsDAO 
{
	public boolean testCredentials(Credentials credentials)
	{
		//remove after debug
		//TODO
		if(credentials.getUsername().equals("a"))
			return true;
		
		if( credentials.getUsername().equals("abc") && credentials.getPassword().equals("pass1") ||
			credentials.getUsername().equals("def") && credentials.getPassword().equals("pass2") ||
			credentials.getUsername().equals("ghi") && credentials.getPassword().equals("pass3"))
		{
			return true;
		}
		return false;
	}
}
