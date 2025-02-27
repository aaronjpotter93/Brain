### Class Reference
MultithreadingExampleApplication.java

### Class

```java
package com.aaron.multithreadingexample;  
  
import org.springframework.boot.SpringApplication;  
import org.springframework.boot.autoconfigure.SpringBootApplication;  
import org.springframework.core.io.ClassPathResource;  
  
import java.io.InputStream;  
import java.util.Properties;  
import java.util.concurrent.ExecutorService;  
  
import static java.util.concurrent.Executors.newFixedThreadPool;  
  
@SpringBootApplication  
public class MultithreadingExampleApplication {  
    static ExecutorService messageExecutor = newFixedThreadPool(5);  
  
    public static void main(String[] args) {  
        SpringApplication.run(MultithreadingExampleApplication.class, args);  
        Properties properties_en = new Properties();  
        Properties properties_es = new Properties();  
        messageExecutor.execute(() -> {  
            try {  
                InputStream stream = new ClassPathResource("welcome_en_US.properties").getInputStream();  
                properties_en.load(stream);  
                System.out.println(properties_en.getProperty("welcome"));  
            }  
            catch (Exception e) {  
                e.printStackTrace();  
            }  
        });  
        messageExecutor.execute(() -> {  
            try {  
                InputStream stream = new ClassPathResource("welcome_es_MX.properties").getInputStream();  
                properties_es.load(stream);  
                System.out.println(properties_es.getProperty("welcome"));  
            }  
            catch (Exception e) {  
                e.printStackTrace();  
            }  
        });  
    }  
  
}
```
