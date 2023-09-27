CREATE DATABASE IF NOT EXISTS base_de_dados;
USE base_de_dados;

CREATE TABLE
  `age_income` (
    `Name` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
    `Marital Status` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
    `Age` int(2) DEFAULT NULL,
    `Income` int(6) DEFAULT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE
  `city_house_prices` (
    `Date` varchar(10) DEFAULT NULL,
    `AZ-Phoenix` varchar(5) DEFAULT NULL,
    `CA-Los Angeles` decimal(5, 2) DEFAULT NULL,
    `CA-San Diego` decimal(5, 2) DEFAULT NULL,
    `CA-San Francisco` decimal(5, 2) DEFAULT NULL,
    `CO-Denver` decimal(5, 2) DEFAULT NULL,
    `DC-Washington` decimal(5, 2) DEFAULT NULL,
    `FL-Miami` decimal(5, 2) DEFAULT NULL,
    `FL-Tampa` decimal(5, 2) DEFAULT NULL,
    `GA-Atlanta` varchar(5) DEFAULT NULL,
    `IL-Chicago` decimal(5, 2) DEFAULT NULL,
    `MA-Boston` decimal(5, 2) DEFAULT NULL,
    `MI-Detroit` varchar(5) DEFAULT NULL,
    `MN-Minneapolis` varchar(5) DEFAULT NULL,
    `NC-Charlotte` decimal(5, 2) DEFAULT NULL,
    `NV-Las Vegas` decimal(5, 2) DEFAULT NULL,
    `NY-New York` decimal(5, 2) DEFAULT NULL,
    `OH-Cleveland` decimal(5, 2) DEFAULT NULL,
    `OR-Portland` decimal(5, 2) DEFAULT NULL,
    `TX-Dallas` varchar(5) DEFAULT NULL,
    `WA-Seattle` varchar(5) DEFAULT NULL,
    `Composite-10` decimal(5, 2) DEFAULT NULL,
    `Composite-20` varchar(5) DEFAULT NULL,
    `National-US` decimal(5, 2) DEFAULT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

  CREATE TABLE
  `imdb_movies` (
    `imdb_title_id` TEXT DEFAULT NULL,
    `title` TEXT DEFAULT NULL,
    `original_title` TEXT DEFAULT NULL,
    `year` int(4) DEFAULT NULL,
    `date_published` TEXT DEFAULT NULL,
    `genre` TEXT DEFAULT NULL,
    `duration` int(3) DEFAULT NULL,
    `country` TEXT DEFAULT NULL,
    `language` TEXT DEFAULT NULL,
    `director` TEXT DEFAULT NULL,
    `writer` TEXT DEFAULT NULL,
    `production_company` TEXT DEFAULT NULL,
    `actors` TEXT DEFAULT NULL,
    `description` TEXT DEFAULT NULL,
    `avg_vote` decimal(2, 1) DEFAULT NULL,
    `votes` int(5) DEFAULT NULL,
    `budget` TEXT DEFAULT NULL,
    `usa_gross_income` TEXT DEFAULT NULL,
    `worlwide_gross_income` TEXT DEFAULT NULL,
    `metascore` TEXT DEFAULT NULL,
    `reviews_from_users` TEXT DEFAULT NULL,
    `reviews_from_critics` TEXT DEFAULT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE
  `imdb_ratings` (
    `imdb_title_id` varchar(9) DEFAULT NULL,
    `weighted_average_vote` decimal(2, 1) DEFAULT NULL,
    `total_votes` int(5) DEFAULT NULL,
    `mean_vote` decimal(2, 1) DEFAULT NULL,
    `median_vote` decimal(3, 1) DEFAULT NULL,
    `votes_10` int(4) DEFAULT NULL,
    `votes_9` int(4) DEFAULT NULL,
    `votes_8` int(4) DEFAULT NULL,
    `votes_7` int(4) DEFAULT NULL,
    `votes_6` int(4) DEFAULT NULL,
    `votes_5` int(4) DEFAULT NULL,
    `votes_4` int(3) DEFAULT NULL,
    `votes_3` int(3) DEFAULT NULL,
    `votes_2` int(3) DEFAULT NULL,
    `votes_1` int(4) DEFAULT NULL,
    `allgenders_0age_avg_vote` varchar(2) DEFAULT NULL,
    `allgenders_0age_votes` varchar(3) DEFAULT NULL,
    `allgenders_18age_avg_vote` decimal(2, 1) DEFAULT NULL,
    `allgenders_18age_votes` decimal(5, 1) DEFAULT NULL,
    `allgenders_30age_avg_vote` decimal(2, 1) DEFAULT NULL,
    `allgenders_30age_votes` decimal(5, 1) DEFAULT NULL,
    `allgenders_45age_avg_vote` decimal(2, 1) DEFAULT NULL,
    `allgenders_45age_votes` decimal(5, 1) DEFAULT NULL,
    `males_allages_avg_vote` decimal(2, 1) DEFAULT NULL,
    `males_allages_votes` decimal(6, 1) DEFAULT NULL,
    `males_0age_avg_vote` varchar(2) DEFAULT NULL,
    `males_0age_votes` varchar(3) DEFAULT NULL,
    `males_18age_avg_vote` decimal(2, 1) DEFAULT NULL,
    `males_18age_votes` decimal(5, 1) DEFAULT NULL,
    `males_30age_avg_vote` decimal(2, 1) DEFAULT NULL,
    `males_30age_votes` decimal(5, 1) DEFAULT NULL,
    `males_45age_avg_vote` decimal(2, 1) DEFAULT NULL,
    `males_45age_votes` decimal(5, 1) DEFAULT NULL,
    `females_allages_avg_vote` decimal(2, 1) DEFAULT NULL,
    `females_allages_votes` decimal(5, 1) DEFAULT NULL,
    `females_0age_avg_vote` varchar(2) DEFAULT NULL,
    `females_0age_votes` varchar(2) DEFAULT NULL,
    `females_18age_avg_vote` varchar(2) DEFAULT NULL,
    `females_18age_votes` varchar(4) DEFAULT NULL,
    `females_30age_avg_vote` varchar(3) DEFAULT NULL,
    `females_30age_votes` varchar(5) DEFAULT NULL,
    `females_45age_avg_vote` decimal(2, 1) DEFAULT NULL,
    `females_45age_votes` decimal(4, 1) DEFAULT NULL,
    `top1000_voters_rating` decimal(2, 1) DEFAULT NULL,
    `top1000_voters_votes` decimal(4, 1) DEFAULT NULL,
    `us_voters_rating` decimal(2, 1) DEFAULT NULL,
    `us_voters_votes` decimal(5, 1) DEFAULT NULL,
    `non_us_voters_rating` decimal(2, 1) DEFAULT NULL,
    `non_us_voters_votes` decimal(5, 1) DEFAULT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

  CREATE TABLE
  `name_children` (
    `Name` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
    `Children` int(1) DEFAULT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

CREATE TABLE
  `sample` (
    `time_period` date NOT NULL,
    `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    `value` int(11) NOT NULL
  ) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;