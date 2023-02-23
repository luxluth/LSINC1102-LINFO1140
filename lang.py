import locale, os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
LANG_DIR = os.path.join(BASE_DIR, "lang")
DEFAULT_LANGUAGE = "en"
LANGUAGE = locale.getlocale()[0].split("_")[0]

DEFAULT = {'T_TITLE': 'Testing', 'T_PASS': 'passed', 'T_FAIL': 'failed', 'T_END_PASS': 'passed', 'T_END_FAIL': 'failed'}

class Dictionary:
    def __init__(self, lang: str=LANGUAGE):
        self.lang = lang
        self.dict = self.load_dict()

    def load_dict(self):
        data = ""
        try:
            with open(f"{LANG_DIR}/{self.lang}.txt", "r") as f:
                data = f.readlines()
        except Exception as e:
            print(e)
            return DEFAULT
        d = {}
        for line in data:
            key, value = line.split(",")
            d[key] = value.replace("\n", "")
        return d
    def get(self, key: str):
        return self.dict[key]
