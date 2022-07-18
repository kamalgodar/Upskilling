## A Quick Guide on JSON

JSON stands for `JavaScript Object Notation`.

JSON is a widely used format that allows for for storing or transferring semi-structured data, because it does not require a schema.

JSON was inspired from Javascript, but is now language independent. Every language these days have libraries for parsing and generating json data. Python has a module called `json` to work with JSON. 

JSON Object is defined using curly braces{} and consists of a key-value pair. 

JSON File is a file containing JSON object.

>JSON object key is a string and its value can be any primitives (e.g. int, string, null) or complex data types(e.g. array) 

>(True, single quotation mark) in JSON object causes an error.



### Snippet of json format:

```json
{
    "text": "I am learning json",
    "intent": "learn",
    "entities": [
        {
            "start": 5,
            "end": 28,
            "value": "chat",
            "has_finished": true
        },
        {
            "start": 15,
            "end": 30,
            "value": "cool",
            "has_finished": false
        },

    ]
}
```
`Serialization`: conversion of data from JSON object to string

`Deserialization`: conversion of data from string to JSON object  

When we load JSON into a Python Object and vice-versa, it uses the following conversion table.

### Conversion Table
| JSON | Python |
| ---- | ---- |
| Object | dict |
| array | list, tuple|
| string | str |
| number (int) | int |
| number (real) | float |
| true | True |
| false | False | 
| null | None |


### Methods:

`json.loads()`: loads/parse the JSON string -> Python object (dictionary)

`json.load()` read a JSON file -> Python object

`json.dumps()` Python object -> JSON string

`json.dump()` Python object -> JSON file

#### Preety Output

```bash
json.dumps(person_dict, indent = 4, sort_keys=True)
```
By default, indent = None & sort_keys = False
