package database;

import java.sql.*;

public class dbDAO {
    private final String username;
    private final String password;
    private final String databaseURL;

    public dbDAO() {
        username = ConnParams.username;
        password = ConnParams.password;
        databaseURL = ConnParams.databaseURL;

        try {
            Class.forName(ConnParams.jdbcDriver);
        } catch (Exception e) {
            System.out.print(e.getMessage());
        }
    }

    public Connection openConnection(String database) throws SQLException {
        Connection dbConn = DriverManager.getConnection(databaseURL + database, username, password);
        return dbConn;
    }

    public void closeConnection(Connection dbConn) throws SQLException {
        if (dbConn != null) {
            dbConn.close();
        }
    }
}
