ismember(X, [X|_]).        % ismember(X, [Head|Tail]) is true if X = Head 
                           % that is, if X is the head of the list
ismember(X, [_|Tail]) :-   % or if X is a member of Tail,
  ismember(X, Tail).       % ie. if ismember(X, Tail) is true.
