package ch01;

public class MainTest2 {
	public static void main(String[] args) {

		// 문자열 데이터 타입에서 기본 데이터 타입으로 변환하는 방법을 알아야한다.
		// 래퍼클래스란 개념을 알고 있으면 된다.
	    String str = "10";
        String str2 = "10.5";
        String str3 = "true";
        
        byte b = Byte.parseByte(str); // -127 128
        int i = Integer.parseInt(str);
        short s = Short.parseShort(str);
        long l = Long.parseLong(str);
        float f = Float.parseFloat(str2);
        double d = Double.parseDouble(str2);
        boolean bool = Boolean.parseBoolean(str3);
		
        System.out.println("문자열 byte값 변환 : "+b);
        System.out.println("문자열 int값 변환 : "+i);
        System.out.println("문자열 short값 변환 : "+s);
        System.out.println("문자열 long값 변환 : "+l);
        System.out.println("문자열 float값 변환 : "+f);
        System.out.println("문자열 double값 변환 : "+d);
        System.out.println("문자열 boolean값 변환 : "+bool);

	}
}
