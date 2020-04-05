# Get Avatar

## Endpoint Path

`GET /accounts/{user_id}/avatar`

## Path Parameter

| Path parameter | Type   | Description                   |
|----------------|--------|-------------------------------|
| `user_id`      | `Uuid` | unique identifier of the user |

## Success Response

### `200 Ok`

Returns a PNG file.

```http
HTTP/1.1 200 Ok
Content-Type: image/png

...raw bytes
```

## Error Response(s)

### `404 Not Found`

No account associated with `user_id` was found.

!!! note "Default avatar"

	The default avatar is returned if the user never uploaded a custom avatar.
