file {'/my_test_file':
	ensure => present,
	mode   => 0644,
	content=> "This file was created by puppet run",
}
