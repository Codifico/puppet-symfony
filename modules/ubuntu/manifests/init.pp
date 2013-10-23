class ubuntu {
    exec { 'apt-get-update':
        path => '/usr/bin',
        command => 'apt-get update',
        onlyif => "/bin/sh -c '[ ! -f /var/cache/apt/pkgcache.bin ] || /usr/bin/find /etc/apt/* -cnewer /var/cache/apt/pkgcache.bin | /bin/grep . > /dev/null'"
    }
}
