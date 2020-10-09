from abstractLogger import AbstractLogger

# SRP
class VerticalLogger(AbstractLogger):

    def log(self, text):
        with open("./logs/vlogger.txt", "a+") as file:
            file.write(f"{text}\n")