class ActionmailerInterceptor::MailInterceptor
  attr_accessor :redirection_email

  def initialize(options={})
    @redirection_email = options[:redirection_email]
  end

  def self.delivering_email(message)
    original_recipients = ' ['
    [:to, :cc, :bcc].each do |field|
      unless message.send(field).blank?
        original_recipients << "#{field}: #{message.send(field).join(', ')}"
      end
    end
    original_recipients << ']'
    message.subject += original_recipients
    message.to = @redirection_email
  end
end