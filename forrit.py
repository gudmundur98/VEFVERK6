
from bottle import route, run, template, static_file,error, os, request
allar_pantanir = []

@route('/')
def panta():
    return template('panta')

@route('/new_user')
def new_user():
    return template('signup')

@route('/new_user/login', method='POST')
def new_user():
    userexists = False
    email = request.forms.email
    user = request.forms.user
    passwd = request.forms.passwd
    newuser = {'email': email, 'user': user, 'passwd': passwd}
    import json
    with open('users.json', 'r', encoding='utf-8') as f:
        userdata = json.load(f)

    for x in userdata['users']:
        if x['email'] == newuser['email']:
            userexists = True
    if not userexists:
        userdata['users'].append(newuser)

    if not userexists:
        with open('users.json', 'w', encoding='utf-8') as f:
            json.dump(userdata, f)

    return template('user', userexists=userexists, user=user, netfang=email)

@route('/kvittun')
def order():
    fullname = request.query.name
    heimilisfang = request.query.heimilisfang
    simi = request.query.simi
    mail = request.query.email
    pizzasize = request.query.pizzasize
    alegg = request.query.getall('alegg')
    print(alegg)

    if pizzasize == '9':
        pizzuverd = (1000 + (200* len(alegg)))
        pizzuverd_vask = (1000 + (200 * len(alegg))) * 1.25

    elif pizzasize == '12':
        pizzuverd = (1500 + (200 * len(alegg)))
        pizzuverd_vask = (1500 + (200 * len(alegg))) * 1.25

    elif pizzasize == '16':
        pizzuverd = (2000 + (200 * len(alegg)))
        pizzuverd_vask = (2000 + (200 * len(alegg))) * 1.25
    if alegg == []:
        alegg.append('margarita')
    pontun= {'Nafn':fullname,'Heimilisfang':heimilisfang,'simi':simi,'mail':mail,'pizzasize':pizzasize,'alegg':alegg,'heildarverd':pizzuverd,'heildarverd-vask':pizzuverd_vask}
    return template('kvittun',pantanir=pontun)

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./resources')

@error(404)
def error404(error):
    return template('error')

@error(500)
def error500(error):
    return template('error')

run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
