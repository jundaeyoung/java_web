package ch01;

public class HairDriyer implements IElectronic110v{

	@Override
	public void connect() {
		System.out.println("헤어드라이기 연결 110v On");
	}

}
