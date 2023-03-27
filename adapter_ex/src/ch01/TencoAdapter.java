package ch01;

/**
 * 어뎁터 패턴 설정
 */
public class TencoAdapter implements IElectronic220v{

	IElectronic110v electronic110v;
	
	public TencoAdapter(IElectronic110v electronic110v) {
		this.electronic110v = electronic110v;
	}
	
	@Override
	public void connect() {
		electronic110v.connect();
	}

}
