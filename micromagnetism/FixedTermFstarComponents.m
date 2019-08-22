function [bx,by,bz] = FixedTermFstarComponents(mx,my,mz,dHaxda,dHayda,dHazda)
%FIXEDTERMFSTAR
%    [BX,BY,BZ] = FIXEDTERMFSTAR(A,DHAXDA,DHAYDA,DHAZDA)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    29-May-2019 07:51:36

t2 = my;
t3 = mz;
t4 = mx;
t5 = t3.^2;
t6 = t4.^2;
t7 = t2.^2;
bx = -dHaxda.*t5-dHaxda.*t7+dHayda.*t2.*t4+dHazda.*t3.*t4;
if nargout > 1
    by = -dHayda.*t5-dHayda.*t6+dHaxda.*t2.*t4+dHazda.*t2.*t3;
end
if nargout > 2
    bz = -dHazda.*t6-dHazda.*t7+dHayda.*t2.*t3+dHaxda.*t3.*t4;
end
