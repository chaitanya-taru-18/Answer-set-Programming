% Chaitanya Sanjay Taru, 21109423

% Problem Encoding:

% Program execution instructions on terminal:
%   > Save all files in a same folder (problem_encoding.lp, problem_instance1.lp,
%                                      problem_instance2.lp, problem_instance3.lp)
%   > Initiate clingo (For anaconda prompt type "conda activate potassco")
%   > Run command clingo problem_encoding.lp problem_instance[i].lp, i ∈ {1,2,3}.

% Program execution instructions on Running Clingo (https://potassco.org/clingo/run/):
%     > Copy paste problem_instance[i].lp, i ∈ {1,2,3} one at a time.
%     > Copy paste problem_encoding.lp below the instance.
%     > Set reasoning mode 'enumerate all'.
%     > hit Run!

% Problem Statement:
% A university library needs to cancel its subscription to a number of journals
% to meet a proposed budget cut. There are 'n' candidate journals j1 to jn under
% consideration. To decide which journals to cancel, there are some constraints in consideration.

% input: n number of journals 1..n.
%        m is a benchmark for citation count in subject area;
%        k is a benchmark for citation count in related areas; 
%        r is benchmark value of avarage ratings given by faculty;
%        p is a minimum value of nomber of usage of a particular journal;
%        j/1 is a set of journals (1..n);
%        co/2 is a set of (J,CO), where journal J has citation count CO in subject area;
%        cr/2 is a set of (J,CR), where journal J has citation count CR in related areas;
%        rtn/2 is a set of (J,R), where journal J has average rating R;
%        u/2 is a set of (J,U), where journal J has usage rate U;
%        sc/2 is a set of (J,SC), where journal J has SC subscription cost.

{cancelledJ(J) : j(J)}.
% achieved: set cancelledJ(J) consist of all the journals J from j(1..n).

:- cancelledJ(J), co(J,CO), CO > m, cr(J,CR), CR > k, rtn(J,R), R > r.
% achieved: all those journals from cancelledJ(J) are removed which are satisfying the constraints
%           citation count CO in subject area greater than m;
%           citation count CR in related areas greater than k;
%           average rating R is greater than r;
%           Hence there remains only the journals that are to be cancelled.

:- #sum{U, J : cancelledJ(J), u(J, U)} > p.
%Sum of all cancelled journals must not be exceeding the value p.


% Optimizing the answer set of cancelled journals.
#maximize{SC, J : cancelledJ(J), sc(J, SC)}.
% achieved: Optimum value of the subcription cost.

% This will provide an optimum set consisting all the journals which are needed to be cancelled from 
% the various answer set solutions provided by Clingo. 


#show cancelledJ/1.
% Output will show only cancelledJ/1.