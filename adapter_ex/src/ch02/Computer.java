package ch02;

public class Computer implements IElectronic220v{

	@Override
	public void connect() {
		System.out.println("컴퓨터 220V연결 On");
	}

}
