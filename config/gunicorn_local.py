#  Gunicorn application handling django-test
import multiprocessing

bind = "unix:/Users/devmoney/DesktopDir/Programming/run/test.devmoney.com.sock"
workers = multiprocessing.cpu_count() * 2 + 1
