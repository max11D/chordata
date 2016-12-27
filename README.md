## Chordata

A gem that lets one easily convert hash keys between `snake_case` and `camelCase`.

# Requirements

None.

# Usage

As an example:

	h = {something: "blah", two_words: "foo", nested_hash: {foo_bar: "something"}}
	h.transform_key_case(:lcamel)
	=> {"something"=>"blah", "twoWords"=>"foo", "nestedHash"=>{"fooBar"=>"something"}}

This will return a new hash with the keys transformed into the desired case. Transformed keys will always be of type `String`. 

There is corresponding bang method `transform_key_case!` that operates in-place.

Valid case arguments are:

	:lcamel
	:lower_camel
	:ucamel
	:upper_camel
	:snake

Both methods also accept an optional `deep` keyword argument. By default, transformations are deep. This can be turned off by setting that argument to false.

	h.transform_key_case(:lcamel, deep: false)
	=> {"something"=>"blah", "twoWords"=>"foo", "nestedHash"=>{:foo_bar=>"something"}}

Note that nested hashes may still have non-String keys since the method does not operate on them.

# Copyright

Copyright (c) 2017 Online Diamonds Intl. Corp. See LICENSE for details.