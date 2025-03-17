from libs.utils import get_host
from .base import *

DEBUG = False

ALLOWED_HOSTS = ['localhost', get_host(APP_URL)]
CSRF_TRUSTED_ORIGIN=[
    APP_URL
]

STATICFILES_STORAGE = "whitenoise.storage.CompressedManifestStaticFilesStorage"

STATIC_ROOT = "staticfiles"