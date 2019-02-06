config_file = Rails.root.join('config', 'secret_github.yml')

SECRET = YAML.load_file(config_file)[Rails.env]