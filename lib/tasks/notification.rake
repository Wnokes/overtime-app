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

end
