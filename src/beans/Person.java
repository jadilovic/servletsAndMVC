package beans;

public class Person {

	private String name;
	private String id;
	private String message = "Enter data to start validation";
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public boolean validate(){
		
		if(!name.matches("\\w+@\\w+\\.\\w+")){
			message = "Invalid email address";
			return false;
		}
		
		if(id.length() < 8){
			message = "Password must be at least 8 characters";
			return false;
		} else if(id.matches("\\w*\\s+\\w*")){
			message = "Password cannot contain space";
			return false;
		}
		return true;
	}
	
}
