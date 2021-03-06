-- Script Date: 27.03.2016 20:37  - ErikEJ.SqlCeScripting version 3.5.2.58
-- Database information:
-- Locale Identifier: 1033
-- Encryption Mode: 
-- Case Sensitive: False
-- Database: D:\Programming\C#\Test\Test\Test.sdf
-- ServerVersion: 4.0.8876.1
-- DatabaseSize: 212 KB
-- SpaceAvailable: 3,999 GB
-- Created: 05.03.2016 17:04

-- User Table information:
-- Number of tables: 9
-- OblastiVoprosa: 3 row(s)
-- Olympiad: 0 row(s)
-- Answer: 0 row(s)
-- AnswerQuestion: 0 row(s)
-- LearnerAnswer: 0 row(s)
-- QuestionType: 3 row(s)
-- Institution: 0 row(s)
-- Learner: 0 row(s)
-- Question: 0 row(s)

CREATE TABLE [Question] (
  [QuestionTypeID] int NOT NULL
, [QuestionAreaID] int NOT NULL
, [Complexity] int NULL
, [Text] nvarchar(100) NULL
, [Points] int NULL
, [ImagePath] nvarchar(100) NULL
, [QuestionID] int NOT NULL
);
GO
CREATE TABLE [Learner] (
  [LearnerID] int NOT NULL
, [InstitutionID] int NOT NULL
, [FirstName] nvarchar(100) NULL
, [LastName] nvarchar(100) NULL
, [MiddleName] nvarchar(100) NULL
);
GO
CREATE TABLE [Institution] (
  [InstitutionID] int NOT NULL
, [InstitutionName] nvarchar(100) NULL
, [InstitutionPlace] nvarchar(100) NULL
, [InstitutionAddress] nvarchar(100) NULL
);
GO
CREATE TABLE [QuestionType] (
  [QuestionTypeName] nvarchar(100) NULL
, [QuestionTypeID] int IDENTITY (4,1) NOT NULL
);
GO
CREATE TABLE [LearnerAnswer] (
  [OlympiadID] int NOT NULL
, [QuestionID] int NOT NULL
, [LearnerID] int NOT NULL
, [AnswerID] int NOT NULL
, [LearnerAnswer] nvarchar(100) NULL
);
GO
CREATE TABLE [AnswerQuestion] (
  [QuestionID] int NOT NULL
, [AnswerID] int NOT NULL
, [IsWright] bit NULL
);
GO
CREATE TABLE [Answer] (
  [AnswerText] nvarchar(100) NULL
, [AnswerID] int IDENTITY (1,1) NOT NULL
);
GO
CREATE TABLE [Olympiad] (
  [OlympiadID] int NOT NULL
, [Subject] nvarchar(100) NULL
, [Status] nvarchar(100) NULL
, [Condition] bit NULL
);
GO
CREATE TABLE [OblastiVoprosa] (
  [QuestionAreaID] int NOT NULL
, [QuestionAreaName] nvarchar(100) NULL
);
GO
ALTER TABLE [Question] ADD CONSTRAINT [PK__Question__000000000000010C] PRIMARY KEY ([QuestionTypeID],[QuestionAreaID],[QuestionID]);
GO
ALTER TABLE [Learner] ADD CONSTRAINT [PK_Learner] PRIMARY KEY ([LearnerID],[InstitutionID]);
GO
ALTER TABLE [Institution] ADD CONSTRAINT [PK_Institution] PRIMARY KEY ([InstitutionID]);
GO
ALTER TABLE [QuestionType] ADD CONSTRAINT [PK__QuestionType__00000000000000C2] PRIMARY KEY ([QuestionTypeID]);
GO
ALTER TABLE [LearnerAnswer] ADD CONSTRAINT [PK_LearnerAnswer] PRIMARY KEY ([OlympiadID],[QuestionID],[LearnerID],[AnswerID]);
GO
ALTER TABLE [AnswerQuestion] ADD CONSTRAINT [PK_AnswerQuestion] PRIMARY KEY ([QuestionID],[AnswerID]);
GO
ALTER TABLE [Answer] ADD CONSTRAINT [PK__Answer__00000000000000D3] PRIMARY KEY ([AnswerID]);
GO
ALTER TABLE [Olympiad] ADD CONSTRAINT [PK_Olympiad] PRIMARY KEY ([OlympiadID]);
GO
ALTER TABLE [OblastiVoprosa] ADD CONSTRAINT [PK_OblastiVoprosa] PRIMARY KEY ([QuestionAreaID]);
GO
GO
GO
GO
SET IDENTITY_INSERT [QuestionType] ON;
GO
INSERT INTO [QuestionType] ([QuestionTypeName],[QuestionTypeID]) VALUES (
N'Тип1',1);
INSERT INTO [QuestionType] ([QuestionTypeName],[QuestionTypeID]) VALUES (
N'Тип2',2);
INSERT INTO [QuestionType] ([QuestionTypeName],[QuestionTypeID]) VALUES (
N'Тип3',3);
GO
SET IDENTITY_INSERT [QuestionType] OFF;
GO
GO
GO
GO
SET IDENTITY_INSERT [Answer] OFF;
GO
GO
INSERT INTO [OblastiVoprosa] ([QuestionAreaID],[QuestionAreaName]) VALUES (
1,N'Математика');
INSERT INTO [OblastiVoprosa] ([QuestionAreaID],[QuestionAreaName]) VALUES (
2,N'Русский язык');
INSERT INTO [OblastiVoprosa] ([QuestionAreaID],[QuestionAreaName]) VALUES (
3,N'Информатика');
GO
ALTER TABLE [QuestionType] ADD CONSTRAINT [UQ__QuestionType__00000000000000BD] UNIQUE ([QuestionTypeID]);
GO
ALTER TABLE [Answer] ADD CONSTRAINT [UQ__Answer__00000000000000CE] UNIQUE ([AnswerID]);
GO
ALTER TABLE [OblastiVoprosa] ADD CONSTRAINT [UQ__OblastiVoprosa__00000000000000A2] UNIQUE ([QuestionAreaID]);
GO

