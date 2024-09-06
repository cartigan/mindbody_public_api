
# Sales Rep

## Structure

`SalesRep`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Optional | The first name of the sales representative. |
| `id` | `Integer` | Optional | The staff ID of the sales representative. |
| `last_name` | `String` | Optional | The last name of the sales representative. |
| `sales_rep_number` | `Integer` | Optional | This value is the number that identifies the type of sales representative assigned to this client. One to six types of sales representatives can be assigned to a client at any given time, depending on site settings. |
| `sales_rep_numbers` | `Array<Integer>` | Optional | A list of the different types of sales representative functions assigned to this staff member. |

## Example (as JSON)

```json
{
  "FirstName": "FirstName2",
  "Id": 198,
  "LastName": "LastName2",
  "SalesRepNumber": 40,
  "SalesRepNumbers": [
    122,
    123
  ]
}
```

