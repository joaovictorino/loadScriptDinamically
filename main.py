from factoryLogger import FactoryLogger

if __name__ == "__main__":
    logger = FactoryLogger().create()
    logger.log("teste 123456")
    logger.log("teste 654321")