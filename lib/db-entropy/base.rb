class DbEntropy::Base
  
  attr_accessor :extra_environments
  
  def initialize(extra_envs=ENV['EXTRA_ENVS'])
    extra_envs ||= ''
    @extra_environments = (['cucumber'] + extra_envs.split(',')).uniq.compact
  end
  
  def generate_random_name(length=10)
    rand(32**length).to_s(32)
  end
  
  def generate_yaml(path)
    config = generate_database_config
    write_to_yaml(config,path)
  end
  
  def write_to_yaml(db_config,path)
    File.open(path, 'w') { |out| YAML.dump(db_config, out) }
  end
  
end