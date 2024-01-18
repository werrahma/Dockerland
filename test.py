# name = 'john smith'
# age = 20
# patient = True

# print ( name, ' ' ,age, ' ', patient)

# print ("hello world")
# if input('put ur name ') == 'walid':
#     print ('am here')
# elif input () == 'khalid':
#     print('am not here')

# string1 = input('put ur name ')
# favourite_color = input ('ur favourite color ')
# print (string1 + ' likes ' + favourite_color)

string = 'walid'

str = '''
"start" to start the car
"stop" to stop the car 
"q" to quit '''
while 1:
    string = input('put help: ')
    if string == 'help':
        print(str)
    elif string == 'start':
        print ('car stopped')
    elif string == 'stop':
        print ('car started')
    elif string == 'q':
        break
    else:

        print ("i don't understand that")