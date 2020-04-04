# Login

## Endpoint Path

`POST /login`

## Required Payload

| Field             | Type    | Constraints                                                        |
|-------------------|---------|--------------------------------------------------------------------|
| `email`           | `Email` | the same email used to register                                    |
| `hashed_password` | `Email` | same constraints on `hashed_password` as given in `POST /register` |

!!! example "Example payload"

	```json
	{
		"email": "no-reply@example.com",
		"hashed_password": "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI="
	}
	```

## Success Response

### `201 Created`

An authentication session is created; the payload returned:

| Field        | Type     | Description                      |
|--------------|----------|----------------------------------|
| `user_id`    | `Uuid`   | user's unique id                 |
| `auth_token` | `String` | used for authentication^&#8224;^ |

!!! tip "&#8224;: `auth_token`"

	The `auth_token` should be stored locally _securely_; it is recommended that
	the client protect the `auth_token` as a secret, e.g. by performing
	symmetric encryption.

### `400 Bad Request`

Returned if request missing fields or contain invalid values.

### `403 Forbidden`

Returned if `email` + `hashed_password` combination is incorrect.

### `404 Not Found`

Returned if no account exists with the `email`.
