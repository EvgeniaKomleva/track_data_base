from faker import Faker
#import faker
import random
import csv
import string


def csv_dump(fname, iterable):
    with open(fname, 'w', newline='') as f:
        writer = csv.writer(f, delimiter=';')
        writer.writerows(iterable)


def random_password(length):
    return ''.join(random.choices(
        string.ascii_lowercase + string.digits + string.ascii_uppercase, 
        k=length))


def random_animal():
    zoo = [
           'antelope', 'mynah bird', 'dugong', 'toad', 'salamander',
           'newt', 'stallion', 'cougar', 'highland cow', 'jackal',
           'seal', 'ox', 'bat', 'llama'
          ]
    return random.choice(zoo)


fake = Faker()
fake.seed(25)

users = [ [
            _id,
            fake.user_name(),
            fake.email(),
            random_password(10)
          ] for _id in range(1, 101) ]
csv_dump('users.csv', users)

matches = [ [_id]
            + list(map(lambda x: x[0], random.sample(users, 2)))
            + [random.choice([1,-1])]
            for _id in range (1, 101)]
csv_dump('matches.csv', matches)

heroes = [ [ 
             _id,
             'Hero {}'.format(fake.street_name()),
             random.randint(20, 25),
             random.randint(3,5)
           ] for _id in range(1, 101) ]
csv_dump('heroes.csv', heroes)

minions = [ [ 
              _id,
              random.choice(heroes)[0],
              fake.color_name() + ' ' + random_animal(),
              random.randint(5, 8),
              random.randint(1, 3)
            ] for _id in range(1, 101) ]
csv_dump('minions.csv', minions)

spells = [ [ 
             _id,
             fake.catch_phrase(),
             random.randint(5, 8)
           ] for _id in range(1, 101) ]
csv_dump('spells.csv', spells)

decks = [ [
            _id,
            random.choice(users)[0]
          ] for _id in range(1, 101) ]
csv_dump('decks.csv', decks)

spell_sets = [ [
                _id, 
                random.choice(decks)[0],
                random.choice(spells)[0]
              ] for _id in range (1, 101) ]
csv_dump('spell_sets.csv', spell_sets)

minion_sets = [ [
                  _id,
                  random.choice(decks)[0],
                  random.choice(minions)[0],
                  random.randint(1, 3)
                ] for _id in range (1, 101) ]
csv_dump('minion_sets.csv', minion_sets)