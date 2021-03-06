function [candidatos, e]=encontrarcandidatos2(Qi, x2, y2)

    candidatos=[] ;
    e = [] ;
    Pi=Qi(1:2,:);
    for kk=1:(length(x2))
        ll=1;
        while size(Pi,2)>0 && ll<size(Pi,2)+1  %Si Pi tiene algun elemento y ll no supera la cantidad de elementos de Pi
            d = norm([x2(kk), y2(kk)]-Pi(:,ll)'); %Calculo la distancia entre el puntos kk de la recta y uno de los centros encontrados
            e = [e, d] ;
            if d<10
                candidatos = [candidatos; Pi(:,ll)'];
                Pi=[Pi(:,1:(ll-1)),Pi(:,(ll+1):end)];
            end
            ll=ll+1;
        end 
    end
    e = min(e);
end