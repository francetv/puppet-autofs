define autofs::mapfile (
  $path
) {
  include autofs::params

  if !defined(Concat[$path]) {
    concat { $path:
      owner  => $autofs::params::owner,
      group  => $autofs::params::group,
      mode   => '0644',
      notify => Service[$autofs::params::service],
    }
  }
}
