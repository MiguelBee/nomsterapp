class NotificationMailer < ApplicationMailer
    default from: 'no-reply@nomsterapp.com'
    
    def comment_added
        mail(to: "phatbastard81@yahoo.com", subject: "You have recieved a comment to your post")
    end
end
