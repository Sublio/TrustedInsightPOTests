require 'faker'

mail = Faker::Internet.email
password = Faker::Ancient.god

CREDENTIALS = {
    valid_user: {
        mail: 'sublio1260@gmail.com',
        password: 'true'
    },
    invalid_user: {
        mail: 'donaldTrump@whitehoouse.gov',
        password: 'wrong'
    },

    random_user: {
    	mail: mail,
    	password: password
    },
}