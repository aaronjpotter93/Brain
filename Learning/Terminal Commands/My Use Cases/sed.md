#sed/example #sed/use-case #terminal-commands/text-manipulation/sed/use-case

#### I copied a console error that had put all the messages on one line. 

#### Created a new text file and pasted it in:

```console
Failed: "Previews/FBCBB319-D74A-4754-A6E4-91CA33B51321-1-2532x1952-0.jpeg"Failed: "Previews/7CD44DB8-6F01-453F-8519-9DAC46D3C34A-1-2570x1503-0.jpeg"Failed: "Previews/D874556E-0CA1-4FD2-9948-4DC3BF5BFFD0-1-2336x1482-0.jpeg"Failed: "Previews/3DED9843-72FF-4F36-9368-2AAE1ED1A51E-1-2401x1655-0.jpeg"Failed: "Previews/21EE7AF7-2EB6-4103-9F44-50DAA7941290-1-2311x1852-0.jpeg"Failed: "Previews/421D61AE-EF1A-4EAE-B153-052F3BA48391-1-2929x2285-0.jpeg"Failed: "Previews/81A0059B-C56A-42AA-A6B7-C3C39F924483-1-2718x2077-0.jpeg"Failed: "Previews/8004FB40-683D-4616-A1B7-80421AB093AC-1-2617x2010-0.jpeg"Failed: "Previews/9CEAB195-EF1E-4601-98C4-3B968D1E3B27-1-2313x1069-0.jpeg"Failed: "Previews/0126E578-429D-4426-BB76-F626CEDBDF48-1-1636x1257-0.jpeg"Failed: "Previews/5D234A21-B4ED-481E-AE3C-BC85136A4CDF-1-1493x1938-0.jpeg"Failed: "Previews/0D1100F6-4078-45BD-B164-901387C8CFD2-1-1712x1367-0.jpeg"Failed: "Top Favorite Restaurants" because Cannot read properties of undefined (reading 'ZIDENTIFIER')Failed: "Dance Reference Sheet" because Cannot read properties of undefined (reading 'ZIDENTIFIER')Failed: "Previews/6BE2E0F7-AA6F-4785-919A-1B2B1AABA839-1-1724x1092-0.jpeg"Failed: "PSYC 140 Relationships for Success" because incorrect header checkFailed: "Car" because incorrect header checkFailed: "Meeting with Ricky" because incorrect header checkFailed: "Set up AWS and SSMS" because incorrect header checkFailed: "Car Insurance" because incorrect header checkFailed: "I’ll" because incorrect header checkFailed: "Liability" because incorrect header checkFailed: "Planning, Goal Setting, Timeblocking, Calendaring, Deadlinesing" because incorrect header checkFailed: "Can you simulate a debate between Renee Descartes and an imperacist…" because incorrect header checkFailed: "Target" because incorrect header checkFailed: "200 steps a minute" because incorrect header checkFailed: "Interview" because incorrect header checkFailed: "Previews/87462922-6703-4067-A30C-B83537B0D897-1-1584x2229-0.jpeg"Failed: "Previews/9D721263-738A-4340-8C98-DE18D0C4E93C-1-1727x2091-0.jpeg"Failed: "Previews/682A73A7-2CA2-4665-8E90-3752F78A09CC-1-1730x2325-0.jpeg"Failed: "Who Am I?" because incorrect header checkSkipped: "A Comprehensive Study on the Varieties of Refrigerators" because note is password protected
```


#### Then ran the command:

```bash
sed 's/Failed:/\nFailed:/g' input.txt > output.txt
```


#### The resulting file:

```console
Failed: "Previews/FBCBB319-D74A-4754-A6E4-91CA33B51321-1-2532x1952-0.jpeg"

Failed: "Previews/7CD44DB8-6F01-453F-8519-9DAC46D3C34A-1-2570x1503-0.jpeg"

Failed: "Previews/D874556E-0CA1-4FD2-9948-4DC3BF5BFFD0-1-2336x1482-0.jpeg"

Failed: "Previews/3DED9843-72FF-4F36-9368-2AAE1ED1A51E-1-2401x1655-0.jpeg"

Failed: "Previews/21EE7AF7-2EB6-4103-9F44-50DAA7941290-1-2311x1852-0.jpeg"

Failed: "Previews/421D61AE-EF1A-4EAE-B153-052F3BA48391-1-2929x2285-0.jpeg"

Failed: "Previews/81A0059B-C56A-42AA-A6B7-C3C39F924483-1-2718x2077-0.jpeg"

Failed: "Previews/8004FB40-683D-4616-A1B7-80421AB093AC-1-2617x2010-0.jpeg"

Failed: "Previews/9CEAB195-EF1E-4601-98C4-3B968D1E3B27-1-2313x1069-0.jpeg"

Failed: "Previews/0126E578-429D-4426-BB76-F626CEDBDF48-1-1636x1257-0.jpeg"

Failed: "Previews/5D234A21-B4ED-481E-AE3C-BC85136A4CDF-1-1493x1938-0.jpeg"

Failed: "Previews/0D1100F6-4078-45BD-B164-901387C8CFD2-1-1712x1367-0.jpeg"

Failed: "Top Favorite Restaurants" because Cannot read properties of undefined (reading 'ZIDENTIFIER')

Failed: "Dance Reference Sheet" because Cannot read properties of undefined (reading 'ZIDENTIFIER')

Failed: "Previews/6BE2E0F7-AA6F-4785-919A-1B2B1AABA839-1-1724x1092-0.jpeg"

Failed: "PSYC 140 Relationships for Success" because incorrect header check

Failed: "Car" because incorrect header check

Failed: "Meeting with Ricky" because incorrect header check

Failed: "Set up AWS and SSMS" because incorrect header check

Failed: "Car Insurance" because incorrect header check

Failed: "I’ll" because incorrect header check

Failed: "Liability" because incorrect header check

Failed: "Planning, Goal Setting, Timeblocking, Calendaring, Deadlinesing" because incorrect header check

Failed: "Can you simulate a debate between Renee Descartes and an imperacist…" because incorrect header check

Failed: "Target" because incorrect header check

Failed: "200 steps a minute" because incorrect header check

Failed: "Interview" because incorrect header check

Failed: "Previews/87462922-6703-4067-A30C-B83537B0D897-1-1584x2229-0.jpeg"

Failed: "Previews/9D721263-738A-4340-8C98-DE18D0C4E93C-1-1727x2091-0.jpeg"

Failed: "Previews/682A73A7-2CA2-4665-8E90-3752F78A09CC-1-1730x2325-0.jpeg"

Failed: "Who Am I?" because incorrect header checkSkipped: "A Comprehensive Study on the Varieties of Refrigerators" because note is password protected
```


#### Explanation of Syntax:
`sed` After running this command, output.txt will have each “Failed” entry on a new line.

```bash
sed
```

>A stream editor for filtering and transforming text.
---


```bash
's/Failed:/\nFailed:/g'
```

>This substitution command finds every occurrence of Failed: and replaces it with \nFailed: (adding a new line before each Failed:).
---

```bash
s
```

> s: Substitute command.
---

```bash
g
```

>Global flag to apply the substitution to all occurrences.
---

```bash
input.txt
```

>The input file containing the log.
---

```bash
> output.txt
```

>Redirects the modified content to a new file named output.txt.
---