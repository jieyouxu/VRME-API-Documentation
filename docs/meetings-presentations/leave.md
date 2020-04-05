# Leave Meeting Session

## Endpoint Path

`POST /meetings/{meeting_id}/leave`

!!! warning "Authentication required"

	User must be a participant of the meeting session.

## Path Parameter

| Path parameter | Type   | Description                 |
|----------------|--------|-----------------------------|
| `meeting_id`   | `Uuid` | target meeting session's id |

## Success Response

### `200 Ok`

## Error Response(s)

### `403 Forbidden`

Invalid credentials supplied or user is not a participant of the target meeting
session.

### `404 Not Found`

No meeting session found for the given `meeting_id`.
