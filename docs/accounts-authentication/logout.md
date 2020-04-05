# Logout

## Endpoint Path

`POST /logout`

!!! warning "Authentication required"

	Only the user may logout themselves.

!!! danger "Logging out invalidates the authentication session"

## Success Response

### `204 No Content`

Successfully logged out.

## Error Response(s)

### `403 Forbidden`

If invalid credentials are supplied.
