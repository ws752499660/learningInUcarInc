package tk.quan9.javaweb.hanabisuki;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.EnableAspectJAutoProxy;


@SpringBootApplication
@EnableAspectJAutoProxy
@ServletComponentScan
public class HanabisukiApplication {

    public static void main(String[] args) {
        SpringApplication.run(HanabisukiApplication.class, args);
    }

}
