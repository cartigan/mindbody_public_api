
# Terminate Contract Request

## Structure

`TerminateContractRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `client_id` | `String` | Required | The ID of the client. |
| `client_contract_id` | `Integer` | Required | The unique ID of the sale of the contract |
| `termination_date` | `DateTime` | Required | The contract termination date. |
| `termination_code` | `String` | Optional | ex. Illness, Injury, Moving, BreakingContract (Note this can be customized by each studio). |
| `termination_comments` | `String` | Optional | The comments for terminating a contract. |

## Example (as JSON)

```json
{
  "ClientId": "ClientId2",
  "ClientContractId": 242,
  "TerminationDate": "2016-03-13T12:52:32.123Z",
  "TerminationCode": "TerminationCode8",
  "TerminationComments": "TerminationComments0"
}
```

