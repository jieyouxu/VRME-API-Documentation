# Create Meeting Session

## Endpoint Path

`POST /meetings`

!!! warning "Authentication required"

!!! tip "Presenter"

	The user who requested the creation of the meeting session becomes the
	_presenter_.

## Success Response

### `201 Created`

```json
{
	"meeting_id": "uuid",
	"presenter": "uuid",
	"listeners": [],
	"started_at": "2020-04-05T01:01:01"
}
```
