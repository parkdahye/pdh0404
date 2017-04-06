package controller;

public class HandlerMapping {
	private static HandlerMapping instance = new HandlerMapping();

	protected static HandlerMapping getInstance() {
		return instance;
	}

	public Controller create(String command) {
		
		Controller c = null;
		if(command.equals("showCartList")){
			c= new ShowCartListController();
		}else if(command.equals("addCart")){
			c=new AddCartController();
		}
		return c;
	}
}
