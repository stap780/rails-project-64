# frozen_string_literal: true

Sentry.init do |config|
  config.dsn = 'https://2ba954fa0feb97b5f5d66e2b22bd82e1@o4509005118439424.ingest.de.sentry.io/4509005122830416'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Add data like request headers and IP for users,
  # see https://docs.sentry.io/platforms/ruby/data-management/data-collected/ for more info
  config.send_default_pii = true
end
