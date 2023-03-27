package ch02;

public class MyHouse {

	public static void main(String[] args) {
		
		Computer computer = new Computer();
		Light light = new Light();
		
		connect(computer);
		
		Adapter adapter = new Adapter(light);
		connect(adapter);
		
	}
	
	static void connect(IElectronic220v iElectronic220v) {
		iElectronic220v.connect();
	}
}
