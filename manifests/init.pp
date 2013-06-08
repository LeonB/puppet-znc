class znc(
  $packages = params_lookup( 'packages' ),
  $enabled  = params_lookup( 'enabled' ),
  ) inherits znc::params {

    $ensure = $enabled ? {
      true => present,
      false => absent
    }

  include znc::package, znc::config, znc::service
}
