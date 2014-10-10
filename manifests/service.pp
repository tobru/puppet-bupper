class bupper::service {

  $ensure = $bupper::start ? { true => running, false => stopped, default => undef }

  # cronjob

}
