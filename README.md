# actionmailer_interceptor
Intercepts and forwards emails to the given address in the specified environments

# installation

in Gemfile:

`gem 'actionmailer_interceptor'

in `config/initializers/actionmailer_interceptor.rb`:

```
interceptor = ActionmailerInterceptor::MailerInterceptor.new(redirection_email: 'my_email@example.com')

if Rails.env.development? || Rails.env.staging?
  ActionMailer::Base.register_interceptor(interceptor)
end
```