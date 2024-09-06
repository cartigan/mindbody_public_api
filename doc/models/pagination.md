
# Pagination

Contains information about the pagination used.

## Structure

`Pagination`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page_number` | `Integer` | Optional | Page number of results in dataset. |
| `page_size` | `Integer` | Optional | Number of results returned in this response. |
| `total_result_count` | `Integer` | Optional | Total number of results in dataset. |
| `total_page_count` | `Integer` | Optional | Total number of page in dataset. |

## Example (as JSON)

```json
{
  "PageNumber": 54,
  "PageSize": 136,
  "TotalResultCount": 152,
  "TotalPageCount": 222
}
```

