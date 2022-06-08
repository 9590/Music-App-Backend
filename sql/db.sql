-- CREATE TABLE USERS
create table USERS (
   ID                   SERIAL               not null,
   ROL_ID               INT4                 null,
   USERNAME             VARCHAR(100)         null,
   NAME                 VARCHAR(100)         null,
   MAIL                 VARCHAR(100)         null,
   PASSWORD             VARCHAR(100)         null,
   THUMBNAIL            VARCHAR(200)         null,
   constraint PK_USERS primary key (ID)
);

-- CREATE TABLE ROLES
create table ROLES (
   ID                   SERIAL               not null,
   NAME                 VARCHAR(100)         null,
   SLUG                 VARCHAR(100)         null,
   DESCRIPTION          TEXT                 null,
   constraint PK_ROLES primary key (ID)
);

create table SONGS (
   ID                   SERIAL               not null,
   ALBUM_ID             INT4                 null,
   NAME                 VARCHAR(100)         null,
   DURATION             TIME                 null,
   SONG_LINK            TEXT                 null,
   THUMBNAIL            TEXT                 null,
   POPULARITY           INT4                 null,
   GENRE                TEXT                 null,
   constraint PK_SONGS primary key (ID)
);

-- INSERT USERS DATA
INSERT INTO users(rol_id, username, name, mail, password, thumbnail)
    VALUES(1, 'carlosvldz', 'carlos', 'me@carlosvldz.com', '1234', 'link');

-- INSERT ROLES DATA
INSERT INTO roles(name)
    VALUES('admin');

INSERT INTO roles(name)
    VALUES('user');
