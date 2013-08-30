class gridftp::service (
) inherits gridftp::params {

  service {"globus-gridftp-server":
	ensure		=> running,
	hasstatus	=> true,
	hasrestart	=> true,
	enable		=> true,
	require		=> [ Class["gridftp::config"], Class["gridftp::install"] ]
  }

}
