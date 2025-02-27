### Mind Dump:
I have been feeling really tangled up in all the material and tasks i've been trying to plan for and do and its too a point that i'm so scattered accross that there is no clarity to any of my sessions and what i can expect to get done. it makes me wonder if i'm moving too fast and expecting too much. I want to slow it down and take some of these things and say its ok that i don't spend time on them now or next week, but that they'll come back when i've layed down the groundwork for it. if i set a goal for a project or daily session and i am in the zone the whole time but only got one thing of 7 done, then that means my goal didnt know how much discovery was needed to achieve the whole thing. and that should be ok. i am ok with how long it takes to get it right. and i want to invest time into getting a better environment to get discovery and tasks done quicker, but not at the cost of moving forward with my course work. maybe? what tends to happen is while i'm going through what the tasks are asking of me, I get a sense of what more I could study and practice to fit that material into my own workflow. trying to really apply the material to my own world, not just satisfy the requirement. and that spawns more goals and tasks which chain spawn more.. and thats where i've been for the last couple of weeks. my project task is so simple actually and i could have turned it in three weeks ago but i felt like i wouldn't have been "taking advantage" of the time and material fully to apply it and reinforce it. I've played a lot with the following over the course of this class:
	- postman
		- headers
		- endpoints
		- methods
		- parameters
		- body
		- authentication
		- variables for all of the above
	- controllers that handle api requests
		- response types (ie 200 ok)
		- json body
		- dtos
		- reading csv
		- map to entity
		- map to json
	- front end to make and receive requests
	- docker containerizing (honestly this shit is still not clicking)
		- trying to figure out how to use docker and compose with the correct environment configurations for different stages of development
			- comp architecture image build on and for
			- authentication variables and where they live in a way that is secure and accessible to the image in different stages of development
			- end points for each phase of development as well.
			- full stack apps with all the above considerations configured correctly for communicating with compose and set up to work with elastic beanstalk or even ec2 itself
			- (and why is no one explicitly talking about this stuff in their tutorials? like I get that i can make something work but it seams it only works that one time, and with a lot of manual labor which is so unsustainable for ci/cd. or getting up and running with the next project. but developing for versioning, and different environments is not being modeled in these tutorials. they are constantly just hard coding env and endpoint stuff which doesn't work when i'm in a dev environment and everything is local host but then the endpoints change when deployed or when one is deployed and the other is local....)

Which leads me to the last two weeks of splatter brain. i'm trying to take what my course content is teaching ( in a manner that isn't considering devOps at all, and apply it in a way that makes me feel empowered but the state that their material is satisfied with, i am not, because its too manual. i spend days just trying to get a single project's pipeline configured to pull from and point at the right stuff, in a way that is secure for versioning....)

Do I just need to put a pin in this and get the dang thing built and turned in? Move on. let it go for now? and come back to it later? without letting myself get sucked into full days getting poured into it? am i close and would benefit from sticking it out or will it continue to spawn an endless cycle of environment configuration and workflow related rabbit holes?

Topic wishlist
- Projects are easy to get started and configured for:
	- development environments
	- docker & compose
	- environment variables (have a secure place they live)
	- endpoints
	- testing
	- versioning
	- deployment
	- ci/cd
- No friction to any of these steps. no days and days and days trying to figure out what rabbit hole I need to go down just to get the dang thing to run when moving from one place to the next or trying to configure it to run from one place to the next. between all the yamls, and jsons and .envs and props and profiles and actions and jobs... holy cow


### ToDo Today
- [ ] Ship d387 project