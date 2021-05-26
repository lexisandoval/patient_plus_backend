# PatientPlus API

This is a Ruby on Rails API for PatientPlus, a web application that allows users to log medical information. 

## Installation

Clone this repository and then execute:

    $ bundle install
    $ rails db:migrate
    $ rails db:seed

## Usage

To run the application, run the command.. 
    
    $ rails s 
    
..and open your browser to http://localhost:3000.

Once open, you may view user, medication, condition, and doctor data.

Endpoints: 
    
    /api/v1/users
    /api/v1/medications
    /api/v1/conditions
    /api/v1/doctors
        
You may visit the PatientPlus frontend repository [here](https://github.com/lexisandoval/patient_plus_frontend.git).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lexisandoval/patient_plus_backend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/lexisandoval/patient_plus_backend/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PatientPlus project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/lexisandoval/patient_plus_backend/blob/master/CODE_OF_CONDUCT.md).
