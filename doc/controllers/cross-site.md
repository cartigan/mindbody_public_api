# Cross Site

```ruby
cross_site_controller = client.cross_site
```

## Class Name

`CrossSiteController`


# Copy Credit Card

Copies the credit card information from one client to another, regardless of site.
The source and target clients must have the same email address.

```ruby
def copy_credit_card(version,
                     request,
                     site_id,
                     authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`CopyCreditCardRequest`](../../doc/models/copy-credit-card-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

[`CopyCreditCardResponse`](../../doc/models/copy-credit-card-response.md)

## Example Usage

```ruby
version = '6'

request = CopyCreditCardRequest.new(
  42,
  'SourceClientId8',
  26,
  'TargetClientId8'
)

site_id = '-99'

authorization = 'authorization6'

result = cross_site_controller.copy_credit_card(
  version,
  request,
  site_id,
  authorization: authorization
)
```

