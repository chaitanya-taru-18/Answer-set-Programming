# Answer Set Programming

Problem Encoding:

Program execution instructions on terminal:<br>
  > Save all files in a same folder (problem_encoding.lp, problem_instance1.lp,
                                     problem_instance2.lp, problem_instance3.lp). <br>
  > Initiate clingo (For anaconda prompt type "conda activate potassco"). <br>
  > Run command clingo problem_encoding.lp problem_instance[i].lp, i ∈ {1,2,3}.<br>

Program execution instructions on Running Clingo (https://potassco.org/clingo/run/): <br>
  > Copy paste problem_instance[i].lp, i ∈ {1,2,3} one at a time. <br>
  > Copy paste problem_encoding.lp below the instance.<br>
  > Set reasoning mode 'enumerate all'.<br>
  > hit Run!<br>

Problem Statement:
> A university library needs to cancel its subscription to a number of journals
to meet a proposed budget cut. There are 'n' candidate journals j1 to jn under
consideration. To decide which journals to cancel, there are some constraints in consideration.

input:<br> n number of journals 1..n. <br>
        m is a benchmark for citation count in subject area; <br>
       k is a benchmark for citation count in related areas; <br>
       r is benchmark value of avarage ratings given by faculty;<br>
       p is a minimum value of nomber of usage of a particular journal;<br>
       j/1 is a set of journals (1..n);<br>
       co/2 is a set of (J,CO), where journal J has citation count CO in subject area;<br>
       cr/2 is a set of (J,CR), where journal J has citation count CR in related areas;<br>
       rtn/2 is a set of (J,R), where journal J has average rating R;<br>
       u/2 is a set of (J,U), where journal J has usage rate U;<br>
       sc/2 is a set of (J,SC), where journal J has SC subscription cost.<br>
