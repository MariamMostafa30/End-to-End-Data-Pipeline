import configparser

config = configparser.ConfigParser()
# Add the structure to the file we will create
config.add_section('AWS_IAM_USER')
config.set('AWS_IAM_USER', 'ACCESS_KEY', '')
config.set('AWS_IAM_USER', 'SECRET_KEY', '')


# Write the new structure to the new file
with open(r"configfile.ini", 'w') as configfile:
    config.write(configfile)