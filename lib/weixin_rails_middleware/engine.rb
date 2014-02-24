module WeixinRailsMiddleware
  class Engine < ::Rails::Engine
    isolate_namespace WeixinRailsMiddleware
    engine_name :weixin_rails_middleware

    config.after_initialize do
      token_model.send(:include, WeixinServerUrl) if token_model.present?
    end

    private

      def token_model
        WeixinRailsMiddleware.config.token_model_class
      end

  end
end
