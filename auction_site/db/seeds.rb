def time_rand from = Time.now, to = Time.now + 1.day
  Time.at(from + rand * (to.to_f - from.to_f))
end

i=1
10.times do
    user_name = "user"+i.to_s
    user = User.create(name: user_name, email: user_name+"@gmail.com")
    j=1
    5.times do
      user.products.create(title: "title"+j.to_s, description: "blabla", deadline: time_rand)
      j+=1
    end
i+=1
end
