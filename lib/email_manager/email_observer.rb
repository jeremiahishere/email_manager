# Observer on ActionMailer deliver_email to save the emails as ManagedEmail objects
# @author Jeremiah Hemphill
class ManagedEmailObserver
  # stores the mail as a ManagedEmail object
  # @param [Mail] mail The mail object that was just delivered
  def self.delivered_email(mail)
  # assume the caller is in the app folder somewhere
    calling_files = caller(0).select{ |val| val.match(Rails.root.join('app').to_s) }
    calling_file_list = calling_files.join("\n")

    # create the managed email record
    EmailManager::ManagedEmail.create(
      :date_sent => mail.date,
      :from => mail.from.join(", "),
      :reply_to => mail.reply_to.join(", "),
      :to => mail.to.join(", "),
      :cc => mail.cc.join(", "),
      :bcc => mail.bcc.join(", "),
      :headers => mail.headers,
      :message_id => mail.message_id,
      :subject => mail.subject,
      :body => mail.body.to_s,
      :caller => calling_file_list)
  end 
end
