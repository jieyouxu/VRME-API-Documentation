hero: API Version 1.0.0

# Virtual Reality Meeting Environment API Documentation

Welcome to the API documenation for the Virtual Reality Meeting Environment!

!!! info "Backend Server"

	See
	[jieyouxu/VRME-Server-Rust](https://github.com/jieyouxu/vrme-server-rust).

## API Components Route Summary

This API provides two major resources with authentication:

1. **Users and Accounts**:

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

2. **Meeting Sessions**:

	- ==TODO==
