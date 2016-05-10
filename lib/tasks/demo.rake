namespace :demo do
  desc "Add reports to the sample patients"
  task :load_data => :environment do

    puts 'Requesting token from application...'

    token = HTTParty.post("http://localhost:80/token",
    { 
      :body => {
        "application_key" => "guT8E72G7Kbff83Eb43N99Kp"
      }
    })

    if token["status"] == 200
      puts 'Using the token to create sample reports for some patients...'

      report_list = {
        "token": token["data"]["token"],
        "payload": {
          "0000000001": {
            "Urinalysis": {
              "date": "2015-1-1",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Colour": {
                  "value": "Pale Yellow"
                },
                "Appearance": {
                  "value": "Clear"
                },
                "Specific Gravity": {
                  "value": 1.016,
                  "normal_range": "1.010-1.030"
                },
                "pH": {
                  "value": 7.0,
                  "normal_range": "4.8-7.4"
                },
                "Leucocytes": {
                  "value": "Negative"
                },
                "Blood": {
                  "value": "Negative"
                },
                "Nitrite": {
                  "value": "Negative"
                },
                "Protein": {
                  "value": "Negative"
                },
                "Glucose": {
                  "value": "Negative"
                },
                "Ketones": {
                  "value": "Negative"
                },
                "Urobilinogen": {
                  "value": "Negative"
                },
                "White Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 20"
                },
                "Red Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 10"
                },
                "Ephithelial Cell Count": {
                  "value": "None"
                },
                "Bacteria": {
                  "value": "None"
                }
              }
            },
            "Complete Blood Count": {
              "date": "2015-1-1",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Hemoglobin": {
                  "value": 144,
                  "unit": "g/L",
                  "normal_range": "130-180"
                },
                "Red Cell Count": {
                  "value": 5.46,
                  "unit": "10^12/L",
                  "normal_range": "4.50-6.50"
                },
                "HCT": {
                  "value": 0.44,
                  "unit": "L/L",
                  "normal_range": "0.40-0.55"
                },
                "MCV": {
                  "value": 80,
                  "unit": "fL",
                  "normal_range": "78-99"
                },
                "MCH": {
                  "value": 26,
                  "unit": "pg",
                  "normal_range": "27-32"
                },
                "MCHC": {
                  "value": 330,
                  "unit": "g/L",
                  "normal_range": "300-360"
                },
                "RDW-CV": {
                  "value": 13.2,
                  "unit": "%",
                  "normal_range": "11.0-15.0"
                },
                "White Cell Count": {
                  "value": 7.5,
                  "unit": "10^9/L",
                  "normal_range": "4.0-11.0"
                },
                "Netrophils": {
                  "value": 4.05,
                  "unit": "10^9L",
                  "normal_range": "2.0-8.0"
                },
                "Lyphocytes": {
                  "value": 2.70,
                  "unit": "10^9L",
                  "normal_range": "1.0-4.0"
                },
                "Monocytes": {
                  "value": 0.45,
                  "unit": "10^9L",
                  "normal_range": "<= 1.1"
                },
                "Eosinophils": {
                  "value": 0.14,
                  "unit": "10^9L",
                  "normal_range": "<= 0.7"
                },
                "Basophils": {
                  "value": 0.15,
                  "unit": "10^9L",
                  "normal_range": "<= 0.10"
                },
                "Platelet Count": {
                  "value": 191,
                  "unit": "10^9L",
                  "normal_range": "150-400"
                }
              }
            }
          },
          "0000000002": {
            "Urinalysis": {
              "date": "2015-1-1",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Colour": {
                  "value": "Pale Yellow"
                },
                "Appearance": {
                  "value": "Clear"
                },
                "Specific Gravity": {
                  "value": 1.016,
                  "normal_range": "1.010-1.030"
                },
                "pH": {
                  "value": 7.0,
                  "normal_range": "4.8-7.4"
                },
                "Leucocytes": {
                  "value": "Negative"
                },
                "Blood": {
                  "value": "Negative"
                },
                "Nitrite": {
                  "value": "Negative"
                },
                "Protein": {
                  "value": "Negative"
                },
                "Glucose": {
                  "value": "Negative"
                },
                "Ketones": {
                  "value": "Negative"
                },
                "Urobilinogen": {
                  "value": "Negative"
                },
                "White Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 20"
                },
                "Red Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 10"
                },
                "Ephithelial Cell Count": {
                  "value": "None"
                },
                "Bacteria": {
                  "value": "None"
                }
              }
            },
            "Complete Blood Count": {
              "date": "2015-1-1",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Hemoglobin": {
                  "value": 144,
                  "unit": "g/L",
                  "normal_range": "130-180"
                },
                "Red Cell Count": {
                  "value": 5.46,
                  "unit": "10^12/L",
                  "normal_range": "4.50-6.50"
                },
                "HCT": {
                  "value": 0.44,
                  "unit": "L/L",
                  "normal_range": "0.40-0.55"
                },
                "MCV": {
                  "value": 80,
                  "unit": "fL",
                  "normal_range": "78-99"
                },
                "MCH": {
                  "value": 26,
                  "unit": "pg",
                  "normal_range": "27-32"
                },
                "MCHC": {
                  "value": 330,
                  "unit": "g/L",
                  "normal_range": "300-360"
                },
                "RDW-CV": {
                  "value": 13.2,
                  "unit": "%",
                  "normal_range": "11.0-15.0"
                },
                "White Cell Count": {
                  "value": 7.5,
                  "unit": "10^9/L",
                  "normal_range": "4.0-11.0"
                },
                "Netrophils": {
                  "value": 4.05,
                  "unit": "10^9L",
                  "normal_range": "2.0-8.0"
                },
                "Lyphocytes": {
                  "value": 2.70,
                  "unit": "10^9L",
                  "normal_range": "1.0-4.0"
                },
                "Monocytes": {
                  "value": 0.45,
                  "unit": "10^9L",
                  "normal_range": "<= 1.1"
                },
                "Eosinophils": {
                  "value": 0.14,
                  "unit": "10^9L",
                  "normal_range": "<= 0.7"
                },
                "Basophils": {
                  "value": 0.15,
                  "unit": "10^9L",
                  "normal_range": "<= 0.10"
                },
                "Platelet Count": {
                  "value": 191,
                  "unit": "10^9L",
                  "normal_range": "150-400"
                }
              }
            }
          },
          "0000000003": {
            "Urinalysis": {
              "date": "2015-1-1",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Colour": {
                  "value": "Pale Yellow"
                },
                "Appearance": {
                  "value": "Clear"
                },
                "Specific Gravity": {
                  "value": 1.016,
                  "normal_range": "1.010-1.030"
                },
                "pH": {
                  "value": 7.0,
                  "normal_range": "4.8-7.4"
                },
                "Leucocytes": {
                  "value": "Negative"
                },
                "Blood": {
                  "value": "Negative"
                },
                "Nitrite": {
                  "value": "Negative"
                },
                "Protein": {
                  "value": "Negative"
                },
                "Glucose": {
                  "value": "Negative"
                },
                "Ketones": {
                  "value": "Negative"
                },
                "Urobilinogen": {
                  "value": "Negative"
                },
                "White Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 20"
                },
                "Red Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 10"
                },
                "Ephithelial Cell Count": {
                  "value": "None"
                },
                "Bacteria": {
                  "value": "None"
                }
              }
            },
            "Complete Blood Count": {
              "date": "2015-1-1",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Hemoglobin": {
                  "value": 144,
                  "unit": "g/L",
                  "normal_range": "130-180"
                },
                "Red Cell Count": {
                  "value": 5.46,
                  "unit": "10^12/L",
                  "normal_range": "4.50-6.50"
                },
                "HCT": {
                  "value": 0.44,
                  "unit": "L/L",
                  "normal_range": "0.40-0.55"
                },
                "MCV": {
                  "value": 80,
                  "unit": "fL",
                  "normal_range": "78-99"
                },
                "MCH": {
                  "value": 26,
                  "unit": "pg",
                  "normal_range": "27-32"
                },
                "MCHC": {
                  "value": 330,
                  "unit": "g/L",
                  "normal_range": "300-360"
                },
                "RDW-CV": {
                  "value": 13.2,
                  "unit": "%",
                  "normal_range": "11.0-15.0"
                },
                "White Cell Count": {
                  "value": 7.5,
                  "unit": "10^9/L",
                  "normal_range": "4.0-11.0"
                },
                "Netrophils": {
                  "value": 4.05,
                  "unit": "10^9L",
                  "normal_range": "2.0-8.0"
                },
                "Lyphocytes": {
                  "value": 2.70,
                  "unit": "10^9L",
                  "normal_range": "1.0-4.0"
                },
                "Monocytes": {
                  "value": 0.45,
                  "unit": "10^9L",
                  "normal_range": "<= 1.1"
                },
                "Eosinophils": {
                  "value": 0.14,
                  "unit": "10^9L",
                  "normal_range": "<= 0.7"
                },
                "Basophils": {
                  "value": 0.15,
                  "unit": "10^9L",
                  "normal_range": "<= 0.10"
                },
                "Platelet Count": {
                  "value": 191,
                  "unit": "10^9L",
                  "normal_range": "150-400"
                }
              }
            }
          },
          "0000000004": {
            "Urinalysis": {
              "date": "2014-11-21",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Colour": {
                  "value": "Pale Yellow"
                },
                "Appearance": {
                  "value": "Clear"
                },
                "Specific Gravity": {
                  "value": 1.016,
                  "normal_range": "1.010-1.030"
                },
                "pH": {
                  "value": 7.0,
                  "normal_range": "4.8-7.4"
                },
                "Leucocytes": {
                  "value": "Negative"
                },
                "Blood": {
                  "value": "Negative"
                },
                "Nitrite": {
                  "value": "Negative"
                },
                "Protein": {
                  "value": "Negative"
                },
                "Glucose": {
                  "value": "Negative"
                },
                "Ketones": {
                  "value": "Negative"
                },
                "Urobilinogen": {
                  "value": "Negative"
                },
                "White Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 20"
                },
                "Red Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 10"
                },
                "Ephithelial Cell Count": {
                  "value": "None"
                },
                "Bacteria": {
                  "value": "None"
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
                },
                "Red Cell Count": {
                  "value": 5.46,
                  "unit": "10^12/L",
                  "normal_range": "4.50-6.50"
                },
                "HCT": {
                  "value": 0.44,
                  "unit": "L/L",
                  "normal_range": "0.40-0.55"
                },
                "MCV": {
                  "value": 80,
                  "unit": "fL",
                  "normal_range": "78-99"
                },
                "MCH": {
                  "value": 26,
                  "unit": "pg",
                  "normal_range": "27-32"
                },
                "MCHC": {
                  "value": 330,
                  "unit": "g/L",
                  "normal_range": "300-360"
                },
                "RDW-CV": {
                  "value": 13.2,
                  "unit": "%",
                  "normal_range": "11.0-15.0"
                },
                "White Cell Count": {
                  "value": 7.5,
                  "unit": "10^9/L",
                  "normal_range": "4.0-11.0"
                },
                "Netrophils": {
                  "value": 4.05,
                  "unit": "10^9L",
                  "normal_range": "2.0-8.0"
                },
                "Lyphocytes": {
                  "value": 2.70,
                  "unit": "10^9L",
                  "normal_range": "1.0-4.0"
                },
                "Monocytes": {
                  "value": 0.45,
                  "unit": "10^9L",
                  "normal_range": "<= 1.1"
                },
                "Eosinophils": {
                  "value": 0.14,
                  "unit": "10^9L",
                  "normal_range": "<= 0.7"
                },
                "Basophils": {
                  "value": 0.15,
                  "unit": "10^9L",
                  "normal_range": "<= 0.10"
                },
                "Platelet Count": {
                  "value": 191,
                  "unit": "10^9L",
                  "normal_range": "150-400"
                }
              }
            }
          },
          "0000000005": {
            "Urinalysis": {
              "date": "2014-10-21",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Colour": {
                  "value": "Pale Yellow"
                },
                "Appearance": {
                  "value": "Clear"
                },
                "Specific Gravity": {
                  "value": 1.031,
                  "normal_range": "1.010-1.030"
                },
                "pH": {
                  "value": 7.0,
                  "normal_range": "4.8-7.4"
                },
                "Leucocytes": {
                  "value": "Negative"
                },
                "Blood": {
                  "value": "Negative"
                },
                "Nitrite": {
                  "value": "Negative"
                },
                "Protein": {
                  "value": "Negative"
                },
                "Glucose": {
                  "value": "Negative"
                },
                "Ketones": {
                  "value": "Negative"
                },
                "Urobilinogen": {
                  "value": "Negative"
                },
                "White Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 20"
                },
                "Red Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 10"
                },
                "Ephithelial Cell Count": {
                  "value": "None"
                },
                "Bacteria": {
                  "value": "None"
                }
              }
            },
            "Complete Blood Count": {
              "date": "2014-12-13",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Hemoglobin": {
                  "value": 201,
                  "unit": "g/L",
                  "normal_range": "130-180"
                },
                "Red Cell Count": {
                  "value": 5.46,
                  "unit": "10^12/L",
                  "normal_range": "4.50-6.50"
                },
                "HCT": {
                  "value": 0.44,
                  "unit": "L/L",
                  "normal_range": "0.40-0.55"
                },
                "MCV": {
                  "value": 80,
                  "unit": "fL",
                  "normal_range": "78-99"
                },
                "MCH": {
                  "value": 26,
                  "unit": "pg",
                  "normal_range": "27-32"
                },
                "MCHC": {
                  "value": 330,
                  "unit": "g/L",
                  "normal_range": "300-360"
                },
                "RDW-CV": {
                  "value": 13.2,
                  "unit": "%",
                  "normal_range": "11.0-15.0"
                },
                "White Cell Count": {
                  "value": 7.5,
                  "unit": "10^9/L",
                  "normal_range": "4.0-11.0"
                },
                "Netrophils": {
                  "value": 4.05,
                  "unit": "10^9L",
                  "normal_range": "2.0-8.0"
                },
                "Lyphocytes": {
                  "value": 2.70,
                  "unit": "10^9L",
                  "normal_range": "1.0-4.0"
                },
                "Monocytes": {
                  "value": 0.45,
                  "unit": "10^9L",
                  "normal_range": "<= 1.1"
                },
                "Eosinophils": {
                  "value": 0.14,
                  "unit": "10^9L",
                  "normal_range": "<= 0.7"
                },
                "Basophils": {
                  "value": 0.15,
                  "unit": "10^9L",
                  "normal_range": "<= 0.10"
                },
                "Platelet Count": {
                  "value": 191,
                  "unit": "10^9L",
                  "normal_range": "150-400"
                }
              }
            }
          },
          "0000000006": {
            "Urinalysis": {
              "date": "2014-3-11",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Colour": {
                  "value": "Pale Yellow"
                },
                "Appearance": {
                  "value": "Clear"
                },
                "Specific Gravity": {
                  "value": 1.031,
                  "normal_range": "1.010-1.030"
                },
                "pH": {
                  "value": 7.0,
                  "normal_range": "4.8-7.4"
                },
                "Leucocytes": {
                  "value": "Negative"
                },
                "Blood": {
                  "value": "Negative"
                },
                "Nitrite": {
                  "value": "Negative"
                },
                "Protein": {
                  "value": "Negative"
                },
                "Glucose": {
                  "value": "Negative"
                },
                "Ketones": {
                  "value": "Negative"
                },
                "Urobilinogen": {
                  "value": "Negative"
                },
                "White Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 20"
                },
                "Red Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 10"
                },
                "Ephithelial Cell Count": {
                  "value": "None"
                },
                "Bacteria": {
                  "value": "None"
                }
              }
            },
            "Complete Blood Count": {
              "date": "2014-3-9",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Hemoglobin": {
                  "value": 201,
                  "unit": "g/L",
                  "normal_range": "130-180"
                },
                "Red Cell Count": {
                  "value": 5.46,
                  "unit": "10^12/L",
                  "normal_range": "4.50-6.50"
                },
                "HCT": {
                  "value": 0.44,
                  "unit": "L/L",
                  "normal_range": "0.40-0.55"
                },
                "MCV": {
                  "value": 80,
                  "unit": "fL",
                  "normal_range": "78-99"
                },
                "MCH": {
                  "value": 26,
                  "unit": "pg",
                  "normal_range": "27-32"
                },
                "MCHC": {
                  "value": 330,
                  "unit": "g/L",
                  "normal_range": "300-360"
                },
                "RDW-CV": {
                  "value": 13.2,
                  "unit": "%",
                  "normal_range": "11.0-15.0"
                },
                "White Cell Count": {
                  "value": 7.5,
                  "unit": "10^9/L",
                  "normal_range": "4.0-11.0"
                },
                "Netrophils": {
                  "value": 4.05,
                  "unit": "10^9L",
                  "normal_range": "2.0-8.0"
                },
                "Lyphocytes": {
                  "value": 2.70,
                  "unit": "10^9L",
                  "normal_range": "1.0-4.0"
                },
                "Monocytes": {
                  "value": 0.45,
                  "unit": "10^9L",
                  "normal_range": "<= 1.1"
                },
                "Eosinophils": {
                  "value": 0.14,
                  "unit": "10^9L",
                  "normal_range": "<= 0.7"
                },
                "Basophils": {
                  "value": 0.15,
                  "unit": "10^9L",
                  "normal_range": "<= 0.10"
                },
                "Platelet Count": {
                  "value": 191,
                  "unit": "10^9L",
                  "normal_range": "150-400"
                }
              }
            }
          },
          "0000000007": {
            "Urinalysis": {
              "date": "2016-6-28",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Colour": {
                  "value": "Pale Yellow"
                },
                "Appearance": {
                  "value": "Clear"
                },
                "Specific Gravity": {
                  "value": 1.031,
                  "normal_range": "1.010-1.030"
                },
                "pH": {
                  "value": 7.0,
                  "normal_range": "4.8-7.4"
                },
                "Leucocytes": {
                  "value": "Negative"
                },
                "Blood": {
                  "value": "Negative"
                },
                "Nitrite": {
                  "value": "Negative"
                },
                "Protein": {
                  "value": "Negative"
                },
                "Glucose": {
                  "value": "Negative"
                },
                "Ketones": {
                  "value": "Negative"
                },
                "Urobilinogen": {
                  "value": "Negative"
                },
                "White Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 20"
                },
                "Red Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 10"
                },
                "Ephithelial Cell Count": {
                  "value": "None"
                },
                "Bacteria": {
                  "value": "None"
                }
              }
            },
            "Complete Blood Count": {
              "date": "2015-4-2",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Hemoglobin": {
                  "value": 201,
                  "unit": "g/L",
                  "normal_range": "130-180"
                },
                "Red Cell Count": {
                  "value": 5.46,
                  "unit": "10^12/L",
                  "normal_range": "4.50-6.50"
                },
                "HCT": {
                  "value": 0.44,
                  "unit": "L/L",
                  "normal_range": "0.40-0.55"
                },
                "MCV": {
                  "value": 80,
                  "unit": "fL",
                  "normal_range": "78-99"
                },
                "MCH": {
                  "value": 26,
                  "unit": "pg",
                  "normal_range": "27-32"
                },
                "MCHC": {
                  "value": 330,
                  "unit": "g/L",
                  "normal_range": "300-360"
                },
                "RDW-CV": {
                  "value": 13.2,
                  "unit": "%",
                  "normal_range": "11.0-15.0"
                },
                "White Cell Count": {
                  "value": 7.5,
                  "unit": "10^9/L",
                  "normal_range": "4.0-11.0"
                },
                "Netrophils": {
                  "value": 4.05,
                  "unit": "10^9L",
                  "normal_range": "2.0-8.0"
                },
                "Lyphocytes": {
                  "value": 2.70,
                  "unit": "10^9L",
                  "normal_range": "1.0-4.0"
                },
                "Monocytes": {
                  "value": 0.45,
                  "unit": "10^9L",
                  "normal_range": "<= 1.1"
                },
                "Eosinophils": {
                  "value": 0.14,
                  "unit": "10^9L",
                  "normal_range": "<= 0.7"
                },
                "Basophils": {
                  "value": 0.15,
                  "unit": "10^9L",
                  "normal_range": "<= 0.10"
                },
                "Platelet Count": {
                  "value": 191,
                  "unit": "10^9L",
                  "normal_range": "150-400"
                }
              }
            }
          },
          "0000000008": {
            "Urinalysis": {
              "date": "2015-3-3",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Colour": {
                  "value": "Pale Yellow"
                },
                "Appearance": {
                  "value": "Clear"
                },
                "Specific Gravity": {
                  "value": 1.031,
                  "normal_range": "1.010-1.030"
                },
                "pH": {
                  "value": 7.0,
                  "normal_range": "4.8-7.4"
                },
                "Leucocytes": {
                  "value": "Negative"
                },
                "Blood": {
                  "value": "Negative"
                },
                "Nitrite": {
                  "value": "Negative"
                },
                "Protein": {
                  "value": "Negative"
                },
                "Glucose": {
                  "value": "Negative"
                },
                "Ketones": {
                  "value": "Negative"
                },
                "Urobilinogen": {
                  "value": "Negative"
                },
                "White Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 20"
                },
                "Red Blood Cell Count": {
                  "value": 0,
                  "unit": "/uL",
                  "normal_range": "< 10"
                },
                "Ephithelial Cell Count": {
                  "value": "None"
                },
                "Bacteria": {
                  "value": "None"
                }
              }
            },
            "Complete Blood Count": {
              "date": "2015-3-16",
              "location": "MyHealth Clinic",
              "physician": "Dr. Dexter Morgan",
              "data": {
                "Hemoglobin": {
                  "value": 201,
                  "unit": "g/L",
                  "normal_range": "130-180"
                },
                "Red Cell Count": {
                  "value": 5.46,
                  "unit": "10^12/L",
                  "normal_range": "4.50-6.50"
                },
                "HCT": {
                  "value": 0.44,
                  "unit": "L/L",
                  "normal_range": "0.40-0.55"
                },
                "MCV": {
                  "value": 80,
                  "unit": "fL",
                  "normal_range": "78-99"
                },
                "MCH": {
                  "value": 26,
                  "unit": "pg",
                  "normal_range": "27-32"
                },
                "MCHC": {
                  "value": 330,
                  "unit": "g/L",
                  "normal_range": "300-360"
                },
                "RDW-CV": {
                  "value": 13.2,
                  "unit": "%",
                  "normal_range": "11.0-15.0"
                },
                "White Cell Count": {
                  "value": 7.5,
                  "unit": "10^9/L",
                  "normal_range": "4.0-11.0"
                },
                "Netrophils": {
                  "value": 4.05,
                  "unit": "10^9L",
                  "normal_range": "2.0-8.0"
                },
                "Lyphocytes": {
                  "value": 2.70,
                  "unit": "10^9L",
                  "normal_range": "1.0-4.0"
                },
                "Monocytes": {
                  "value": 0.45,
                  "unit": "10^9L",
                  "normal_range": "<= 1.1"
                },
                "Eosinophils": {
                  "value": 0.14,
                  "unit": "10^9L",
                  "normal_range": "<= 0.7"
                },
                "Basophils": {
                  "value": 0.15,
                  "unit": "10^9L",
                  "normal_range": "<= 0.10"
                },
                "Platelet Count": {
                  "value": 191,
                  "unit": "10^9L",
                  "normal_range": "150-400"
                }
              }
            }
          }
        }
      }.to_json

      report = HTTParty.post("http://localhost:80/save",
      { 
        :headers => {
          "Content-Type" => "application/json"
        },
        :body => report_list
      })
      
      if report["status"] != 200
        puts report["message"]
      end

      if report["data"] 
        puts report["data"]["success_count"].to_s + ' report/s successful.'
        puts report["data"]["fail_count"].to_s + ' report/s failed.'
      end
    else
      puts token["message"]
    end
  end
end
