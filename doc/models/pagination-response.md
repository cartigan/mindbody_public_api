
# Pagination Response

Contains information about the pagination to use.

## Structure

`PaginationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `requested_limit` | `Integer` | Optional | Limit from pagination request |
| `requested_offset` | `Integer` | Optional | Offset from pagination request |
| `page_size` | `Integer` | Optional | Number of results returned in this response |
| `total_results` | `Integer` | Optional | Total number of results in dataset |

## Example (as JSON)

```json
{
  "RequestedLimit": 22,
  "RequestedOffset": 0,
  "PageSize": 172,
  "TotalResults": 112
}
```

