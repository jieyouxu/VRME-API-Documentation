# Get Meeting Participants

## Endpoint Path

`GET /meetings/{meeting_id}`

## Path Parameters

| Path parameter | Type   | Description                 |
|----------------|--------|-----------------------------|
| `meeting_id`   | `Uuid` | target meeting session's id |

## Success Response

### `200 Ok`

```json
{
	"presenter": "uuid",
	"listeners": ["uuid_1", "uuid_2"],
	"started_at": "2020-01-01T01:01:01"
}
```
