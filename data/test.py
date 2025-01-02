from faker import Faker
from decouple import config
from icecream import ic

faker = Faker()

def create_user_email():
    email = faker.email()
    return email


fullName = faker.name()
print(f'Full name: {fullName}')
nameSplit = fullName.split(' ')
# firstName = nameSplit[0]
# lastName = nameSplit[1]
print(f'First name is {nameSplit[0]}, and Second name is {nameSplit[1]}')

Address = faker.address()
print(f'Address: {Address}')


contact = faker.basic_phone_number()
print(f'Phone number: {contact}')


stringText = 'my name is John Doe, welcome to the new world'

print(stringText.split(' '))


BROWSERSTACK_USERNAME = config('BROWSERSTACK_USERNAME')
BROWSERSTACK_ACCESS_KEY = config('BROWSERSTACK_ACCESS_KEY')
BROWSERSTACK_APP_ID = config('BROWSERSTACK_APP_ID')
BROWSERSTACK_BUILD_NAME = config('BROWSERSTACK_BUILD_NAME')
PLATFORM_NAME = config('PLATFORM_NAME')
OS_VERSION = config('OS_VERSION')
DEVICE = config('DEVICE')
TIMEOUT = config('TIMEOUT', default=60, cast=int)  # Default value and casting to int
AUTO_DISMISS_ALERTS = config('AUTO_DISMISS_ALERTS', default=True, cast=bool)
ENABLE_MULTI_WINDOWS = config('ENABLE_MULTI_WINDOWS', default=True, cast=bool)
TEST_APP=config('TEST_APP')
TEST_NAME=config('TEST_NAME')

# ic(BROWSERSTACK_USERNAME, BROWSERSTACK_ACCESS_KEY, BROWSERSTACK_APP_ID, BROWSERSTACK_BUILD_NAME, DEVICE, OS_VERSION, PLATFORM_NAME, AUTO_DISMISS_ALERTS, ENABLE_MULTI_WINDOWS)


create_user_email()
