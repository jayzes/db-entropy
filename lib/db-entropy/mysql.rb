class DbEntropy::Mysql < DbEntropy::Base
  
  def generate_database_config
    db_config = %w(development test).inject({}) do |conf, env|
      conf[env] = {'database' => "entropy_#{generate_random_name}",
                   'adapter'  => 'mysql',
                   'hostname' => 'localhost',
                   'username' => 'root',
                   'password' => nil}
      conf
    end
    db_config['cucumber'] = db_config['test']
    db_config
  end

end