c.url.searchengines = {
    'DEFAULT':  'https://google.com/search?hl=en&q={}',
    '!a':       'https://www.amazon.com/s?k={}',
    '!d':       'https://duckduckgo.com/?ia=web&q={}',
    '!dd':      'https://thefreedictionary.com/{}',
    '!gh':      'https://github.com/search?o=desc&q={}&s=stars',
    '!gist':    'https://gist.github.com/search?q={}',
    '!t':       'https://www.thesaurus.com/browse/{}',
    '!tw':      'https://twitter.com/search?q={}',
    '!w':       'https://en.wikipedia.org/wiki/{}',
    '!yt':      'https://www.youtube.com/results?search_query={}',
    '!r':       'https://www.https://wiki.archlinux.org/index.php?search={}'
}

config.load_autoconfig()

c.url.start_pages = ['https://google.com/']
config.bind('<Ctrl-v>', 'spawn mpv {url}')
config.bind('<Ctrl-z>', 'Back')

config.source('qutebrowser-themes/themes/onedark.py')
