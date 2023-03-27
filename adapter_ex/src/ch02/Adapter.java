package ch02;

public class Adapter implements IElectronic220v {

	IElectronic110v Electronic110v;

	public Adapter(IElectronic110v Electronic110v) {
		this.Electronic110v = Electronic110v;
	}

	@Override
	public void connect() {
		Electronic110v.connect();
	}

}
