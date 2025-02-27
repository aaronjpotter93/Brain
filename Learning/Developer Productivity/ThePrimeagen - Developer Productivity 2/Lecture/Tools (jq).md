---
file_type: lecture
status: queued
---

## JQ

JQ, the hidden treasure in the family of CLI tools. This one has personaly saved me so much time its hard to qualify just how important it is

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## Lets create a file with the following content

```json
{"type": "foo", "values": [1, 2, 3, 4, 5]}
{"type": "foo", "values": [69, 420, 42, 69420]}
{"type": "bar", "values": {"a": 42, "b": 69}}
{"type": "bar", "values": {"a": 1337, "b": 420}}
{"type": "bar", "values": {"a": 111, "b": 222}}
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## prettify logs

```bash
cat out | jq  # jq '' out
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## compact json

```bash
cat out | jq | jq -c
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## check this out

```json
{
  "type": "foo",
  "values": [
    1,
    2,
    3,
    4,
    5
  ]
}
{
  "type": "foo",
  "values": [
    69,
    420,
    42,
    69420
  ]
}
{
  "type": "bar",
  "values": {
    "a": 42,
    "b": 69
  }
}
{
  "type": "bar",
  "values": {
    "a": 1337,
    "b": 420
  }
}
{
  "type": "bar",
  "values": {
    "a": 111,
    "b": 222
  }
}
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## lets look at the data

Lets sum _ALL_ the foo's `values` arrays PER struct

```json
{"type": "foo", "values": [1, 2, 3, 4, 5]}
{"type": "foo", "values": [69, 420, 42, 69420]}
{"type": "bar", "values": {"a": 42, "b": 69}}
{"type": "bar", "values": {"a": 1337, "b": 420}}
{"type": "bar", "values": {"a": 111, "b": 222}}
```

```bash
➜  dev-prod-2 git:(main) ✗ cat out | jq 'select(.type == "foo") | .values | add'
```

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

## lets do it again

Lets sum _ALL_ the foo's `values` arrays and add it as a key to `type: foo` `valueSum`

```json
{"type": "foo", "values": [1, 2, 3, 4, 5]}
{"type": "foo", "values": [69, 420, 42, 69420]}
{"type": "bar", "values": {"a": 42, "b": 69}}
{"type": "bar", "values": {"a": 1337, "b": 420}}
{"type": "bar", "values": {"a": 111, "b": 222}}
```

```bash
➜  dev-prod-2 git:(main) ✗ cat out | jq 'select(.type == "foo") | .valueSet = (.values | add)'
```

  
  

## We can filter out the `valueSet` now

```bash
➜  dev-prod-2 git:(main) ✗ cat out | jq 'select(.type == "foo") | .valueSet = (.values | add) | select(.valueSet > 20)'
```