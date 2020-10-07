from abstractLogger import AbstractLogger

class FactoryLogger():

    def create(self) -> AbstractLogger:
        file = open("config.cfg", "r")
        name = file.read()
        return self.__my_import(name)()


    def __my_import(self, name):
        components = name.split('.')
        mod = __import__(components[0])
        for comp in components[1:]:
            mod = getattr(mod, comp)
        return mod