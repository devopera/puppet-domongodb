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

  # if we've got a message of the day, include
  @domotd::register { "MongoDB(${port})" : }

}
