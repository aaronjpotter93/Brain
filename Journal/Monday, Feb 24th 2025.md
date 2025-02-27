---
tags:
  - journal
  - planner
  - todo
  - minddump
---

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

# Internet Resources Utilized

```meta-bind-button
style: primary
label: Better Env Setup
actions:
  - type: inlineJS
    code: |-
      let urls = [
        `https://frontendmasters.com/courses/developer-productivity-v2/bash-environment-setup-script/`,
        `https://github.com/theprimeagen/dev`,
        `https://neovim.io/`,
        `https://frontendmasters.com/welcome/github-student-developers/`,
        `https://www.youtube.com/watch?v=stqUbv-5u2s`,
      ];
      urls.forEach(url => {
        window.open(url, '_blank');
      });
```

# Mind Dump
