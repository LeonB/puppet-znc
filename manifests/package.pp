class znc::package {

  package  { $znc::packages:
    ensure => $znc::ensure,
  }

}
