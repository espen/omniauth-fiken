# frozen_string_literal: true

require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Fiken < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, 'fiken'

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options,
        site: 'https://api.fiken.no/api/v2/',
        authorize_url: 'https://fiken.no/oauth/authorize',
        token_url: 'https://fiken.no/oauth/token',
        connection_opts: {
          headers: {
            user_agent: 'omniauth-fiken',
            accept: 'application/json',
            content_type: 'application/json',
          },
        }

      # The Fiken API requires HTTP Basic Authentication when exchanging the
      # code for a token (i.e. when POSTing to /v1/oauth/token)
      def build_access_token
        options.token_params.merge!(
          headers: { 'Authorization' => basic_auth_header },
        )
        super
      end

      def basic_auth_header
        "Basic " + Base64.strict_encode64("#{options[:client_id]}:#{options[:client_secret]}")
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end