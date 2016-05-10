namespace :setup do
  desc 'Add the 10 sample patients'
  task :default_patients => :environment do
    patient_list = [
      [ '0000000001', 'Steven Grant Rogers', Date.new(1918, 7, 4), 'Male' ],
      [ '0000000002', 'Anthony Edward Stark', Date.new(1970, 5, 29), 'Male' ],
      [ '0000000003', 'Robert Bruce Banner', Date.new(1969, 12, 18), 'Male' ],
      [ '0000000004', 'Thor Odinson', Date.new(800, 1, 1), 'Male' ],
      [ '0000000005', 'Natalia Alianovna Romanova', Date.new(1984, 11, 22), 'Female' ],
      [ '0000000006', 'Clinton Francis Barton', Date.new(1964, 9, 18), 'Male' ],
      [ '0000000007', 'Wanda Maximoff', Date.new(1964, 3, 18), 'Female' ],
      [ '0000000008', 'Loki Odinson', Date.new(800, 1, 1), 'Male' ],
      [ '0000000009', 'Scott Lang', Date.new(1979, 3, 1), 'Male' ],
      [ '0000000010', 'Peter Parker', Date.new(1962, 8, 18), 'Male' ]
    ]

    puts 'Preparing to create 10 sample patients...'

    patient_list.each do |ssn, name, date_of_birth, gender|
      Patient.create(
        ssn: ssn,
        name: name,
        date_of_birth: date_of_birth,
        gender: gender
      )
      puts 'Patient "' + name + '" successfully added.'
    end
  end

  desc 'Run all bootstrapping tasks'
  task :bootstrap => [:default_patients]
end



