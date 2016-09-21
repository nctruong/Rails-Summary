class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
  def welcome_email(user)
    Mail.deliver do
      from     'tnguyen3951@gmail.com'
      to       'nctruong861990@gmail.com'
      subject  'Here is the image you wanted'
      #body     File.read('body.txt')
      #add_file '/full/path/to/somefile.png'
    end
  end
end
