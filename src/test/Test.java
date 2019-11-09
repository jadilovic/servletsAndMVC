package test;

import beans.User;

public class Test {

	public static void main(String[] args) {
		
		User user = new User("adilovic79@yahoo.com", "pass word");
		
		if(user.validate()){
			System.out.println("Bean validates ok");
		} else {
			System.out.println(user.getMessage());
		}
	}

}
