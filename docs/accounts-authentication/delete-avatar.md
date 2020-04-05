# Delete Avatar

## Endpoint Path

`DELETE /accounts/{user_id}/avatar`

!!! warning "Authentication required"

!!! danger "DANGER: Destructive non-recoverable operation"

	Only the user may delete their avatar.

## Path Parameters

| Path parameter | Type   | Description                   |
|----------------|--------|-------------------------------|
| `user_id`      | `Uuid` | unique identifier of the user |

## Success Response

### `204 No Content`

## Error Response(s)

### `403 Forbidden`

Invalid credentials supplied.

### `404 Not Found`

No account associated with `user_id` was found.
