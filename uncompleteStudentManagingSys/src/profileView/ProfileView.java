package profileView;

import database.DBConnection;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.Event;
import javafx.fxml.FXML;
import javafx.scene.chart.LineChart;
import javafx.scene.chart.XYChart;
import javafx.scene.chart.XYChart.Data;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.text.Text;

import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by TekSliveron 8/13/2018.
 */
public class ProfileView {

    @FXML
    private ImageView profilePic;

    @FXML
    Text tID;
    @FXML
    Text tName;
    @FXML
    Text tDepartment;
    @FXML
    Text tCGPA;
    @FXML
    Text tDOB;
    @FXML
    Text tEmail;
    @FXML
    Text tVEmail;
    @FXML
    Text tPhone;
    @FXML
    Text tAddress;
    @FXML
    Text tGName;
    @FXML
    Text tGEmail;
    @FXML
    Text tGPhone;

    DBConnection database = new DBConnection();
    Connection connection;
    Statement statement;
    ResultSet resultSet;

    @FXML
    private LineChart<String,Number> gpaVisualization;



    private Info currentInfo;

    public void setCurrentInfo(Info currentInfo) {
       //add code
    	this.currentInfo = currentInfo;//new Info (currentInfo.getfullId());
    	tID.setText(currentInfo.getId());
    	
    	tName.setText(currentInfo.getName());
    	tDepartment.setText(currentInfo.getDepartment());
    	tCGPA.setText(currentInfo.getCgpa());
    	tDOB.setText(currentInfo.getDob());
    	tEmail.setText(currentInfo.getEmail());
    	tVEmail.setText(currentInfo.getVemail());
    	tPhone.setText(currentInfo.getPhone());
    	tAddress.setText(currentInfo.getAddress());
    	tGName.setText(currentInfo.getGname());
    	tGEmail.setText(currentInfo.getGemail());
    	tGPhone.setText(currentInfo.getGphone());
    	
    	
        try {
            Image image = new Image("/image/"+currentInfo.getfullId()+".jpg");
            profilePic.setImage(image);
        }
        catch (Exception e){
            profilePic.setImage(new Image("/image/default-user-icon.png"));
        }

    }
    private boolean isEmpty(double x) {
    	if (x == 0){
    		return false;
    	}
    	return true;
    }

    @FXML
    private void setLoadGpaButtonClcik(Event event){
        gpaVisualization.getData().clear();
        XYChart.Series<String,Number> gpaLineChart = new XYChart.Series<String,Number>();

       
        // add code
        // you are going to select all GPA in this query from sem 1 to 12
    	String sqlQuery = "select * from student where dbStudentID= "+currentInfo.getfullId();
        // 	handling the chart!
        // read XYchart documentation please why you do dis!!! why me!!!
        try {

            connection = database.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sqlQuery);
            while (resultSet.next()){

				for (int i=1;i<12;i++) {
					if (resultSet.getDouble("dbStudent"+i+"thSemGpa") >0)
						gpaLineChart.getData().add(new XYChart.Data<String, Number>("S"+i,resultSet.getDouble("dbStudent"+i+"thSemGpa")));
            	}
            }

        }

        catch (SQLException e) {
            e.printStackTrace();
        }
        gpaVisualization.getData().add(gpaLineChart);
    }

}
