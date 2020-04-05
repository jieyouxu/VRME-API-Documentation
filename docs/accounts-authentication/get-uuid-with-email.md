# Get `user_id` (UUID) with Email

## Endpoint Path

`GET /accounts/uuid`

## Required Payloads

| Field   | Type    | Constraints                                    |
|---------|---------|------------------------------------------------|
| `email` | `Email` | email must be for one of the existing accounts |

!!! example "Example payload"

	```json
	{
		"email": "no-reply@example.com"
	}
	```

## Success Response

### `200 Ok`

The associated account's `user_id` is returned.

| Field  | Type   | Description              |
|--------|--------|--------------------------|
| `uuid` | `Uuid` | user's unique identifier |

!!! example "Example response"

	```http
	HTTP/1.1 200 Ok
	Content-Type: application/json

	{
		"uuid": "d3e82ee7-3245-4c55-9b1f-7c044c027742"
	}
	```
