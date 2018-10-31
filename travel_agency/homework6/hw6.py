import random
import csv
import string



def random_contry():
    contry = [
    'Russia', 'USA', 'Canada', 'Brazil', 'Chily'
    ]
    return random.choice(contry)
def random_sea():
    sea = [
        'Black sea', 'White sea', 'Azovskoye sea'
    ]
    return random.choice(sea)


def random_mountains():
    mountains = [
        'Tibet', 'Alpey', 'Kavkaz'
    ]
    return random.choice(mountains)


def random_tour_type():
    tour_type = [
        'active', 'relax', 'enjoy'
    ]
    return random.choice(tour_type)


def random_holtel():
    holtel = [
        'five-star', 'plaza', 'house'
    ]
    return random.choice(holtel)


def random_room():
    room = [
        'comfort', 'king-size', 'cheap'
    ]
    return random.choice(room)


def random_meal():
    meal = [
        'veegan', 'king-size', 'lite', '3-days-meals'
    ]
    return random.choice(meal)


def random_rewiew():
    rewiew = [
        'so good', 'bed', 'not bed', 'nice'
    ]
    return random.choice(rewiew)

def random_location():
    location = [
        'west', 'east', 'north'
    ]
    return random.choice(location)


def random_hotel():
    phone_number = [
        'so good', 'bed', 'not bed', 'nice'
    ]
    return random.choice(phone_number)

def random_tour_name():
    tour_name = [
        'soft', 'active', 'super-active', 'lite'
    ]
    return random.choice(tour_name)

def random_name():
    tour_name = [
        'Sergey', 'Zhenya', 'Mary', 'Vlad'
    ]
    return random.choice(tour_name)


def csv_create(fname, iterable):
    with open(fname, 'w', newline='') as f:
        writer = csv.writer(f, delimiter=';')
        writer.writerows(iterable)


country = [ [
            _id,
            random_contry()
          ] for _id in range(1, 101) ]
csv_create('country.csv', country)

sea = [ [
            _id,
            random_sea()
          ] for _id in range(1, 101) ]
csv_create('sea.csv', sea)

mountains = [ [
            _id,
            random_mountains()
          ] for _id in range(1, 101) ]
csv_create('mountains.csv', mountains)


tour_type = [ [
            _id,
            random_tour_type()
          ] for _id in range(1, 101) ]
csv_create('tour_type.csv', tour_type)

hotel_rating = [ [
            _id,
            random_holtel()
          ] for _id in range(1, 101) ]
csv_create('hotel_rating.csv', hotel_rating)

room = [ [
            _id,
            random_room()
          ] for _id in range(1, 101) ]
csv_create('room.csv', room)

meal = [ [
            _id,
            random_meal()
          ] for _id in range(1, 101) ]
csv_create('meal.csv', meal)

review = [ [
            _id,
            random.randint(1, 10),
            random_rewiew()
          ] for _id in range(1, 101) ]
csv_create('review.csv', review)


location = [ [
            _id,
            random_contry(),
            random.randint(1, 101),
            random.randint(1, 101),
            random.randint(1, 101)
          ] for _id in range(1, 101) ]
csv_create('location.csv', location)

hotel = [ [
            _id,
            random_hotel(),
            random.randint(1, 10),
            random.randint(1, 101),
            random.randint(89000000000, 90000000000)
          ] for _id in range(1, 101) ]
csv_create('holtel.csv', hotel)

tour = []
for _id in range(1, 101):
    tour.append([
        _id,
        random_tour_name(),
        random.randint(1, 101),
        random.randint(1, 101),
        random.randint(1, 101),
        random.randint(1, 101),
        random.randint(1, 101),
        random.randint(1, 101),
        random.randint(1, 101),

    ])
csv_create('tour.csv', tour)

housing = [ [
            _id,
           random.randint(1, 101)
          ] for _id in range(1, 101) ]
csv_create('housing.csv', housing)

food = [ [
            _id,
           random.randint(1, 101)
          ] for _id in range(1, 101) ]
csv_create('food.csv', food)

tourist = [ [
            _id,
            random_name(),
            random_name(),
            random_name(),
            random.randint(1, 1000),
            random.randint(89000000000, 90000000000),
            random.randint(1, 100)

          ] for _id in range(1, 101) ]
csv_create('tourist.csv', tourist)