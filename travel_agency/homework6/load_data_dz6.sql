use travel_agency;

load data infile '/var/lib/mysql-files/country.csv' into table country
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/sea.csv' into table sea 
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/mountais.csv' into table mountains 
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/tour_type.csv' into table tour_type
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/dz6/hotel_rating.csv' into table hotel_rating 
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/room.csv' into table room 
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/meal.csv' into table meal
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/review.csv' into table review
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/location.csv' into table location
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/hotel.csv' into table hotel
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/housing.csv' into table housing
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/food.csv' into table food 
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/tour.csv' into table tour
fields terminated by ';' lines terminated by '\n';

load data infile '/var/lib/mysql-files/tourist.csv' into table tourist
fields terminated by ';' lines terminated by '\n';