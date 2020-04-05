# Delete Presentation

## Endpoint Path

`DELETE /meetings/{meeting_id}/presentation`

!!! warning "Authentication required"

!!! danger "DANGER: Destructive non-recoverable operation"

	User must be the _presenter_ of the meeting session.

## Path Parameter

| Path parameter | Type   | Description                 |
|----------------|--------|-----------------------------|
| `meeting_id`   | `Uuid` | target meeting session's id |

## Success Response

### `204 No Content`

## Error Response(s)

### `403 Forbidden`

Invalid credentials or user is not the presenter of the meeting session.

### `404 Not Found`

No meeting session with `meeting_id` was found.
