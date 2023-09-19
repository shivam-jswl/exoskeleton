% func_rot is needed for the main program
% func_rot returns rotaion matrix, 'rot' about z-axis at given 'theta' angle

function Rot = func_rot(theta)
    Rot = [cos(theta) -sin(theta) 0;
           sin(theta)  cos(theta) 0;
              0             0     1];
end