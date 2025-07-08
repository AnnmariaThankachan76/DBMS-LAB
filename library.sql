CREATE TABLE PUBLISHR (
          PUBLISHER_ID INT PRIMARY KEY ,
          P_NAME VARCHAR(50),
          ADDRESS VARCHAR (50) );
          
CREATE TABLE LANGUAGE (
          LANG_ID INT PRIMARY KEY,
          L_NAME VARCHAR (50));
          
CREATE TABLE AUTHOR (
        AUTHOR_ID INT PRIMARY KEY,
        A_NAME VARCHAR(50),
        EMAIL VARCHAR(50),
        PH_NUMBER INT,
        STATUS VARCHAR(50));
        
CREATE TABLE MEMBER (
        Member_Id INT PRIMARY KEY,
        Name VARCHAR(100) ,
        Branch_Code VARCHAR(10),
        Roll_Number INT ,
        Phone_Number INT,
        Email_Id VARCHAR(50),
        Date_of_Join DATE,
        Status VARCHAR(20));

CREATE TABLE BOOK(
          BOOK_ID INT PRIMARY KEY ,
          TITILE VARCHAR(50),
          LANGUAGE_ID INT,
          FOREIGN KEY (lANGUAGE_ID) references LANGUAGE (LANG_ID),
          MRP INT,
          PUBLISHER_ID INT ,
          FOREIGN KEY (PUBLISHER_ID) references PUBLISHR (PUBLISHER_ID), 
          PUBLISHED_DATE  DATE,
          VOLUME INT ,
          STATUS VARCHAR(50));
          

CREATE TABLE BOOK_ISSUE (
    Issue_Id INT PRIMARY KEY,
    Date_Of_Issue DATE ,
    Book_Id INT,
     FOREIGN KEY (Book_Id) REFERENCES BOOK(BOOK_ID),
    Member_Id INT,
      FOREIGN KEY (Member_Id) REFERENCES MEMBER(Member_Id),
    Expected_Date_Of_Return DATE,
    Status VARCHAR(20)
  );

CREATE TABLE BOOK_RETURN (
    Issue_Id INT PRIMARY KEY,
     FOREIGN KEY (Issue_Id) REFERENCES BOOK_ISSUE(Issue_Id),
    Actual_Date_Of_Return DATE,
    LateDays INT,
    LateFee INT 
);

CREATE TABLE BOOK_AUTHOR (
    Book_Id INT ,
    Author_Id INT ,
    PRIMARY KEY (Book_Id, Author_Id),
    FOREIGN KEY (Book_Id) REFERENCES BOOK(Book_Id),
    FOREIGN KEY (Author_Id) REFERENCES AUTHOR(Author_Id)
);

CREATE TABLE LATE_FEE_RULE (
    FromDays INT,
    ToDays INT,
    Amount INT ,
    PRIMARY KEY (FromDays, ToDays)
);

