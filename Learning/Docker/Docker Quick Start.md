
#### 1. Configure the application with Docker
In the <span style="color: #B391EB">root</span> directory of the project create
- <span style="color: #5481EC">Dockerfile</span>
- <span style="color: #5481EC">.dockerignore</span>

```zsh
. 
├── src/ 
└── target/ 
 ── help.md 
 ── mvnw 
 ── mvnw.cmd 
 ── pom.xml 
 ── Dockerfile
 ── .dockerignore
```

##### Dockerfile
```dockerfile
# Use Eclipse Temurin as the base image (recommended for Java applications) 
FROM eclipse-temurin:17-jdk-jammy 

# Set working directory 
WORKDIR /app 

# Copy the JAR file 
COPY target/*.jar app.jar # Run the application ENTRYPOINT ["java", "-jar", "app.jar"]
```

##### .dockerignore
```Dockerfile
# IDE files  
.idea/  
*.iml  
.vscode/  
  
# Build files  
target/  
!target/multithreading-example-0.0.1-SNAPSHOT.jar  
  
# Git files  
.git/  
.gitignore  
  
# Maven wrapper  
.mvn/  
mvnw  
mvnw.cmd  
  
# Documentation  
HELP.md  
README.md  
  
# Logs  
*.log  
  
# Docker files (optional, but recommended)  
Dockerfile  
docker-compose.yml  
.dockerignore
```
#### 2. Build the Application

##### Package the app 
```zsh
./mvnw clean package
```

##### Build Docker Image
```zsh
docker build -t multithreading-example .
```




#### 3. Run and Stop

##### Run Docker Container
```zsh
docker run -p 8080:8080 multithreading-example
```

##### Stop Docker Container
```zsh
CTRL + C
```