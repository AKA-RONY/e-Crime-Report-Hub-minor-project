# e-Crime-Report-Hub: Online FIR Filing and Case Management System
The E-CRIME REPORT HUB represents a technological advancement aimed at revolutionizing the conventional method of filing First Information Reports (FIRs) and managing crime-related incidents. This project endeavors to bridge the gap between victims of crimes and law enforcement agencies by introducing an intuitive and accessible online platform that facilitates seamless FIR filing and efficient case management.

At its core, the E-CRIME REPORT HUB is designed to alleviate the constraints associated with the traditional manual filing process. Leveraging Java EE technologies, including JavaServer Pages (JSP), Servlets, and JavaScript for client-side validation, the platform offers users a user-friendly interface for registration, FIR filing, and access to comprehensive crime-related information.

The platform's functionality is rooted in its ability to cater to the diverse needs of users. Victims, irrespective of geographical limitations, can register accounts, file FIRs, and seek guidance through informative articles categorized according to various crime types. User registration entails comprehensive validations utilizing JavaScript, ensuring the accuracy and completeness of the entered data.

Central to the platform's architecture is the utilization of MySQL for robust data management, storing user details and FIR records securely. Each filed FIR undergoes meticulous validation against predefined criteria, ensuring the authenticity and completeness of the report.

The project’s testing phase involved rigorous manual testing methodologies encompassing positive and negative scenarios. Positive testing verified the system's response to valid inputs, ensuring successful registration and FIR filing, while negative testing focused on error handling and the system’s behavior when encountering invalid inputs or incomplete data.

Future enhancements of the E-CRIME REPORT HUB might include the integration of automated testing methodologies, thereby augmenting the efficiency of the testing process and expanding test coverage. Additionally, potential improvements could involve enhancing user interfaces, refining data validation algorithms, and introducing multi-factor authentication for heightened security.

In conclusion, the E-CRIME REPORT HUB stands as a testament to innovation in the realm of law enforcement technology. Through seamless user interactions, robust data management, and comprehensive validations, this platform endeavors to empower victims and law enforcement agencies in addressing and managing crimes effectively in a digitally connected world.


# Tech Stack
* Eclipse IDE (Java EE)
* JDK 17
* MySQL Databae
* Tomcat Server v9.0
* HTML,CSS,JS,JSP

# Libraries and packages
* MySQL-connector 8.0.11.jar
* Tomcat-Servlet-API 10.0.10.jar
* JSTL-1.2.jar
* CSS-Bootstrap

# ENTITY RELATIONSHIP DIAGRAM (ERD)
![ecrh_er](https://github.com/Salvik24Bhowal/e-Crime-Report-Hub/assets/67736824/ced29c04-aaff-4031-afd8-199a1a4324da)
# DATAFLOW DIAGRAM LVL0 | CONTEXT LEVEL DIAGRAM
![ecrh2](https://github.com/Salvik24Bhowal/e-Crime-Report-Hub/assets/67736824/3c09c9be-ea2c-499f-a805-354c3bb315a1)
# DATAFLOW DIAGRAM LVL1
![ecrhdfdlvl1](https://github.com/Salvik24Bhowal/e-Crime-Report-Hub/assets/67736824/f33e19dd-9871-4b7d-9b16-2d635dcfd8d6)
# DATABASE DESIGN
![image](https://github.com/Salvik24Bhowal/e-Crime-Report-Hub/assets/67736824/cf5df120-8a8e-43b6-9e26-f9c267d06c49)




TESTING
Manual Testing:
Definition: Manual testing involves human intervention to execute test cases without the use of automation tools.
Significance: It allows testers to explore the application, identify bugs, and evaluate the user interface from a user's perspective.
Process: Testers execute test cases step by step, observing the system's behavior, and validating whether it aligns with the expected outcomes specified in the requirements.
Positive Testing:
Definition: Positive testing validates the system's behavior when provided with expected and valid input.
Scenario: For our project, positive testing could involve entering valid user information during registration, filing an FIR with all required fields filled correctly, and checking if the system processes it without errors.
Negative Testing:
Definition: Negative testing evaluates the system's behavior when provided with unexpected or invalid input.
Scenario: In our project, negative testing might include attempting to register with incomplete user details, filing an FIR with missing mandatory information, or entering incorrect data formats (e.g., entering letters in a numeric field).
Manual Testing in our Project:
Scope: As we performed manual testing, we manually executed test scenarios covering various functionalities like user registration, FIR filing, login functionality, and error handling.
Execution: Describe how we interacted with the application step by step, providing different inputs and observing the system's responses.
Validation: Explain how we validated each test scenario against the expected outcomes and whether the system behaved as intended.
Bug Reporting: If we found any issues or discrepancies, detail how we reported them, including steps to reproduce the problem, its impact, and the expected versus actual behavior.

Positive Testing with JavaScript Validation:
Scenario: User registration form validation (positive testing), Delete FIR from admin panel , add new admin etc…

JavaScript Code Functionality:
Validate that all mandatory fields are filled out correctly (name, email, password, etc.)
Check email format validity using JavaScript regex.
Ensure passwords meet complexity requirements (length, special characters, etc.).

Observation: Document the behavior when valid inputs are entered:
When all mandatory fields are correctly filled, the form submits successfully.
For instance, if a user enters a valid email format (e.g., "user@example.com"), the validation script allows the form submission.
If the admin wants to delete an FIR entry for the very first time it wont give any error, and if  the admin tries to delete the same entry again it raises an exception.(discussed in later part).
If the admin is logged in and wants to add another admin , he/she can do that if  they put the details correct format. 





  
