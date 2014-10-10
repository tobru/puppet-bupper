class bupper::install {

  # file delivery
  file {
      '/usr/local/bin/bupper':
          source => "puppet:///modules/${module_name}/bupper",
          mode   => '0755';
      '/usr/share/doc/bupper':
          ensure => directory;
      '/usr/share/doc/bupper/bupper.yml.example':
          source => "puppet:///modules/${module_name}/bupper.yml.example";
      '/usr/share/doc/bupper/README.md':
          source => "puppet:///modules/${module_name}/README.md";
  }

  package { 'bup': ensure => installed }

}
