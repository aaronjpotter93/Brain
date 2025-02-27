
## Logging My Activities

## Pre-Session Youtube Intake

### **Video Notes**

[(1) The Best Software Engineering Advice | Prime Reacts - YouTube](https://www.youtube.com/watch?v=_2cbf1ixygk&t=1849s) 
Discusses **programming career advice** based on **20 years of experience**. The speaker shares insights on avoiding common pitfalls in software development, focusing on **long-term growth** instead of constantly chasing new technologies.

---

**Key Points Discussed**

 **1. The Problem with "Meta Chasing"**

- Many developers **jump from language to language**, chasing the latest trends (React → Svelte → Rust → Zig).
- This cycle can be **detrimental to long-term career growth** because new technologies emerge constantly.
- Instead, developers should focus on **core principles and problem-solving skills** rather than tools.

 **2. Choosing the Right Career Path**

- Software engineers should **pick a direction** and **stick with it** long enough to gain deep expertise.
- Example: Learning Rust or Go deeply over a year, rather than constantly switching to the next hype language.
- Mastering **fundamental computer science concepts** (memory management, algorithms, etc.) is more valuable than learning the newest framework.

 **3. The Importance of Stability & Focus**

- Technology will always evolve, but **good engineering practices remain timeless**.
- Spending **years in one domain** can help developers **build a solid career** rather than feeling lost.
- The idea of **"grass is greener on the other side"** often leads to dissatisfaction and career instability.

**4. Finding Fulfillment in Programming**

- Many developers mistake **novelty for joy**, constantly tweaking tools (Vim setups, new languages, etc.).
- True satisfaction comes from **solving problems effectively**, not from constantly chasing dopamine hits from new tech.
- The speaker argues that **understanding core principles** will make a developer **valuable regardless of trends**.

### **Video Notes**

- [(1) Spring Boot With Amazon S3 : File Upload & Download Example | S3 Bucket | JavaTechie - YouTube](https://www.youtube.com/watch?v=vY7c7k8xmKE&t=1320s)
This guy is making a spring boot app to run crud operations on an S3 Bucket. But its old as shit.


### **Pre-Session Mind Dump**

I had the idea that I should stop trying to set goals for personal projects and their timelines because I am usually way in over my head with what technologies need to be understood to build the features and stack to deliver it as I envision it. There is a massive gap between what I know and what I need to know to complete the tasks related to these goals. So instead what I should do for a while is just track my progress. don't have timelines and goal posts related to features built out, have the goals just be to spend so much time moving forward with the project and tracking the time you spend on what you did in those sessions. Dev Blog this shit, and use that history to look back on and reflect what technologies you were able to get better at, how long it took you to learn what you needed to to build it out, use that time to reflect on ways and resources to build off of those strengths. 

Another Huge point of this is I need to reassess my intentions and my llm ai assisted workflow. I want to start fresh with a few personal rules. #rules
1. Never ask ai to solve a problem for you. You are a student, and the time you spend in the material handing off responsibility of solving a problem is only wasting your time and diminishing the integrity of your qualifications. force a tutor-student like relationship onto all of your interactions with ai.
	1. If you find yourself doing this, recognize the limits of mental exertion that you are hitting, and be willing to step away. (if you don't you always end up paying for it later, coming back and needing to redo it anyway)
2. Only ask ai to do things that you already know how to do, not things you don't know how to. And if it is something you don't know how to do, reinforce the tutor-student relationship in the response. never expect it to hand you the solution when you are in discovery and learning terrain.
	1. You need to adapt to the new world of ai is in everything, and know your place in it as a student, and as a thinker, and as a contributor of value.

### **Today's plans and goals**

1. I want to create a templater template for daily notes that time stamps the creation of the note and I want to timestamp different sections along the way to make analysis and reflection more informed. for things like time spent goal setting, note taking, code planning, system designing, coding, debugging, testing, styling and so on. [YAML Timestamp creation date - Help - Obsidian Forum](https://forum.obsidian.md/t/yaml-timestamp-creation-date/67167/9)
	- [ ] is there a plugin for my different tools that i use to help track these things? Deep Seek Steps: [Templater Time Stamping](file:///Users/aaronpotter/Documents/Software%20Development/Resources/Templater%20-%20Time%20Stamping.html) #todo
2. I want to get started on an aws starter project.[aws-doc-sdk-examples/javav2/usecases/creating\_first\_project at main · awsdocs/aws-doc-sdk-examples](https://github.com/awsdocs/aws-doc-sdk-examples/tree/main/javav2/usecases/creating_first_project)
	- [x] Part One: build project 
	- [ ] Part Two: host on elastic beanstalk
3. I want to take care of the iCloud storage issue. #todo 
	- [x] Submitted a request to download my data from apple. 
	- [ ] Follow up on the 8th :LiCalendar:
4. Get your TikTok Library onto a hardrive, so you can finaly get rid of them from your phone.
	1. Start devising a new workflow for saving new tiktoks from the app -> hardrive without needing to take the manual steps to manage that. #todo


### **AWS First Project**
[First Project](https://github.com/awsdocs/aws-doc-sdk-examples/tree/main/javav2/usecases/creating_first_project)
**Started at 10:11 :LiClock10:**

- shortly after getting set up to work I decided to go on a walk with Megan and then eat lunch

**Got back to work at 1:30 :LiClock1:**

- built out project as directed
	- extra time spent on:
		- maven wasn't installed on my mac and wasn't in the path
		- looked up the environment credential provider and how it works
		- adding a new sdk user and struggled to get the keys to the mac mini cus I did it on the laptop and the airdrop kept declining itself
		- added styles to greeting and results page for dark mode

**Finished at 4:00 :LiClock4:**

- next steps
	- host app on aws elastic beanstalk

