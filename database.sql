CREATE TABLE 'users' (
    'email' varchar(100) NOT NULL,
    'password' varchar (20) NOT NULL,
    'name' varchar(50) NOT NULL,
    'gender' char(1) NOT NULL,
    'birthdate' date DEFAULT NULL,
    'profile_picture' varchar(100) DEFAULT NULL,
    'points' int(5) DEFAULT '0',
    PRIMARY KEY ('email')
)

CREATE TABLE 'friends' (
    'user' varchar(100) NOT NULL,
    'friend' varchar(100) NOT NULL,
    PRIMARY KEY ('user', 'friend'),
    FOREIGN KEY ('user') REFERENCES 'usuarios'('email') ON DELETE CASCADE,
    FOREIGN KEY ('friend') REFERENCES 'usuarios'('email') ON DELETE CASCADE,
)