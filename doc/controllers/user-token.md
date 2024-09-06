# User Token

```ruby
user_token_controller = client.user_token
```

## Class Name

`UserTokenController`

## Methods

* [Issue Token](../../doc/controllers/user-token.md#issue-token)
* [Renew Token](../../doc/controllers/user-token.md#renew-token)
* [Revoke Token](../../doc/controllers/user-token.md#revoke-token)


# Issue Token

When users interact with your Public API integration as staff members, they need to get a staff user token for authentication.
You can use the issue endpoint to get a staff user token, then pass the token in the headers for all of your requests.

```ruby
def issue_token(version,
                request,
                site_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `request` | [`IssueRequest`](../../doc/models/issue-request.md) | Body, Required | - |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |

## Response Type

[`IssueResponse`](../../doc/models/issue-response.md)

## Example Usage

```ruby
version = '6'

request = IssueRequest.new(
  'Username4',
  'Password6'
)

site_id = '-99'

result = user_token_controller.issue_token(
  version,
  request,
  site_id
)
```


# Renew Token

Renews a token. Can be used to extend the lifetime of a token.
Current lifetime expansion: 24hrs from current expiration, up to 7 renewals.

```ruby
def renew_token(version,
                site_id,
                authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

`Object`

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

result = user_token_controller.renew_token(
  version,
  site_id,
  authorization: authorization
)
```


# Revoke Token

Revokes the user token in the Authorization header.

```ruby
def revoke_token(version,
                 site_id,
                 authorization: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Template, Required | version of the api. |
| `site_id` | `String` | Header, Required | ID of the site from which to pull data. |
| `authorization` | `String` | Header, Optional | A staff user authorization token. |

## Response Type

`Object`

## Example Usage

```ruby
version = '6'

site_id = '-99'

authorization = 'authorization6'

result = user_token_controller.revoke_token(
  version,
  site_id,
  authorization: authorization
)
```

