// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;

contract MovieContract{

    struct Movie{
        string name;
        string director;
        uint year;
    }

    Movie[] public movies;
    // movies.push(Movie("Hello","Hey",2000));

    function exampleMovies() external {
        Movie memory avengers = Movie("Avengers","MARVEL",2019);
        
        Movie memory harry = Movie("Harray Potter","Rowling",2011);

        movies.push(avengers);
        movies.push(harry);

        // movies.push(Movie("Batman","Nolan",2012));
    }
}