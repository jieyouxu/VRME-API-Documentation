# Authentication

## Summary

Most VRME API endpoints are _protected_. To gain access, the user is required
to:

1. Register an account through `POST /register`.
2. Login via `POST /login`, which returns an `auth_token`.
3. Send the `AuthPayload` in the `#!http Authorization: Bearer <token>` header
   taking the place of the `<token>` place holder.

## Session-Based Authentication and Validity Duration

Authentication in VRME APIs is _session-based_. The `auth_token` represents an
authenticated user for a fixed duration (defaults to `30` days). When an user
logs in, a new authentication session is issued and any old `auth_token`s are
invalidated.

When a user _sucessfully_ authenticates for some protected API endpoint, then
the expiration date of the `auth_token` (and thus the valid duration of the
authentication session which the token represents) is automatically extended.
For example, if a user's client holds an `auth_token` that was issued 5 days ago
(meaning it will expire in 25 days), and that user _sucessfully_ authenticates
via one of the protected API endpoints, then that `auth_token`'s expiration date
will be pushed back 5 days. The more frequent the user authenticates, the longer
the `auth_token` is valid for.

## Detailed Authentication Flow

### Register an Account

New users are required to register through
[`POST /register`](./register.md). See the API endpoint
documentation for detailed payload specification and return value.

Upon successful registration, the client **must** store (persistently) the
returned `user_id` which is the user's unique identifier; this `user_id` will
be used as part of the authentication process. 

### Login

!!! danger "Password Security"

	**NEVER** store the plain-text password or the client-side hashed password
	in caches / filesystem.

!!! warning "Hashing Password"

	We require that when the user is registering, the client-side **must** hash
	the plain-text password using a **cryptographically-strong hashing
	function** (CSHF), such as `HMAC-SHA-256`. Do **NOT** use weak hashing
	functions such as `md5` because they are weak and are very easy to
	compute	rainbow tables for them to try to reverse the hash.

See the API documentation for [`POST /login`](./login.md) for more details.

### Access Protected API Endpoints

#### Steps
	
- Package the `auth_token` together with `user_id` into a **JSON** object.

- **`base64`-encode** the JSON object to get a string **`payload`**.

- Send the `payload` as part of the
  **`Authorization: Bearer <token>`** header where `<token>` is replaced by
  `payload`.

!!! example "Example Usage"

	Given JSON:
	
	```json
	{
		"auth_token": "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI=",
		"uuid": "33b2303f-ea97-43cd-9e33-e619b1eb04f1"
	}
	```
	
	We need to base64-encode that to give the string `payload`:
	
	```text
	ewogICJhdXRoX3Rva2VuIjogIk1USXpORFUyTnpnNU1ERXlNelExTmpjNE9UQXhNak0wTlRZM09Ea3dNVEk9IiwKICAidXVpZCI6ICIzM2IyMzAzZi1lYTk3LTQzY2QtOWUzMy1lNjE5YjFlYjA0ZjEiCn0=
	```
	
	Then put this `payload` as the `Authorization: Bearer`'s token:
	
	```http
	POST /meetings HTTP/1.1
	Authorization: Bearer ewogICJhdXRoX3Rva2VuIjogIk1USXpORFUyTnpnNU1ERXlNelExTmpjNE9UQXhNak0wTlRZM09Ea3dNVEk9IiwKICAidXVpZCI6ICIzM2IyMzAzZi1lYTk3LTQzY2QtOWUzMy1lNjE5YjFlYjA0ZjEiCn0=
	```
