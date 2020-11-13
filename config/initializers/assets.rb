# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( home.js )

Rails.application.config.assets.precompile += %w( contact.css )
Rails.application.config.assets.precompile += %w( contact.js )

Rails.application.config.assets.precompile += %w( categories.css )
Rails.application.config.assets.precompile += %w( categories.js )

Rails.application.config.assets.precompile += %w( admin.css )
Rails.application.config.assets.precompile += %w( admin.js )

Rails.application.config.assets.precompile += %w( event.css )
Rails.application.config.assets.precompile += %w( event.js )

Rails.application.config.assets.precompile += %w( festival.css )
Rails.application.config.assets.precompile += %w( festival.js )

Rails.application.config.assets.precompile += %w( product.css )
Rails.application.config.assets.precompile += %w( product.js )

Rails.application.config.assets.precompile += %w( hackathon.css )
Rails.application.config.assets.precompile += %w( hackathon.js )

Rails.application.config.assets.precompile += %w( yozawiza.css )
Rails.application.config.assets.precompile += %w( yozawiza.js )

Rails.application.config.assets.precompile += %w( images.css )
Rails.application.config.assets.precompile += %w( images.js )
