Exam System - lib folder

Place external JARs required at runtime in this folder. The application needs the MySQL JDBC driver (Connector/J) to connect to the database.

Steps:

1. Download the MySQL Connector/J JAR from https://dev.mysql.com/downloads/connector/j/
2. Copy the downloaded file (for example `mysql-connector-java-8.0.33.jar`) into this directory.
3. If you run from the command line, include the JAR on the classpath. Example (Windows cmd):

```bat
cd "Exam System"
javac -d bin -cp "lib\mysql-connector-java-8.0.33.jar" src\controller\*.java src\model\*.java src\view\*.java
java -cp "bin;lib\mysql-connector-java-8.0.33.jar" view.LoginView
```

If you use the provided `pom.xml`, Maven will download the driver automatically and you don't need to place the JAR here for Maven builds. This folder remains useful for running the project manually or from editors that do not use Maven.
