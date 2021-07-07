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

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end