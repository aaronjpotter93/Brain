---
file_type: project
status: active
---


## Mind Dump:
This structure actually probably should be replaced by a kanban

### Versioning Convention 
```md
Format explanation:
v{major}.{minor}.{patch}-{pre-release}.{number}

Where:
- 0: Major version (0 indicates pre-release/initial development)
- 1: Minor version (new features)
- 0: Patch version (bug fixes)
- alpha: Pre-release identifier
- 1: Build number for this phase
```


### Phases
#### Phase 1: Set Up Project
Goal: Just get something working and deployed that shows I have a server app that is successfully connected to s3, and taking advantage of free tier offerings such as beanstalk/ configured correctly and securely, makes use of docker for containerization and easy versioning for ci/cd later.

##### Features:
- one page:
	- lists bucket objects
	- size of bucket and remaining space (of staying in free tier eligibility)
##### Stack:
- spring boot
- thymleaf
- s3
- docker
- beanstalk

##### Steps:
- [x] create project
- [x] configure classes to interact with s3
- [x] build controller (and maybe service but these two features are very light in complexity)
- [x] build thymleaf template to display these two features

##### Structure
```bash
// Start with this basic structure
project/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/s3manager/
│   │   │       ├── S3ManagerApplication.java
│   │   │       ├── config/
│   │   │       │   └── S3Config.java
│   │   │       ├── controller/
│   │   │       │   └── S3Controller.java
│   │   │       └── service/
│   │   │           └── S3Service.java
│   │   └── resources/
│   │       ├── application.properties
│   │       └── templates/
│   │           └── index.html
└── Dockerfile
```


#### Phase 1.25: Add CRUD & Safeguard
Goal: get basic functionality down to have a usable tool

##### Features:
- one page:
	- [ ] Directory CRUD 📅 2025-03-06
	- [ ] Check size of upload and check if bucket has enough space to stay in free tier 📅 2025-03-06
	- [x] Thumbnail Previews 📅 2025-02-27 ✅ 2025-02-27
%% ##### Stack:
- spring boot
- thymleaf
- s3
- docker
- beanstalk %%

##### Steps:
- [ ]  

##### Structure
```bash
// Start with this basic structure
project/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/example/s3manager/
│   │   │       ├── S3ManagerApplication.java
│   │   │       ├── config/
│   │   │       │   └── S3Config.java
│   │   │       ├── controller/
│   │   │       │   └── S3Controller.java
│	│	│		│	└── S3CrudController.java   <-------   *New*
│   │   │       └── service/
│   │   │           └── S3Service.java
│   │   └── resources/
│   │       ├── application.properties
│   │       └── templates/
│   │           └── index.html
└── Dockerfile
```



#### Phase 1.5: CI/CD Setup
##### Templates:

```yaml
# Basic GitHub Actions workflow
name: CI/CD
on:
  push:
    branches: [ main ]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Build and test
        run: ./mvnw clean package
```

##### Steps:
- [x] configure environment properties for secure versioning and deployment later
- [ ] containerize
- [ ] deploy
- [ ] demo to client that something is deployed


#### Phase 2: Refactor for Vue Project
Goal: to recreate the phase one's ui in a vue project, and to update the whole stacks communication and deployment to run successfully

##### Features:
- *No new features*

##### Stack:
- spring boot: Backend
- vue: front end
- s3
- docker
- beanstalk

##### Structure
```bash
project/
├── backend/    # Your existing Spring Boot project
└── frontend/   # New Vue project
    ├── src/
    │   ├── components/
    │   │   └── BucketExplorer.vue
    │   └── services/
    │       └── s3Service.js
    └── Dockerfile
```

##### Steps:
- [ ] 



#### Phase 3: CRUD Implementation & Basic UI
Goal: to add crud operations, tooling and basic ui to handle them

##### Features:
- one page:
	- lists bucket objects *now in the format of finder with preview photo pane*
	- *CRUD operations and controls in ui*
##### Stack:
- spring boot: Backend
- vue: front end
- s3
- docker
- beanstalk

##### Structure 
*(Front End)*
```bash
// Frontend component structure
components/
├── FileExplorer/
│   ├── FileList.vue
│   ├── FilePreview.vue
│   └── FileOperations.vue
└── shared/
    ├── ConfirmDialog.vue
    └── ProgressBar.vue
```
*(Backend)*
```bash
zippy!
```


##### Steps:
- [ ] 


#### Phase 4: Beautify UI
Goal: make the ui/ux more pleasing to look at and use ( as well as have something I can proudly showcase on my own portfolio website)

##### Features:
- *No new features*

##### Stack:
- spring boot: Backend
- vue: front end
- s3
- docker
- beanstalk

##### Steps:
- [ ] 


#### Phase 5: Cloud Formation Provisioning
Goal: make the ui/ux more pleasing to look at and use ( as well as have something I can proudly showcase on my own portfolio website)

##### Features:
- *Develop locally with simulated AWS services*
- *Deploy everything with one command*
- *Tear down everything with one command*
- *Track costs*
- *Stay within free tier limits*
- *Backup all necessary data and configurations*

##### Stack:
- spring boot: Backend
- vue: front end
- s3
- docker
- beanstalk
- Cloud front

##### Templates:
*(Initial Template)*
```yaml
# basic-stack.yml
Resources:
  S3Bucket:
    Type: AWS::S3::Bucket
    Properties:
      BucketName: !Sub '${AWS::StackName}-bucket'

  BeanstalkApplication:
    Type: AWS::ElasticBeanstalk::Application
    Properties:
      ApplicationName: !Ref AWS::StackName

  BeanstalkEnvironment:
    Type: AWS::ElasticBeanstalk::Environment
    Properties:
      ApplicationName: !Ref BeanstalkApplication
      SolutionStackName: "64bit Amazon Linux 2 v3.5.3 running Docker"
```



##### Steps:
- [ ]  Create basic CloudFormation template
- [ ]  Add S3 configuration
- [ ]  Add Elastic Beanstalk configuration
- [ ]  Create deployment script
- [ ]  Create teardown script
- [ ]  Test full deployment cycle
- [ ]  Add cost monitoring