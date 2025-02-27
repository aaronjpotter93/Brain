# Treat Obsidian Vaults like a Schema
## Framework Translation

| SQL Type             | Obsidian Type       |
| -------------------- | ------------------- |
| :LiTable2: Table     | :LiFolder: Folder   |
| :LiRows3: Record     | :LiFile: File       |
| :LiColumns3: Columns | :SiYaml: Properties |

```console
├── Courses
│   ├── C958 - Calculus I.md
│   ├── D684 - Introduction to Computer Science.md
│   ├── D284 - Software Engineering.md
│   ├── D427 - Data Management - Applications.md
│   ├── D197 - Version Control.md
│   ├── D281 - Linux Foundations.md
│   ├── D430 - Funamentals of Information Security.md
│   ├── C952 - Computer Science.md
│   ├── D286 - Java Fundamentals.md
│   ├── D287 - Java Frameworks.md
│   ├── D288 - Back-End Programming.md
│   └── D387 - Advanced Java.md
└── Terms
    ├── Term 1.md 
    ├── Term 2.md
    └── Term 3.md
```

:LiFolder: Courses
| _  :LiFile: C958 - Calculus I.md 
```yaml
name: Calculus I 
credit_units: 4 
start_date: # You can add start/end dates here if needed 
end_date: term: "Term 3" # Link to the term. This is crucial for relationships. Use the filename of the term note. 
code: C958
```

:LiFolder: Terms
| _  :LiFile: Term_1.md
```yaml
id: 1
start_date: 2024-03-01 
end_date: 2024-08-31
```

## Example Tables: Terms & Courses

#### Terms
| PK  | Start Date | End Date   |
| --- | ---------- | ---------- |
| 1   | 2024-03-01 | 2024-08-31 |
| 2   | 2024-09-01 | 2025-03-01 |
| 3   | 2025-03-01 | 2025-08-31 |

#### Courses

| PK   | Name                             | CUs | Start Date | End Date |
| ---- | -------------------------------- | --- | ---------- | -------- |
| C958 | Calculus I                       | 4   |            |          |
| D684 | Introduction to Computer Science | 4   |            |          |
| D284 | Software Engineering             | 4   |            |          |
