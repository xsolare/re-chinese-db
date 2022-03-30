CREATE USER datawriter;

GRANT ALL PRIVILEGES ON DATABASE re_chinese TO datawriter;

-- Drop tables
DROP TABLE IF EXISTS word_collections_words;
DROP TABLE IF EXISTS word_collections;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS hsk;
DROP TABLE IF EXISTS words_hieroglyphics;
DROP TABLE IF EXISTS words_translates;
DROP TABLE IF EXISTS words;
DROP TABLE IF EXISTS hieroglyphics_translates;
DROP TABLE IF EXISTS hieroglyphics;
DROP TABLE IF EXISTS part_of_speech;
DROP TABLE IF EXISTS languages;
DROP TABLE IF EXISTS pinyin;
DROP TABLE IF EXISTS users;

-- Drop types
DROP TYPE IF EXISTS Role;
DROP TYPE IF EXISTS Tone;

-- ================================================================ 
-- users
-- ================================================================ 
CREATE TYPE Role AS ENUM('user','premium','admin');
CREATE TABLE users (
	id              serial                PRIMARY KEY,
	username        VARCHAR ( 50 ) UNIQUE NOT NULL,
	password        VARCHAR ( 50 )        NOT NULL,
    avatar          TEXT                           DEFAULT NULL,
	created_on      TIMESTAMP             NOT NULL DEFAULT NOW(),
    updated_on      TIMESTAMP             NOT NULL DEFAULT NOW(),
    last_login      TIMESTAMP             NOT NULL DEFAULT NOW(),
    role            Role                  NOT NULL DEFAULT 'user'
);

INSERT INTO users(username, password)
VALUES('evai', '123321');


-- ================================================================ 
-- pinyin
-- ================================================================ 
CREATE TYPE Tone AS ENUM('0','1','2','3','4');
CREATE TABLE pinyin (
	id              serial                PRIMARY KEY,
	initial         VARCHAR ( 50 ) UNIQUE NOT NULL,
    tone            Tone                  NOT NULL
);

comment on column pinyin.tone is '0: none, 1:ˉ, 2: ˊ, 3: ˇ, 4: ˋ';

-- ================================================================ 
-- languages
-- ================================================================ 
CREATE TABLE languages (
	id              serial                PRIMARY KEY,
	name            VARCHAR ( 50 ) UNIQUE NOT NULL,
	short_name      VARCHAR ( 50 ) UNIQUE NOT NULL
);

INSERT INTO languages(name, short_name)
VALUES('Russia','rus'), ('English','eng');

-- ================================================================ 
-- part_of_speech
-- ================================================================ 
CREATE TABLE part_of_speech (
  id          serial                PRIMARY KEY,
  name        VARCHAR ( 50 ) UNIQUE NOT NULL
);

-- ================================================================ 
-- hieroglyphics
-- ================================================================ 
CREATE TABLE hieroglyphics (
	id                  serial  PRIMARY KEY,
	pinyin_id           INT		NOT NULL,
	part_of_speech_id   INT   	NOT NULL,

    FOREIGN KEY (pinyin_id)
        REFERENCES pinyin (id),
    FOREIGN KEY (part_of_speech_id)
        REFERENCES part_of_speech (id)
);

-- ================================================================ 
-- hieroglyphics_translates
-- ================================================================
CREATE TABLE hieroglyphics_translates (
	hieroglyphic_id     INT NOT NULL,
	language_id         INT NOT NULL,

    PRIMARY KEY (hieroglyphic_id, language_id),
    FOREIGN KEY (hieroglyphic_id)
        REFERENCES pinyin (id),
    FOREIGN KEY (language_id)
        REFERENCES languages (id)
);

-- ================================================================ 
-- words
-- ================================================================
CREATE TABLE words (
	id                  serial                PRIMARY KEY,
    part_of_speech_id   INT   	              NOT NULL,

    FOREIGN KEY (part_of_speech_id)
        REFERENCES part_of_speech (id)
);

-- ================================================================ 
-- words_translates
-- ================================================================
CREATE TABLE words_translates (
	word_id         INT NOT NULL,
	language_id     INT NOT NULL,

    PRIMARY KEY (word_id, language_id),
    FOREIGN KEY (word_id)
        REFERENCES words (id),
    FOREIGN KEY (language_id)
        REFERENCES languages (id)
);

-- ================================================================ 
-- words_hieroglyphics
-- ================================================================
CREATE TABLE words_hieroglyphics (
	id                  serial                PRIMARY KEY,
    word_id             INT   	              NOT NULL,
    hieroglyphic_id     INT   	              NOT NULL,

    FOREIGN KEY (word_id)
        REFERENCES words (id),
    FOREIGN KEY (hieroglyphic_id)
        REFERENCES hieroglyphics (id)
);

-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ --
--                                              Additional                                                   --
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ --

-- ================================================================ 
-- hsk
-- ================================================================
CREATE TABLE hsk (
	id                  serial              PRIMARY KEY,
	lvl                 INT     UNIQUE      NOT NULL
);
INSERT INTO hsk(lvl)
VALUES(1),(2),(3),(4),(5),(6),(7),(8),(9);

-- ================================================================ 
-- categories
-- ================================================================
CREATE TABLE categories (
	id                  serial                PRIMARY KEY,
	name                VARCHAR ( 50 ) UNIQUE NOT NULL
);

-- ================================================================ 
-- word_collections
-- ================================================================
CREATE TABLE word_collections (
	id                  serial                PRIMARY KEY,
	name                VARCHAR ( 50 ) UNIQUE NOT NULL,
    author_id           INT   	              NOT NULL,
    categorie_id        INT                           ,
    hsk_id              INT                   NOT NULL,

    FOREIGN KEY (author_id)
        REFERENCES users (id),
    FOREIGN KEY (categorie_id)
        REFERENCES categories (id),
    FOREIGN KEY (hsk_id)
        REFERENCES hsk (id)
);

-- ================================================================ 
-- word_collections_words
-- ================================================================
CREATE TABLE word_collections_words (
    word_collections_id INT NOT NULL,
    word_id             INT NOT NULL,

    FOREIGN KEY (word_collections_id)
        REFERENCES word_collections (id),
    FOREIGN KEY (word_id)
        REFERENCES words (id)
);