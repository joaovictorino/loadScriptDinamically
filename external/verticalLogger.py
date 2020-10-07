from abstractLogger import AbstractLogger

class VerticalLogger(AbstractLogger):

    def log(self, text):
        with open("vlogger.txt", "a+") as file:
            file.write(f"{text}\n")