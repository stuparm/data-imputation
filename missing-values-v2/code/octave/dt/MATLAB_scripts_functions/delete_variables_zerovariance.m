function [ X, Var0Variable ] = delete_variables_zerovariance( X )
%DELETE_VARIABLES_ZEROVARIANCE Delete variables with zero variance
% Var0Variable: number with zero variance

Var0Variable = find( var(X) == 0 );
if isempty(Var0Variable)
    disp( 'No variables with zero vairance' );
else
    disp( [' ' num2str(length(Var0Variable)) ' variable(s) with zero variance.'] );
    disp( ['Variable number: ' num2str(Var0Variable)] );
    disp( 'The variable(s) is(are) deleted.' );
    X(:, Var0Variable) = [];
end

end

