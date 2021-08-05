package dbtest;

import dbconnection.sqlqueries.Select;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertTrue;


public class QueryTest {

    @Test
    public void testSQL(){
        assertTrue(new Select().forLogin("fghklj@inbox.ru","Nihat291%"),"true");
    }

}
