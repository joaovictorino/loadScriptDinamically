from abstractLogger import AbstractLogger

# SRP LSP
class HorizontalLogger(AbstractLogger):

    def log(self, text):
        with open("hlogger.txt", "a+") as file:
            file.write(f"{text} ")