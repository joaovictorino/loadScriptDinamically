from abstractLogger import AbstractLogger

class VerticalLogger(AbstractLogger):

    def log(self, text):
        with open("./logs/vlogger.txt", "a+") as file:
            file.write(f"{text}\n")