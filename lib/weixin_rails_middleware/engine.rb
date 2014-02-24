module WeixinRailsMiddleware
  class Engine < ::Rails::Engine
    isolate_namespace WeixinRailsMiddleware
    # rake weixin_rails_middleware:install:migrations
    engine_name :weixin_rails_middleware

  end
end
