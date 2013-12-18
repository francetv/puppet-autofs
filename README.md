# Autofs module for Puppet

## Description
Puppet module for managing Autofs mountpoints and files.

### Some Contrived Example usage

``` puppet
  autofs::mount { '/share':
    map     => ' /etc/auto.common',
    options => ' --ghost --timeout=30',
    }      
  autofs::mount { 'dir1':
    map 	=> '192.168.1.250:/exports/dir_on_nas1',
    options => '-fstype=nfs,rw,hard,intr,nosuid,browse',
    mapfile => '/etc/auto.common',
    }
  autofs::mount { 'dir2':
    map  	=> '192.168.1.250:/exports/dir_on_nas1',
    options => '-fstype=nfs,rw,hard,intr,nosuid,browse',
    mapfile => '/etc/auto.common',
    }
    
autofs::include { 'auto.local': }
```

#### /etc/auto.local

This file is not managed by puppet, and so there is no way to know what its
contents will be. Puppet doesn't care.
