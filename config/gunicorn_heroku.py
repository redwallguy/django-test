#  Heroku gunicorn config
import os

bind = os.environ['PORT']

if bind.startswith('/'):
    bind = 'unix:' + bind
