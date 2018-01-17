class bundler (
  $provider = 'gem',
  $ensure   = 'present'
) {

  package { "rubygems":
    ensure => present,
  }

  package { "bundler":
    ensure   => $ensure,
    provider => $provider,
    require  => Package['rubygems'],
  }
}
