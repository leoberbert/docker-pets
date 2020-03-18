# Update Last Version
exec { "yum_update":
  command => "sudo yum update -y",
  path    => "/usr/local/bin/:/usr/bin/:/bin/",
}
# Install Docker
exec { "docker_install":
  command => "sudo yum install -y docker",
  require => Exec["yum_update"],
  path    => "/usr/local/bin/:/usr/bin/:/bin/",
  user => 'vagrant'
}
exec { "docker_start":
  command => "sudo service docker start",
  require => Exec["docker_install"],
  path    => "/usr/local/bin/:/usr/bin/:/bin/",
  user => 'vagrant'
}
# Install git
exec { "git_install":
  command => "sudo yum install -y git",
  require => Exec["yum_update"],
  path    => "/usr/local/bin/:/usr/bin/:/bin/",
  user => 'vagrant'
}
# Get Last Version Application git
exec { "git_clone":
  command => "git clone https://github.com/dockersamples/docker-pets.git",
  require => Exec["git_install"],
  path    => "/usr/local/bin/:/usr/bin/:/bin/",
  user => 'vagrant'
}
# Build Container
exec { "docker_build":
  command => "cd docker-pets/web; sudo docker build -t docker-pets .",
  require => Exec["git_clone"],
  path    => "/usr/local/bin/:/usr/bin/:/bin/",
  user => 'vagrant'
}
## Teste
exec { "docker_run":
  command => "sudo docker run -d -p 5000:5000 docker-pets",
  require => Exec["docker_build"],
  path    => "/usr/local/bin/:/usr/bin/:/bin/",
  user => 'vagrant'
}
