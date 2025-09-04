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
areMarried(X, Y) :- married(X,Y,_);married(Y,X,_).

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

% домашние животные
owner(makar, barsik).
owner(anya, cat).
owner(max, nala).
owner(regina, 'big cat').
owner(lyubov, luchik).

% правила брат-сестра + 1 задано вручную
siblings(vasilii, raya).
areSiblings(X, Y) :- siblings(X, Y);siblings(Y, X). % TODO: сравнить родителей
