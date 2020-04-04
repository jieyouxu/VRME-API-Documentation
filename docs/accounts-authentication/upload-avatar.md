# Upload Avatar

Upload new avatar or replaces existing avatar.

## Endpoint Path

`POST /accounts/{user_id}/avatar`

!!! warning "Authentication required"

	Only the user may change their avatar.

## Path Parameters

| Path parameter | Type   | Description                   |
|----------------|--------|-------------------------------|
| `user_id`      | `Uuid` | unique identifier of the user |

## Required Payload

!!! note "Content type"

	We require the `Content-Type` header to be `multipart/form-data`:

	```http
	Content-Type: multipart/form-data
	```

	With only 1 field, which must itself be of PNG format:

	```http
	Content-Type: image/png
	```

Then the payload is just raw PNG bytes contained within one field of the
`multipart/form-data`.

## Success Response

### `201 Created`
