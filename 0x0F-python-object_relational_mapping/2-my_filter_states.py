#!/usr/bin/python3
""" Lists all states from the database hbtn_0e_0_usa """
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base
from sys import argv

# Define the database connection URL
DATABASE_URI = f"mysql://{argv[1]}:{argv[2]}@localhost:3306/{argv[3]}"

# Create an SQLAlchemy engine
engine = create_engine(DATABASE_URI)

# Create a session
Session = sessionmaker(bind=engine)
session = Session()

# Define a base class for declarative models
Base = declarative_base()

# Define the State model
class State(Base):
    __tablename__ = 'states'
    id = Column(Integer, primary_key=True)
    name = Column(String(128), nullable=False)

if __name__ == "__main__":
    # Query the states
    states = session.query(State).filter(State.name == argv[4]).all()

    # Print the results
    for state in states:
        print(state.id, state.name)

    # Close the session
    session.close()
