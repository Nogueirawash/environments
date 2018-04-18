node 'washington-homolog.dexter.com.br' {
  include confsbase
  include memcached
  include mysqlserver
  include webserver
  webserver::configure {'washington-homolog.dexter.com.br':
  banco => '172.16.100.102',
  cache => '172.16.100.102',
}
}
