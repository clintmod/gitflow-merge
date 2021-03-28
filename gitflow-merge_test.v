module main

fn test_validate_env() {
	validate_env() or { panic(err) }
}
