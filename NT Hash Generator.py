import hashlib, binascii, getpass
mu = True
un = 0
with open('hashed', 'w+') as hf:
    while mu:
        un += 1
        username = input("Please enter a fake username: ")
        password = getpass.getpass(prompt='Please enter a fake password: ')
        hp = str(binascii.hexlify(hashlib.new('md4', password.encode('utf-16le')).digest())).replace('b\'', '').replace('\'', '')
        hf.write('%s:%i::%s:::\n' % (username, un, hp))
        print('%s:%i::%s:::' % (username, un, hp))
        tf = input("Do you want to add another user: ")
        if "y" not in tf:
            mu = False
input("File with usernames and hashed passwords has been created, Press Enter to close:")
