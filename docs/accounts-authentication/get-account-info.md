# Get Account Info

Currently only returns the first name and last name of the user.

## Endpoint Path

`GET /accounts/{user_id}`

## Path Parameter

| Path Parameter | Type   | Description                     |
|----------------|--------|---------------------------------|
| `user_id`      | `Uuid` | target user's unique identifier |

## Success Response

### `200 Ok`

| Field | Type | Description |
| - | -| -|
| `first_name` | `String` | first name |
| `last_name` | `String` | last name |

!!! example "Example response"

	```http
	HTTP/1.1 200 Ok
	Content-Type: application/json

	{
		"first_name": "John",
		"last_name": "Doe"
	}
	```
