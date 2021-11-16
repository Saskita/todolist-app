puts "Generating my seed"


Task.destroy_all

task_1 = Task.new(name: "Test for Anne", description: "Create a rails to-do-list", deadline: '2021-11-16 13:30:00', completed: true)
task_1.save!
task_2 = Task.new(name: "Sort Papers", description: "Sorting all my administrative papers", deadline: '2021-11-20 10:00:00', completed: false)
task_2.save!
task_3 = Task.new(name: "Xmas Gifts", description: "Making a shopping list with gifts ideas", deadline: '2021-12-24 00:00:00', completed: false)
task_3.save!
task_4 = Task.new(name: "Pay the Gym", description: "Take a check for my next gym session ", deadline: '2021-11-06 10:30:00', completed: true)
task_4.save!
task_5 = Task.new(name: "Learn React", description: "Complete the React course on codecademy", deadline: '2022-01-01 11:30:00', completed: false)
task_5.save!
task_6 = Task.new(name: "Do my granola", description: "Buy grains and do my breakfast granola", deadline: '2021-11-16 11:30:00', completed: true)
task_6.save!
task_7 = Task.new(name: "Call Grandma", description: "Remember to call her after 3pm", deadline: '2021-11-15 11:30:00', completed: false)
task_7.save!

puts "All set ! Seed created"
