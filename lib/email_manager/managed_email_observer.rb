# Observer on ActionMailer deliver_email to save the emails as ManagedEmail objects
# @author Jeremiah Hemphill
module EmailManager
  class ManagedEmailObserver
    # stores the mail as a ManagedEmail object
    # @param [Mail] mail The mail object that was just delivered
    def self.delivered_email(mail)
      # assume the caller is in the app folder somewhere

      attributes = {}
      %w{from reply_to to cc bcc}.each do |attribute|
        attributes[attribute.to_sym] = mail.send(attribute.to_sym).nil? ? "" : mail.send(attribute.to_sym).join(", ")
      end
      %w{message_id subject body headers}.each do |attribute|
        attributes[attribute.to_sym] = mail.send(attribute.to_sym).to_s
      end
      attributes[:date_sent] = mail.date
      calling_files = caller(0).select{ |val| val.match(Rails.root.join('app').to_s) }
      attributes[:caller] = calling_files.join("\n")


      # create the managed email record
      EmailManager::ManagedEmail.create(attributes)
    end 
  end
end
