>`sed` is a stream editor used to perform basic text transformations on an input stream (file or input from the command line).

#text-processing #file-editing #command-line-tools #bash-commands #regex #terminal-commands #text-manipulation #linux-tools #stream-editor #find-and-replace #sed-reference #unix-utilities #quick-reference #patterns-and-replacements #terminal-commands/text-manipulation/sed/overview


### Times I used `sed`

![[Learning/Terminal Commands/My Use Cases/sed#Then ran the command]]

# General syntax:
sed 's <pattern> <replacement> flags' <input-file> > <output-file>

#### Common flags:
g - Apply the substitution globally (to all occurrences in each line).
i - Make the search case-insensitive.
p - Print the modified lines to standard output.

#### Example commands:
`sed 's/foo/bar/g' file.txt > output.txt `     Replaces all "foo" with "bar" in file.txt and save to output.txt.
`sed '/pattern/d' file.txt > output.txt`       Deletes lines matching "pattern" from file.txt and save to output.txt.
`sed -n '/pattern/p' file.txt`                Prints only lines matching "pattern".

#### Tip: Use '\n' for newlines and escape special characters (e.g., '\(' and '\)').