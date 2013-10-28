module Swipebox
  class Engine < ::Rails::Engine
    initializer 'swipebox.assets.precompile' do |app|
      app.config.assets.precompile << %r(swipebox-[\w]+\.(?:png|svg|gif)$)
    end
  end
end
