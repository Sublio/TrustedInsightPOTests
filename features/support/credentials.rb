require 'faker'

mail = Faker::Internet.unique.email
password = Faker::Vehicle.unique.vin
firstname = Faker::Name.unique.name
lastname = Faker::Name.unique.last_name


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

