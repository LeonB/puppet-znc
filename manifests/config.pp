class znc::config {

    # # do package before config
    # Users::Account["${znc::user}"] -> Class['znc::package']

    # users::account { $znc::user:
    #     ensure  => $znc::ensure,
    #     uid     => 140,
    #     groups  => ['sabnzbdplus', 'sickbeard'],
    #     home    => '/var/znc',
    #     shell   => '/bin/false',
    #     comment => 'znc',
    # }

    nginx::vhost::snippet { 'znc':
        vhost   => 'default',
        content => template('znc/nginx_vhost.erb'),
        ensure  => $znc::ensure,
     }

    # file { '/etc/default/znc':
    #     ensure  => $znc::ensure,
    #     owner   => 'root',
    #     group   => 'root',
    #     mode    => 0644,
    #     content => template('znc/default/znc.erb'),
    # }
}
