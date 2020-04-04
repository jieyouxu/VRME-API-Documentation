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
