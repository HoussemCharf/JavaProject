package profileView;

import database.DBConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import admin.AdminTable;

/**
 * Created by TekSliveron 8/13/2018.
 */
public class Info {
    private String id,name,department,cgpa,vemail,dob,email,phone;
    private String gname,gemail,gphone,address;

    DBConnection database = new DBConnection();
    Connection connection;
    Statement statement;
    ResultSet resultSet;

    public Info() {
    }

    public Info(String id) {
        this.id = id;
        setOtherField();

    }


    private void setOtherField(){
        try {
        	String query="select * from student where dbStudentID='"+this.id+"';";
            connection = database.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            while(resultSet.next()){
                        //resultSet.getInt("dbStudentSerialNo");
                        this.name=resultSet.getString("dbStudentFname")+" "+resultSet.getString("dbStudentLname");
                        this.vemail=resultSet.getString("dbStudentEmail");
                        this.department=resultSet.getString("dbStudentDepartment");
                        this.cgpa= resultSet.getString("dbStudentCgpa");
                        this.phone=resultSet.getString("dbStudentPhone");
                        this.dob=resultSet.getString("dbStudentDOB");
                        // gardian assignment 
                        this.gname=resultSet.getString("dbGuardianFname")+" "+resultSet.getString("dbGuardianLname");
                        this.gemail=resultSet.getString("dbGuardianEmail");
                        this.gphone=resultSet.getString("dbGuardianPhone");
                        this.address=resultSet.getString("dbStudentAddress");


            }
            // close connection.
            connection.close();
            statement.close();
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }




    public String getId() {
        return id.substring(0,3)+" "+id.substring(3,6)+" "+id.substring(6);
    }

    public String getfullId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public String getDepartment() {
        return department;
    }

    public String getCgpa() {
        return "("+cgpa+")";
    }

    public String getVemail() {
        return vemail;
    }

    public String getDob() {
        return dob;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getGname() {
        return gname;
    }

    public String getGemail() {
        return gemail;
    }

    public String getGphone() {
        return gphone;
    }

    public String getAddress() {
        return address;
    }


}
