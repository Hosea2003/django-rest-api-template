from urllib.parse import urlparse

def get_host(url):
    return urlparse(url).hostname