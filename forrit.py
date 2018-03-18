from bottle import route, run, os

@route("/")
def index():
    return "<a href = 'about'> About</a>\n" \
           "<a href = 'bio'> Biography</a>\n" \
           "<a href = 'pictures'> Pictures</a>\n"

@route("/about")
def about():
    return "Um okkur"

@route("/bio")
def bio():
    return "Hér er Biography"

@route("/pictures")
def pictures():
    return "Hér verða myndir"

run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))

