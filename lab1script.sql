-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`client` (
  `idclient` INT NOT NULL,
  `email` VARCHAR(40) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `address` VARCHAR(40) NOT NULL,
  `city` VARCHAR(40) NOT NULL,
  `state` VARCHAR(40) NOT NULL,
  `country` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`idclient`));


-- -----------------------------------------------------
-- Table `mydb`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`car` (
  `idcar` INT NOT NULL,
  `brand` VARCHAR(40) NOT NULL,
  `model` VARCHAR(40) NOT NULL,
  `vin` VARCHAR(40) NOT NULL,
  `color` VARCHAR(40) NULL,
  `year` INT NOT NULL,
  PRIMARY KEY (`idcar`));


-- -----------------------------------------------------
-- Table `mydb`.`sellers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sellers` (
  `idseller` INT NOT NULL,
  `nameseller` VARCHAR(40) NOT NULL,
  `namestore` VARCHAR(40) NULL,
  PRIMARY KEY (`idseller`));


-- -----------------------------------------------------
-- Table `mydb`.`bills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`bills` (
  `idbill` INT NOT NULL,
  `numberbill` VARCHAR(40) NOT NULL,
  `date` DATE NOT NULL,
  `idcar` INT NOT NULL,
  `idclient` INT NOT NULL,
  `idseller` INT NOT NULL,
  PRIMARY KEY (`idbill`),
  INDEX `idclient_idx` (`idclient` ASC) VISIBLE,
  INDEX `idseller_idx` (`idseller` ASC) VISIBLE,
  INDEX `idcar_idx` (`idcar` ASC) VISIBLE,
  CONSTRAINT `idclient`
    FOREIGN KEY (`idclient`)
    REFERENCES `mydb`.`client` (`idclient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idseller`
    FOREIGN KEY (`idseller`)
    REFERENCES `mydb`.`sellers` (`idseller`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idcar`
    FOREIGN KEY (`idcar`)
    REFERENCES `mydb`.`car` (`idcar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
