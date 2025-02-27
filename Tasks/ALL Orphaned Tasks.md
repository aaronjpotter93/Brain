### Table Wishlist
- [ ] make it so that the link takes me straight to the line its on in the file
- [ ] a little context for the todo would be nice from this view
- [ ] the ability to check off items from here
- [ ] a filter drop down to narrow down the search if desired to different folders or tags

```dataview
TABLE WITHOUT ID

"☐" AS "Todo",

((task.line) + 1) AS "On Line",

task.text AS "Task",

file.link AS "File"

FROM ""

FLATTEN file.tasks AS task

WHERE !task.completed
```
