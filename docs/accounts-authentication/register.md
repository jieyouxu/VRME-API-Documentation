# Account Registration

## Endpoint Path

`POST /register`

## Required Payload

| Field             | Type     | Constraints         |
|-------------------|----------|---------------------|
| `email`           | `Email`  | valid email address |
| `first_name`      | `String` | non-empty           |
| `last_name`       | `String` | non-empty           |
| `hashed_password` | `Hash`   | non-empty^&#8224;^  |

!!! tip "&#8224;: `hashed_password`"

	To compute the `hashed_password`, the client shall:

	1. Collect the user-inputted password as `plaintext_password`.
	2. Use a **cryptographically-strong hashing function** such as
	   `HMAC-SHA-256`; take the **first `32` bytes**. Let this be `hash_bytes`.
	3. `base64`-encode the `hash_bytes` into `hashed_password`; the latter shall
	   be a **`44`-length `base64` string**.

!!! example "Example payload"

	```json
	{
		"email": "no-reply@example.com",
		"first_name": "John",
		"last_name": "Doe",
		"hashed_password": "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI="
	}
	```

## Success Response

### `201 Created`

Upon successful request and account creation, the server will return the
payload:

| Field          | Type     | Description                             |
|----------------|----------|-----------------------------------------|
| `message`      | `String` | human-friendly info                     |
| `data.user_id` | `Uuid`   | unique identifier of the user ^&#8225;^ |
| `data.email`   | `Email`  | the email used to register              |

!!! warning "Note on `user_id`"

	&#8225;: The `user_id` should be stored locally because protected endpoints
	require	the user's UUID to authenticate.

!!! example "Example response"

	```http
	HTTP/1.1 201 Created
	Content-Type: application/json
	Content-Length: 202

	{
		"data": {
			"user_id": "33b2303f-ea97-43cd-9e33-e619b1eb04f1",
			"email: "no-reply@example.com"
		},
		"message: "An account with email no-reply@example.com successfully created"
	}
	```

## Failure Response(s)

### `400 Bad Reqest`

Returned if missing fields or fields contain invalid values.

### `409 Conflict`

Returned if there is an account associated with the provided email already.
