# About

> This is a sample project that I made using the following tools...

* Nginx
* Unicorn
* Ruby on Rails
* Vagrant
* Angularjs
# Setup

```sh
$ vagrant up
$ vagrant ssh
```

> since I was unable to make bundle install work properly with provision, you'll need to do the following

```sh
$ cd /vagrant
$ rvm use default
$ bundle install
$ sudo rm /etc/nginx/sites-enabled/default
$ sudo ln -s /vagrant/config/nginx.conf /etc/nginx/sites-enabled/pcc
$ chmod +x config/unicorn_init.sh
$ sudo ln -s /vagrant/config/unicorn_init.sh /etc/init.d/unicorn
```

> let's start  nginx and unicorn

```sh
$ sudo service nginx start
$ sudo service unicorn start
```

> let's run the rake tasks

```sh
$ rake db:migrate
$ rake setup:bootstrap
$ rake demo:load_data
```

# Api

### request for token

```sh
# endpoint
POST localhost:3000/token
# pass the application_key in the body
'application_key' => 'guT8E72G7Kbff83Eb43N99Kp'

# sample response
{
    "status": 200,
    "message": "Success",
    "data": {
        "token": "Fgy-qDscuDHvBTp2"
    }
}
```

### save payload data

```sh
# endpoint
POST localhost:3000/save
# pass the content type json in the header
'Content-Type' => 'application/json'
# pass the token and payload as raw json in the body
{
  "token": "Fgy-qDscuDHvBTp2",
  "payload": {
    "0000000001": {
      "Urinalysis": {
        "date": "2014-11-21",
        "location": "MyHealth Clinic",
        "physician": "Dr. Dexter Morgan",
        "data": {
          "Colour": {
            "value": "Pale Yellow"
          }
        }
      },
      "Complete Blood Count": {
        "date": "2014-11-22",
        "location": "MyHealth Clinic",
        "physician": "Dr. Dexter Morgan",
        "data": {
          "Hemoglobin": {
            "value": 144,
            "unit": "g/L",
            "normal_range": "130-180"
          }
        }
      }
    },
    "0000000002": {
      "Urinalysis": {
        "date": "2014-11-21",
        "location": "MyHealth Clinic",
        "physician": "Dr. Dexter Morgan",
        "data": {
          "Colour": {
            "value": "Pale Yellow"
          }
        }
      },
      "Complete Blood Count": {
        "date": "2014-11-22",
        "location": "MyHealth Clinic",
        "physician": "Dr. Dexter Morgan",
        "data": {
          "Hemoglobin": {
            "value": 201,
            "unit": "g/L",
            "normal_range": "130-180"
          }
        }
      }
    }
  }
}

# sample response
{
    "status": 200,
    "message": "Success",
    "data": {
        "success_count": 4,
        "fail_count": 0
    }
}
```

# Additional Info

> I was not able to get the vagrant provisions to work properly and I was also unable to create test cases for this sample project
