hero: API Version 1.0.0

# Virtual Reality Meeting Environment API Documentation

Welcome to the API documenation for the Virtual Reality Meeting Environment!

!!! info "Backend Server"

	See
	[jieyouxu/VRME-Server-Rust](https://github.com/jieyouxu/vrme-server-rust).

This API documentation assumes basic familiarity with the HTTP(S) protocol and
assumes paths are in *nix systems (`/`-separated paths).

## API Summary

This API provides two major resources with authentication:

1. **Users and Accounts**: see [Accounts API](./users-accounts/index.md) for
   details.

	- Registration: `POST /register`
	- Login: `POST /login`
	- Logout: `POST /logout`
	- Accounts:
		- Get account id with email: `GET /accounts/uuid`
		- Get account info: `GET /accounts/{uuid}`
		- Update account info: `PUT /accounts/{uuid}`
		- Delete account: `DELETE /account`
	- Avatars:
		- Get avatar: `GET /accounts/{uuid}/avatar`
		- Upload avatar: `POST /accounts/{uuid}/avatar`
		- Delete avatar: `DELETE /accounts/{uuid}/avatar`

2. **Meeting Sessions**: see [Meetings API](./meetings/index.md) for details.

	- Meetings:
		- Create session: `POST /meetings`
		- Add listener: `POST /meetings/{meeting_id}`
		- Leave: `POST /meetings/{meeting_id}/leave`
	- Presentations:
		- Get presentation: `GET /meetings/{meeting_id}/presentation`
		- Upload presentation: `POST /meetings/{meeting_id}/presentation`
		- Delete presentation: `DELETE /meetings/{meeting_id}/presentation`

## Authentication

When a endpoint is *protected*, it will be explicitly marked. Read more about
authentication requirements [here](./authentication/index.md).

## Rate Limiting

Requests made to the VRME API are throttled by rate-limiting.
