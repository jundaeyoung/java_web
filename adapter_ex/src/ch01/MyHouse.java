package ch01;

public class MyHouse {
	public static void main(String[] args) {
		
		AirConditioner airConditioner = new AirConditioner();
		Cleaner cleaner = new Cleaner();
		HairDriyer hairDriyer = new HairDriyer();
		Nintendo nintendo = new Nintendo(); 
		
		connect(airConditioner);
		connect(cleaner);
		
		TencoAdapter adapterHairDriyer = new TencoAdapter(hairDriyer);
		connect(adapterHairDriyer);
		
		TencoAdapter adapterNintendo = new TencoAdapter(nintendo);
		connect(adapterNintendo);
	}//end of main
	
	// MyHouse static : 전기 콘센트
	public static void connect(IElectronic220v electronic220v) {
		electronic220v.connect();
	}
	
	
}// end of class
