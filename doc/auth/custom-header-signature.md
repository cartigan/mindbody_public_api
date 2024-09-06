
# Custom Header Signature



Documentation for accessing and setting credentials for API-Key.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| API-Key | `String` | API Key Authentication | `api_key` |



**Note:** Auth credentials can be set using named parameter for any of the above credentials (e.g. `api_key`) in the client initialization.

## Usage Example

### Client Initialization

You must provide credentials in the client as shown in the following code snippet.

```ruby
client = MindbodyPublicApi::Client.new(
  custom_header_authentication_credentials: CustomHeaderAuthenticationCredentials.new()
)
```


