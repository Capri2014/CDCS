function [Z,others] = updateZ(X,Y,Z,rho,others,K)

% UPDATEZ(X,Y,Z,rho,Ech,K)
% Update the dual mulipliers using the usual gradient ascent rule

Z.vec = Z.vec + rho.*( Y.vec - flatten(Y.vec,X.blk) );
Z.blk = blockify(Z.blk,Z.vec,K);

end