% браки
married(oksana, oleg, 2000).
married(natasha, maksim, 1992).
married(natusik, dima, 1990).
married(lyubov, vasilii, 1971).
married(tatyana, gennadii, 1970).
married(lera, andrey, 2022).
married(max, nastya, 2018).
married(regina, ali, 2020).

% правила для браков
areMarried(X, Y) :-
  married(X, Y, _);
  married(Y, X, _)
  . % 1 правило

% = дети и родители =
parent(oksana, misha).
parent(oksana, danek).
parent(oksana, makar).
parent(oleg, misha).
parent(oleg, danek).
parent(oleg, makar).

parent(maksim, andrey).
parent(maksim, vasya).
parent(maksim, varya).
parent(maksim, anton).
parent(maksim, anya).
parent(natasha, andrey).
parent(natasha, vasya).
parent(natasha, varya).
parent(natasha, anton).
parent(natasha, anya).

parent(natusik, max).
parent(natusik, regina).
parent(dima, max).
parent(dima, regina).

parent(max, kirill).

parent(ali, matvey).
parent(regina, matvei).

parent(tatyana, oleg).
parent(tatyana, natusik).
parent(gennadii, oleg).
parent(gennadii, natusik).

parent(vasilii, oksana).
parent(vasilii, natasha).
parent(lyubov, oksana).
parent(lyubov, natasha).

parent(raya, nina).

% домашние животные
owner(makar, barsik).
owner(anya, cat).
owner(max, nala).
owner(regina, 'big cat').
owner(lyubov, luchik).
owner(natusik, matilda).

% правила брат-сестра + 1 признак задан вручную
siblings(vasilii, raya).
areSiblings(X, Y) :-
    siblings(X, Y);
    siblings(Y, X);
    X \= Y,
    setof(Parent, parent(Parent, X), SetOfParents1),
    setof(Parent, parent(Parent, Y), SetOfParents2),
    SetOfParents1 == SetOfParents2
  .  % 2 правило

% даты рождения и смерти
born(danek, 2005).
born(oksana, 1978).
born(oleg, 1977).
born(makar, 2012).
born(misha, 2016).
born(barsik, 2022).

died(matilda, 2025).

% правила для того чтобы быть человеком
person(X) :-
  \+owner(_, X),
  (
    parent(X, _);
    parent(_, X);
    siblings(X, _);
    siblings(_, X);
    born(X, _)
  ).  % 3 правило

% проверка живой - нет
alive(X) :- \+died(X, _). % 4 правило

