OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1953117668253909', '9c4e732d68a0e1d21be53995fd9b69ca'
end