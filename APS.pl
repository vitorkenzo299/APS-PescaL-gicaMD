%Código Prolog
rio(amazonas).
barco(perola_negra).
peixe(bagre).
peixe(Y) :- pescou(_, Y). % 2. Se alguém pescou algo, então o que foi pescado é peixe.

pescou(felipe, bagre).
pesca(X, R) :- pescador(X), navega(_, R). % 3. Todo pescador pesca em algum rio se existir barco navegando nele.
pesca(felipe, amazonas).
navega(B, R) :- barco(B), rio(R). % 4. Todo rio tem um barco que navega nele.
navega(perola_negra, amazonas).

pescador(X) :- pescou(X, _). % 1. Quem pescou algo é pescador.

sereia(claudia).
encanta(C, X) :- sereia(C), pescador(X). % 5. Toda sereia encanta qualquer pescador.

%Códigos da query
% pescador(felipe).
% pescou(X, bagre).
% pesca(felipe, amazonas).
% navega(perola_negra, amazonas).
% pesca(X, amazonas).
