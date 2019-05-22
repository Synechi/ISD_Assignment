package uts.isd.model.dao;

import java.sql.Connection;

/**
 * Super class of DAO classes that manager connection and operation with the database
 * @author George
 */
public abstract class DB {
    protected String URL = "isd-assignment.mysql.database.azure.com";//replace empty-string with jdbc:derby local host url
    protected String db = "isd-assignment";//name of the database
    protected String dbuser = "isd_assignment@isd-assignment";//db root user
    protected String dbpass = "Password$2019"; //db root password
    protected String driver = "com.mysql.jdbc.Driver"; //jdbc client driver - built in with NetBeans
    protected Connection conn; //connection null-instance to be initialized in sub-classes
}
