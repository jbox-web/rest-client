# frozen_string_literal: true

module RestClient
  module Windows
  end
end

if RestClient::Platform.windows?
  require_relative './windows/root_certs'
end
