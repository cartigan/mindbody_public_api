
# Client Contract

A client contract

## Structure

`ClientContract`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `agreement_date` | `DateTime` | Optional | The date on which the contract was signed. |
| `autopay_status` | [`AutopayStatusEnum`](../../doc/models/autopay-status-enum.md) | Optional | The status of the client’s autopay. |
| `contract_name` | `String` | Optional | The name of the contract. |
| `end_date` | `DateTime` | Optional | The date that the contract expires. |
| `id` | `Integer` | Optional | The unique ID of the sale of the contract. Each time a contract is sold, this ID increases sequentially. |
| `origination_location_id` | `Integer` | Optional | The ID of the location where the contract was issued. |
| `start_date` | `DateTime` | Optional | The date that the contract became active. |
| `site_id` | `Integer` | Optional | The ID of the site where the contract was issued. |
| `upcoming_autopay_events` | [`Array<UpcomingAutopayEvent>`](../../doc/models/upcoming-autopay-event.md) | Optional | Contains details of the autopay events. |
| `contract_id` | `Integer` | Optional | The ID of the contract |
| `termination_date` | `DateTime` | Optional | The date that the contract was terminated. |

## Example (as JSON)

```json
{
  "AgreementDate": "2016-03-13T12:52:32.123Z",
  "AutopayStatus": "Suspended",
  "ContractName": "ContractName0",
  "EndDate": "2016-03-13T12:52:32.123Z",
  "Id": 248
}
```

