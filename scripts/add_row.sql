DELIMITER //

USE check

SET GLOBAL event_scheduler = ON;
CREATE EVENT add_when_empty_3
	ON SCHEDULE EVERY 1 HOUR
	DO
		BEGIN IF(SELECT COUNT(*) < 80 FROM log) THEN
			INSERT INTO log (datetime, varchar) values (curdate(), "filler");
		END IF;
END //
