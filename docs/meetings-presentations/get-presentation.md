# Get Presentation

## Endpoint Path

`GET /meetings/{meeting_id}/presentation`

!!! warning "Authentication required"

	User must be part of the meeting session.

## Path Parameter

| Path parameter | Type   | Description                 |
|----------------|--------|-----------------------------|
| `meeting_id`   | `Uuid` | target meeting session's id |

## Success Response

### `200 Ok`

```http
HTTP/1.1 200 Ok
Content-Type: image/png

... raw bytes
```

## Error Response(s)

### `403 Forbidden`

Invalid credentials supplied or user is not part of the meeting session.

### `404 Not Found`

No meeting session with `meeting_id` was found.
