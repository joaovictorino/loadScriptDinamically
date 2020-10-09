from abstractLogger import AbstractLogger

class VerticalLoggerProblem(AbstractLogger):

    def log(self, text):
        if(len(text) < 10):
            with open("vlogger.txt", "a+") as file:
                file.write(f"{text}\n")
        else:
            raise Exception("log excede tamanho permitido")
        