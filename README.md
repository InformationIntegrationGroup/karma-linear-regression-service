Karma-Linear-Regression-Service
===========================

A RESTful service for Linear Regression implementation 'lm' in R.

### Setting up the service

* Compile and create WAR file:

    + Open Terminal and go to *lm-service* folder
    + Run *mvn clean package*
    

* Copy the WAR file from *lm-service/target/* to *webapps* folder of Tomcat
* Start the Tomcat server

### Running the service
    
* To train and create a Linear Regression model:

    + Send a POST request with payload as contents of the training data in CSV format to

        http://**host-name**:**port**/lm-service/api/lm/train

    + By default, the last column is assumed to contain the class labels
    + To specify column-number of class labels, add *classColumnNumber* parameter:

        http://**host-name**:**port**/lm-service/api/lm/train?classColumnNumber=**column-number**

    + The response will contain a summary of the training phase and the name of the created model at its bottom
    + Note down the model name (which starts with 'LM' and ends with 'model')

* To test a model:

    + Send a POST request with payload as contents of the testing data in CSV format to

        http://**host-name**:**port**/lm-service/api/lm/test?modelName=**model-name**

    + To specify column-number of class labels, add *classColumnNumber* parameter:

        http://**host-name**:**port**/lm-service/api/lm/test?modelName=**model-name**&classColumnNumber=**column-number**
