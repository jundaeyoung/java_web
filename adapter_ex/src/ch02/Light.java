package ch02;

public class Light implements IElectronic110v{

	@Override
	public void connect() {
		System.out.println("전구 연결 110v On");
	}

}
