# Delete Presentation

## Endpoint Path

`DELETE /meetings/{meeting_id}/presentation`

!!! warning "Authentication required"

!!! danger "DANGER: Destructive non-recoverable operation"

	User must be part of the meeting session.

## Path Parameter

| Path parameter | Type   | Description                 |
|----------------|--------|-----------------------------|
| `meeting_id`   | `Uuid` | target meeting session's id |

## Success Response

### `204 No Content`
