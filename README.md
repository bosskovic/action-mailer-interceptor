# actionmailer_interceptor
Intercepts and forwards emails to the given address in the specified environments

# installation

in Gemfile:

`gem 'actionmailer_interceptor'`

in `config/initializers/actionmailer_interceptor.rb`:

```
if ENV['redirection_email']
  ActionMailer::Base.register_interceptor(ActionmailerInterceptor::MailInterceptor)
end
```
