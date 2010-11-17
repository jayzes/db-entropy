class DbEntropy::Mysql2 < DbEntropy::Base
  
  def generate_database_config
    db_config = %w(development test).inject({}) do |conf, env|
      conf[env] = {'database' => "entropy_#{generate_random_name}",
                   'adapter'  => 'mysql2',
                   'hostname' => 'localhost',
                   'username' => 'root',
                   'password' => nil}
      conf
    end
    extra_environments.each do |env|
      db_config[env] = db_config['test']
    end
    db_config
  end

end