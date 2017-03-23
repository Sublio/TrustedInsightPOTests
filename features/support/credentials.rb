require 'faker'

mail = Faker::Internet.unique.email
password = Faker::Vehicle.unique.vin
firstname = Faker::Name.unique.first_name
lastname = Faker::Name.unique.last_name
bio = Faker::Hacker.say_something_smart

CREDENTIALS = {
    valid_user: {
        mail: 'sublio1260@gmail.com',
        password:  'avatar1260',
        firstname: 'Denis',
        lastname:  'Test'
    },
    invalid_user: {
        mail: 'donaldTrump@w',
        password: 'wrong',
        firstname: 'qqqqqqqqqqwwwwwwwwwweeeeeeeeeer',
        lastname: 'qqqqqqqqqqwwwwwwwwwweeeeeeeeeer'
    },

    untestor_user: {
        mail: 'untestor@gmail.com',
        password: 'untestor1260'
    },

    borsch_user: {
        mail: 'test@xttk.ru',
        password:  'Qwerty123',
        firstname: 'Vladislav',
        lastname:  'Borsch'
    },

    random_user: {
    	mail: mail,
    	password: password,
        firstname: firstname,
        lastname: lastname       
    },
    
    strange_user: {
        mail: mail,
        password: password,
        firstname: firstname,
        lastname: lastname,
        bio: bio 

    },

}





