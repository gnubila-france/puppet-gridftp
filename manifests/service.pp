class gridftp::service (
    $service = $gridftp::params::service
) inherits gridftp::params {

  service { $service:
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => [ Class['gridftp::config'], Class['gridftp::install'] ],
  }

}
