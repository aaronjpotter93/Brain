---
tags:
  - journal
  - planner
  - todo
  - minddump
---
# Just a Thought:
> how much of your to do is in the domain of moving your self forward? and how much of them are in reinventing the way you move forward? theres getting it done and theres building better ways of getting it done. both are necessary, are you getting to both though?

# Active Domains
> for all domains that I want to pull in based on active, the meta data of that domain should be programmatically set based on whether or not there are tasks that have due dates?  or something like that?
```dataview
LIST
FROM ""
WHERE 
  (start_date AND
  completed = false AND
  date(start_date) <= date(now))
  OR
  (status = "active")
SORT start_date ASC
```

# To Do
```tasks
not done
due before tomorrow
```
- [ ] maybe create a therapy domain? i'd like to journal my thoughts through out the week that seem relevant and also after each session. 📅 2025-03-04
- [ ] therapy thoughts: another entry point to the younger me is the pain that i felt when [[younger_aaron.png]] 📅 2025-03-04

# Internet Resources Utilized

# Mind Dump