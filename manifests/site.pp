node 'washington-devops.dexter.com.br' {
  include confsbase
}
node 'washington-balancer.dexter.com.br' {
  include confsbase
  include balancer
  balancer::configure  { 'washington-balancer.dexter.com.br': 
  web1  => '172.16.100.104',
  web2  => '172.16.100.105',
  cache => '172.16.100.106',
}
}
node 'washington-webserver01.dexter.com.br' {
  include confsbase
  include webserver
  webserver::configure  { 'washington-webserver01.dexter.com.br': 
  banco => '172.16.100.106',
  cache => '172.16.100.106',
}
}
node 'washington-webserver02.dexter.com.br' {
  include confsbase
  include webserver
  webserver::configure  { 'washington-webserver02.dexter.com.br': 
  banco => '172.16.100.106',
  cache => '172.16.100.106',
}
}
node 'washington-database.dexter.com.br' {
  include confsbase
  include memcached
  include mysqlserver
}
