### Step 1:  Build a Docker Image
Build:
`docker build -t london_hotel_app:latest .`
Run:
`docker run -d --name d387_011998562 -p 8080:8080 london_hotel_app:latest`
### Step 2: Generate DockerHub Personal Access Token
From Docker Desktop Client > Menu > Docker Hub > Account Settings > Personal Access Tokens > Generate new token > Read/Write Token

### Step 3: Push Image to DockerHub
Login to DockerHub:
`docker login -u aaronjp93`
password: `<MY_PERSONAL_ACCESS_TOKEN>`
Tag for repo push:
`docker tag london_hotel_app aaronjp93/london-hotel-app:latest`
Push:
`docker push aaronjp93/london-hotel-app:latest`

### Step 4: Instantiate EC2 Instance with a Docker AMI
I'm choosing an instance with the ARM architecture because the host os's chip type needs to match that of the machine I'm on (which runs on an ARM chip) when the docker image gets built.
Login to AWS console > EC2 Services > Create Instance > Pick from community AMI: `gravitation-docker-main-202307290227-arm64` > I chose `t4g.micro` (free tier eligible) 

### Step 5: Configure Security Group for SSH and HTTP
Navigate to Instance's Security Group > Inbound Rules:
> Add Rule > Type `SSH` | Protocol `TCP` | Port Range `22` | Source `<MY_IP_ADDRESS>`
> Add Rule > Type `Custom TCP` | Protocol `TCP` | Port Range `8080` | Source `0.0.0.0/0` 

### Step 6: Pull Image from Repo
In my Terminal:
`ssh -i "path-to/rsa-key.pem" ec2-user@<ec2-public-ip>`
Verify Docker Version:
`docker --version`
Login to DockerHub:
`docker login -u aaronjp93`
password: `<MY_PERSONAL_ACCESS_TOKEN>`
`docker pull aaronjp93/london-hotel-app:latest`

### Step 7: Run Container on provisioned port
Run:
`docker run -d --name d387_011998562 -p 8080:8080 aaronjp93/london-hotel-app:latest`
Test Endpoint:
`http://<instance-public-ipv4>:8080/`