class domongodb (

  # class arguments
  # ---------------
  # setup defaults

  $user = 'web',
  $port = 27018,

  # end of class arguments
  # ----------------------
  # begin class

) {

  case $operatingsystem {
    centos, redhat, fedora: {
    }
    ubuntu, debian: {
    }
  }
    
  class {'::mongodb::server':
    port    => $port,
    verbose => true,
  }

}
