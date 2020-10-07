import abc

# ISP
class AbstractLogger(abc.ABC):
    
    @abc.abstractmethod
    def log(self, text):
        pass