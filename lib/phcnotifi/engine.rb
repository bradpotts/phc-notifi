module Phcnotifi
	class Engine < ::Rails::Engine

		# Required Dependencies
		require 'jquery-rails'
		require 'sass-rails'
		require 'bootstrap-sass'
		require 'font-awesome-rails'

		require 'figaro'

		# Isolate Namespace for PHC Members
		isolate_namespace Phcnotifi
		
		# Testing Generator
		config.generators do |g|
			g.test_framework :rspec,
			fixtures: true,
			view_specs: false,
			helper_specs: false,
			routing_specs: false,
			controller_specs: true,
			request_specs: false
			g.fixture_replacement :factory_girl, dir: "spec/factories"
		end
		
		# Load Helper Files
		config.to_prepare do
			ApplicationController.helper(ApplicationHelper)
		end
		
		# Auto Mount Plugin
		initializer "phcnotifi", before: :load_config_initializers do |app|
			Rails.application.routes.append do
				mount Phcnotifi::Engine, at: "/"
			end
		end

	end
end
