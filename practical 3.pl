% Facts

driver(ram,karad,vita).
driver(sham,vita,kadegaon).

passenger(riza, karad, vita).
passenger(alisha, vita, kadegaon).

% Rule

car_pulling(Driver, Passenger) :-
    driver(Driver,From,To),
    passenger(Passenger, From, To).