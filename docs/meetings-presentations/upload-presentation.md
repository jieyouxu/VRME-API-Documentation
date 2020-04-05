# Upload Presentation

## Endpoint Path

`POST /meetings/{meeting_id}/presentation`

!!! warning "Authentication required"

	Only the _presenter_ may change the presentation.

## Path Parameter

| Path parameter | Type   | Description                 |
|----------------|--------|-----------------------------|
| `meeting_id`   | `Uuid` | target meeting session's id |

## Required Payload

Must be uploaded via `multipart/form-data` content type just like avatars.

Currently only PNG is supported by the client-side, so we again require:

1. `Content-Type: multipart/form-data` with only 1 field.
2. The single field itself have the `Content-Type: image/png` header.

## Success Response

### `201 Created`

## Error Response(s)

### `400 Bad Request`

Malformed payload.

### `403 Forbidden`

Invalid credentials supplied or not the presenter of the target meeting session.

### `415 Unsupported Media Type`

The payload is not `multipart/form-data` and/or its single field not
`image/png`.
