class RahyabRails::API < ::Rahyab::SMS

  def initialize
    config = YAML.load_file("#{Rails.root}/config/rahyab.yml")[Rails.env]

    super(config['rahyab_url'],
          config['rahyab_user'],
          config['rahyab_password'],
          config['rahyab_company'],
          Rails.logger)

  end
end
