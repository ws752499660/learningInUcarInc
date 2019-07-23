package tk.quan9.mvn.HelloWorld;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class TestHello {
    @Test
    public void testSayHello(){
        Main hello=new Main();
        String result=hello.sayHello();
        assertEquals("hello world!",result);
    }
}