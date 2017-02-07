require 'faker'

mail = Faker::Internet.unique.email
password = Faker::Vehicle.vin
firstname = Faker::Name.first_name
lastname = Faker::Name.last_name


CREDENTIALS = {
    valid_user: {
        mail: 'sublio1260@gmail.com',
        password:  'true',
        firstname: 'Denis',
        lastname:  'Test'
    },
    invalid_user: {
        mail: 'donaldTrump@w',
        password: 'wrong',
        firstname: 'qqqqqqqqqqwwwwwwwwwweeeeeeeeeer',
        lastname: 'qqqqqqqqqqwwwwwwwwwweeeeeeeeeer'
    },
    random_user: {
    	mail: mail,
    	password: password,
        firstname: firstname,
        lastname: lastname       
    },
}

#hello