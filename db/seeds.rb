puts "Generating my seed"


Task.destroy_all

task_1 = Task.new(name: "Test for Anne", description: "Create a rails to-do-list", deadline: '2021-11-10 11:30:00', completed: false)
task_1.save!
task_2 = Task.new(name: "Sorting Papers", description: "Sorting all my administrative papers", deadline: '2021-12-01 10:00:00', completed: false)
task_2.save!
task_3 = Task.new(name: "Xmas Gifts", description: "Making a list of the guests and a shopping list with ideas", deadline: '2021-12-24 00:00:00', completed: false)
task_3.save!
task_4 = Task.new(name: "Pay the Gym", description: "Take a check for my next gym session on saturday morning", deadline: '2021-11-06 10:30:00', completed: true)
task_4.save!
task_5 = Task.new(name: "Learn React", description: "Complete the React course on codecademy", deadline: '2022-01-01 11:30:00', completed: false)
task_5.save!

puts "All set ! Seed created"
