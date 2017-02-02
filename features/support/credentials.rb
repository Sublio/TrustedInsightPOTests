require 'faker'

mail = Faker::Internet.email
password = Faker::Ancient.god
firstname = Faker::Name.first_name
lastname = Faker::Name.last_name

CREDENTIALS = {
    valid_user: {
        mail: 'sublio1260@gmail.com',
        password:  'true'
        firstname: 'Denis'
        lastname:  'Test'
    },
    invalid_user: {
        mail: 'donaldTrump@whitehouse.gov',
        password: 'wrong'
    },

    random_user: {
    	mail: mail,
    	password: password
        firstname: firstname
        lastname: lastname
        
    },
}