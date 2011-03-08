% Test lbfgs using rosenbrock function from Carl Rasmussen's minimize package.
%
% see http://www.kyb.tuebingen.mpg.de/bs/people/carl/code/minimize/
%
% Copyright 2005-2006 Liam Stewart
% See COPYING for license.

fn = @rosenbrock;
x0 = zeros(100,1);
opts = lbfgs_options('iprint', -1, 'maxits', 1000, 'factr', 1e5, ...
                     'cb', @test_callback);
[x,fx,exitflag,userdata] = lbfgs(fn,x0,opts);

semilogy(userdata.f);
xlabel('Iteration');
ylabel('f');
