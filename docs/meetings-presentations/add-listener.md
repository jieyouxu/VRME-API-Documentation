# Add Lister to Meeting Session

## Endpoint Path

`POST /meetings/{meeting_id}/listener`

!!! warning "Authentication required"

	Only the meeting session's _presenter_ may add listeners.

## Path Parameters

| Path parameter | Type   | Description          |
|----------------|--------|----------------------|
| `meeting_id`   | `Uuid` | meeting session's id |

## Required Payload

| Field      | Type   | Constraints                   |
|------------|--------|-------------------------------|
| `listener` | `Uuid` | the `user_id` of the listener |

!!! example "Example payload"

	```json
	{
		"listener": "98c35d2c-97c6-40d2-b03e-57a1fba1c028"
	}
	```

## Success Response

### `200 Ok`

## Error Response(s)

### `400 Bad Request`

Malformed request payload or invalid field value(s).

### `403 Forbidden`

Invalid credentials supplied or not the presenter of the meeting session.

### `404 Not Found`

Ether the meeting session with `meeting_id` does not exist, or the `listener`
does not exist.
