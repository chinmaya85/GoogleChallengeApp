OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '850439744462-1rkc9r5ce1j7g8autukhbl7igg99c1qf.apps.googleusercontent.com', 'TgYToi-uyoHbVhE9qGdSGpDU', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
  provider :github, '88da3c98c2c50beb1bb3', '65a715a94e8f2f854c59c50bb09362864ee2545c', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
  provider :linkedin, '75eahyc5i41zhf', '52uZiBZRKNGsh8g0', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end