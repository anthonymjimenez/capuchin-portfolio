from flask_nav import Nav
from flask_nav.elements import Navbar, View

# To keep things clean, we keep our Flask-Nav instance in here. We will define
# frontend-specific navbars in the respective frontend, but it is also possible
# to put share navigational items in here.

nav = Nav()


@nav.navigation()
def mynavbar():
    return Navbar(
        'mysite',
        View('Home', 'index'),
        View("Anthony", 'ant'),
    )


nav
