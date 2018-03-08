namespace :notification do
  desc "Sends SMS notification to employees asking them to log overtime"
  task sms: :environment do
  	# 1. Schedule to run at Sunday at 5pm
  	# 2. Iterate over all employees
  	# 3. Skip admin users
  	# 4. Send a message that has instructions and a link to log time
  	# User.all.each do |user|
  	# 	Sms.Tool.send_sms()
  	# end


  end
  desc "Sends mail Noticicaino to managers (admin users) each day to inform of pending overtime request"
  task manager_email: :environment do
    # 1. Iterate over list of penging overtime request
    # 2. Check to see if there are any request
    #3 Iterate over the list of admin users/managers
    # 4. Send the email to each admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all
    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end

  end
end
