# Update Account Info

Currently the user can only update their `first_name` or `last_name`.

## Endpoint Path

`PUT /accounts/{user_id}`

!!! warning "Authentication required"

	Only the user may update their first name and/or last name.

## Path Parameter

| Path parameter | Type   | Description              |
|----------------|--------|--------------------------|
| `user_id`      | `Uuid` | user's unique identifier |

## Required Payload

| FIeld        | Type     | Optional/Required | Description |
|--------------|----------|-------------------|-------------|
| `first_name` | `String` | Optional          | first name  |
| `last_name`  | `String` | Optional          | last name   |

## Success Response

### `204 No Content`
