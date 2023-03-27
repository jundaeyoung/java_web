package ch01;

public class Nintendo implements IElectronic110v {

	@Override
	public void connect() {
		System.out.println("닌텐도 연결 110v On");
	}

}
