function [fitresult, gof] = ajusteporplano(X, Y, Z)
%CREATEFIT(X,Y,Z)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : X
%      Y Input : Y
%      Z Output: Z
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 01-May-2017 13:38:22


%% Fit: 'untitled fit 1'.
[xData, yData, zData] = prepareSurfaceData( X, Y, Z );

% Set up fittype and options.
ft = fittype( 'a*x+b*y+d', 'independent', {'x', 'y'}, 'dependent', 'z' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.442225949594111 0.266788182008431 0.906421025870671];

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft, opts );

% Plot fit with data.
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, [xData, yData], zData );
% legend( h, 'untitled fit 1', 'Z vs. X, Y', 'Location', 'NorthEast' );
% Label axes
% xlabel X
% ylabel Y
% zlabel Z
grid on
view( -53.5, 35.6 );

