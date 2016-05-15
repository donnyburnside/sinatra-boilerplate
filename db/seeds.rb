require 'csv'

User.create(username: "Administrator", password_digest: "$2a$04$YcLecvlmWAwyDSOtGHAW/ujtf9rnwosHwS.tsvvslvNWvkZQtuO1G", role_id: "1")

File.open("./db/seed-data/users.csv") do |user|
  user.read.each_line do |user|
    id, username, password_digest, role_id, created_at, updated_at = user.chomp.split(",")

    # create each record in the database
    User.create!(:id => id, :username => username, :password_digest => password_digest, :role_id => role_id, :created_at => created_at, :updated_at => updated_at)
  end
end
