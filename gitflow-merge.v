module main

import os

fn main() {
	validate_env() or { panic(err) }
}

fn validate_env() ?bool {
	repo_list := os.getenv('REPO_LIST')
	println("repo_list = '$repo_list'")
	mut errors := []string{}
	if repo_list == '' {
		mut message := 'Expected the REPO_LIST environment variable to contain a'
		message += ' comma separated list of repos to operate on'
		errors << message
	}
	if errors.len > 0 {
		return error(errors.join_lines())
	}
	return true
}
