
```java

import com.opencsv.CSVReader;  
import org.springframework.core.io.ClassPathResource;  
  
import java.io.InputStreamReader;  
import java.io.Reader;  
import java.util.List;  
  
public class OpenCsvExample {  
    public static void main(String[] args) {  
        try {  
            ClassPathResource resource = new ClassPathResource("data.csv");  
            Reader reader = new InputStreamReader(resource.getInputStream());  
            CSVReader csvReader = new CSVReader(reader);  
  
            List<String[]> records = csvReader.readAll();  
            for (String[] record : records) {  
                System.out.println("Column 1: " + record[0] + ", Column 2: " + record[1]);  
            }  
  
            csvReader.close();  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
    }  
}
```
