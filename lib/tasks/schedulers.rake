namespace :user do
  task :reset_users_for_show => :environment do
    User.where.not(email: ["jonathan.serafini@gmail.com", "admin@example.com"]).each do |user|
      user.update(admin: false, hacked: false)
    end
  end
end
