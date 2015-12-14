# action_mailer_interceptor
Intercepts and forwards emails to the given address in the specified environments

# installation

in Gemfile:

`gem 'action_mailer_interceptor'

in `config/initializers/action_mailer_interceptor.rb`:

```
interceptor = ActionMailerInterceptor::MailerInterceptor.new(redirection_email: my_email@example.com)

unless (Rails.env.test? || Rails.env.production?)
  ActionMailer::Base.register_interceptor(interceptor)
end
```