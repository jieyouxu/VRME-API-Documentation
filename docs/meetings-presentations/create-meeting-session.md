# Create Meeting Session

## Endpoint Path

`POST /meetings`

!!! warning "Authentication required"

!!! tip "Presenter"

	The user who requested the creation of the meeting session becomes the
	_presenter_.

!!! note "Existing session"

	If the presenter already has a meeting session, then information on that
	session is returned instead of creating a new session.

## Success Response

### `201 Created`

| Field        | Type       | Description                               |
|--------------|------------|-------------------------------------------|
| `meeting_id` | `Uuid`     | unique meeting session identifier         |
| `presenter`  | `Uuid`     | the presenter's `user_id`                 |
| `listeners`  | `Uuid[]`   | list of the `user_id`s of the listeners   |
| `started_at` | `Datetime` | starting datetime of the meeting^&#8224;^ |

!!! tip "&#8224;: Datetime"

	A valid datetime according to IETF [RFC 3339] and [ISO 8601].

!!! example "Example response"

	```http
	HTTP/1.1 201 Created
	Content-Type: application/json

	{
		"meeting_id": "12707fc1-4e6f-411c-8769-ab3b05e45b99",
		"presenter": "4349ba83-c6c5-4ebb-af71-d4c999419a92",
		"listeners": [],
		"started_at": "2020-04-05T01:01:01"
	}
	```

[RFC 3339]: https://tools.ietf.org/html/rfc3339
[ISO 8601]: https://tools.ietf.org/html/rfc3339#ref-ISO8601

## Error Response(s)

### `403 Forbidden`

Invalid credentials supplied.
