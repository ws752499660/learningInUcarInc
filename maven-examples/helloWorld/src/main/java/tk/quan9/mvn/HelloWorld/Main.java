package tk.quan9.mvn.HelloWorld;

public class Main {
    String sayHello(){
        return "hello world!";
    }

    public static void main(String[] args) {
        System.out.println((new Main()).sayHello());
    }
}
