# YAML Syntax, Data Types and Structure

## Basic Syntax: Key-Value Pairs
```yaml
key: value
```

## YAML Data Types
| Type| Shorthand  | Example |
|-----------|-------------|-------------|
| String | `!!str` |  |
| Number | `!!int` or `!!float` |  |
| Boolean | `!!bool` |  |
| Null | `!!null` |  |
| List | `!!seq` |  |
| Dictionary | `!!omap` |  |
| Set | `!!set` |  |
| Pairs | `!!pairs` |  |
| Map | `!!map` |  |



## Literals *(Strings, numbers, boolean, etc.)*
### String
```yaml
name: Jane 
```

### Multi-line Strings
**Block strings**
```yaml
message: |
 this is
 a real multiline
 message
```

**Folding Strings**
```yaml
message: >
 even though
 it looks like
 this is a multiline message,
 it is actually not
```

### Integer
```yaml
age: 28 
```

### Float
```yaml
marks: 98.76 
```

### Boolean
```yaml
active: true 
```
Boolean value can also be written as `n`, `N`, `false`, `False`, `FALSE`, `y`, `Y`, `true`, `True` or `TRUE`.


### Null
```yaml
email: Null 
```
Null value can also be written as `null`, `Null`, `NULL`.


## Advance Data Types

### Arrays/Lists *(YAML calls them sequences)*
Sequence of arbitrary values.
```yaml
languages:
  - Python
  - Go
  - Shell
```

Altenatively: 

```yaml
languages: [Python, Go, Shell] 
```

### Maps/Dictionaries *(YAML calls it mapping)*
Ordered sequence of key: value pairs without duplicates.

```yaml
cloud: 
  provider: AWS
  region: us-west-2
```

### Nested Structures
```yaml
server:
  name: web-server
  ports:
    - 80
    - 443
```

### Set
Unordered set of non-equal values.
```yaml
tools:
  ? Docker
  ? Kubernetes
  ? Terraform
```

### Date and Time
```yaml
canonical:        2001-12-15T02:59:43.1Z
no time zone (Z): 2001-12-15 2:59:43.10
date (00:00:00Z): 2002-12-14
```


### Type Conversion
YAML auto-detects types, but explicit typing is possible:

```yaml
version: !!str 3.8 # Forces string
port: !!int "80"     # Forces integer
marks: !!float 56.89 # Forces float
active: !!bool true # Forces boolean
email: !!null Null # Forces null
timestamp: !!timestamp 2001-12-15 2:59:43.10 # Forces timestamp
```