class profile:ha {
  include docker
  docker::image { 'homeassistant/home-assistant':
    ensure => present,
    image_tag => '0.114.3'      
  }
  
  docker::run { 'homeassistant/home-assistant':
    image => 'homeassistant/home-assistant:0.114.3'
    ports => ['80:8123']
  }
}

