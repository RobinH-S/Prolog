	% Code inspired by https://gist.github.com/follesoe/3622877#file-birthday-pl 


print_solution([Head|Tail]) :-
	write(Head),
	nl,
	print_solution(Tail).	

solution(S) :-

	S = [[Name1, Item1, Zone1, Song1],
	     [Name2, Item2, Zone2, Song2],
	     [Name3,  Item3, Zone3, Song3],
	     [Name4,  Item4, Zone4, Song4],
	     [Name5,  Item5, Zone5, Song5]],
    
    
    Students = [florence, darren, jill, lily, mort],
    Students = [Name1, Name2, Name3, Name4, Name5],
    
    
    Item = [sundial, sunflower, dried_tomato, sundae, sunlamp],
	permutation(Item, [Item1, Item2, Item3, Item4, Item5]),
    
    Zone = [here_comes_the_sun, hot_hot_hot, sunny_afternoon, sunrise_sunset, the_heat_is_on],
	permutation(Zone, [convective, radiative, chromosphere, photosphere, core]),
    
    Song = [here_comes_the_sun, hot_hot_hot, sunny_afternoon, sunrise_sunset, the_heat_is_on],
	permutation(Song, [Song1, Song2, Song3, Song4, Song5]),
    
    
    member([florence, Item1, Zone1, Song1], S), Item1 \= sunlamp, Zone1 \= radiative,
    member([darren, Item2, photosphere, Song2], S),
    member([jill, sundial, Zone3, Song3], S),
    member([lily, Item4, Zone4, Song4], S), Item4 \= sunlamp, Song4 \= hot_hot_hot,  Song4 \= here_comes_the_sun, 
    member([mort, Item5, Zone5, sunrise_sunset], S), Item5 \= sundae, Item5 \= sunlamp, Zone5  \= radiative,

    member([_, _, chromosphere, sunny_afternoon], S),

    member([_, dried_tomato, _,here_comes_the_sun ], S),

    
	print_solution(S).

