class DbEntropy::Mongoid < DbEntropy::Base
  def generate_database_config
    db_config = %w(development test).inject({}) do |conf, env|
      conf[env] = {'host'                   => 'localhost',
                   'allow_dynamic_fields'   => true,
                   'parameterize_keys'      => true,
                   'persist_in_safe_mode'   => true,
                   'raise_not_found_error'  => true,
                   'reconnect_time'         => 3,
                   'use_object_ids'         => false,
                   'database'               => "entropy_#{generate_random_name}"}
      conf
    end
    extra_environments.each do |env|
      db_config[env] = db_config['test']
    end
    db_config
  end
end