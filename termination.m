function [islooping,solusi] = termination(populasi)
    [the_best_solution,~] = selection(populasi);
    clc
    the_best_solution.gen
    if the_best_solution.fitness == 100
        islooping = false;
    else
        islooping = true;
    end
    solusi = the_best_solution;
end
