namespace :users do
  task :reset_for_show => :environment
    p "START RESET"
    User.where.not(email: ["jonathan.serafini@gmail.com", "admin@example.com"]).each do |user|
      user.update(admin: false, hacked: false)
    end
    p "END RESET"
  end
end
