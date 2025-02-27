```java
import org.springframework.core.io.ClassPathResource;
```

#Java #Java/Spring #Java/ResourceLoading #Java/Classpath #Java/FileAccess

- **Purpose:** 
>Access resources from the classpath. 
- **Usage:** 
>Simplifies the process of loading files like properties files, XML files, CSV files etc., that are bundled with your application.
- **Example:** 
```java 
ClassPathResource resource = new ClassPathResource("file.csv"); 
InputStream inputStream = resource.getInputStream();
```
