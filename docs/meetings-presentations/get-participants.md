# Get Meeting Participants

## Endpoint Path

`GET /meetings/{meeting_id}`

## Path Parameters

| Path parameter | Type   | Description                 |
|----------------|--------|-----------------------------|
| `meeting_id`   | `Uuid` | target meeting session's id |

## Success Response

### `200 Ok`

| Field        | Type       | Description                      |
|--------------|------------|----------------------------------|
| `presenter`  | `Uuid`     | presenter's `user_id`            |
| `listeners`  | `Uuid[]`   | list of listeners' `user_id`s    |
| `started_at` | `Datetime` | starting datetime of the session |

!!! example "Example response"

	```http
	HTTP/1.1 200 Ok
	Content-Type: application/json

	{
		"presenter": "87e67e95-3582-471a-a586-69eba9a591a4",
		"listeners": ["2b81adc6-1381-4b50-ad04-37b2c94bcc6d", "af7acb75-2a4e-4757-8534-e7eb02ebafdb"],
		"started_at": "2020-01-01T01:01:01"
	}
	```

## Error Response(s)

### `404 Not Found`

Meeting session with `meeting_id` not found.
