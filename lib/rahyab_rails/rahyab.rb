class RahyabRails::API < ::Rahyab
  def initializer
    config = YAML.load("#{Rails.root}/config/rahyab.yml")[Rails.env]
    super(config['url'],
          config['user'],
          config['password'],
          config['company'])

  end
end
