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

    public ResultSet createRunSelectQuery(dbDAO db, String dbSchema, String dbTable, String[] selectionCriteria, String extraCriteria) throws SQLException {
        Connection conn = null;
        ResultSet rs = null;

        try {
            conn = db.openConnection(dbSchema);

            String sqlText = "SELECT ";
            for (int i = 0; i < selectionCriteria.length; i++) {
                if (i == selectionCriteria.length-1) {
                    sqlText += selectionCriteria[i];
                } else {
                    sqlText += selectionCriteria[i] + ", ";
                }
            }
            sqlText += " FROM " + dbTable;
            if (extraCriteria != null) {
                sqlText += " " + extraCriteria; // used for specific WHERE, ORDER BY, etc.
            }
            Statement stmt = conn.createStatement();

//            PreparedStatement ps = conn.prepareStatement(sqlText);
//            ps.setString(1, asdf);
//            ps.SetString(2, fdsa);
//            ResultSet rs = ps.executeQuery();

            rs = stmt.executeQuery(sqlText);

        } catch (SQLException sqle) {
            // catch SQL Exception
        } finally {
            db.closeConnection(conn);
        }
        return rs;
    }
}
