module ActionmailerInterceptor
  class MailInterceptor
    def self.delivering_email(message)
      original_recipients = ' ['
      [:to, :cc, :bcc].each do |field|
        unless message.send(field).blank?
          original_recipients << "#{field}: #{message.send(field).join(', ')}"
        end
      end
      original_recipients << ']'
      message.subject += original_recipients
      message.to = ENV['redirection_email']
    end
  end
end