%% tarea 4
%constantes
Fs=1000;
seg= 0: 1/Fs: 1;
numsin= 1:10; 

for i= 1:length(numsin); 
    %variables
    Frec(i)= ceil(rand*40); 
    Amplitud(i)= ceil(rand*10); 
    Fase(i)= pi/ceil(rand*10); 
    data(i,:)= Amplitud (i) *sin (2*pi*seg* Frec(i) +Fase(i));
  subplot (2,1,1), hold on %plot en c/iteracion
    plot (seg,data(i,:))
    
end
legend ({'sin1','sin2','sin3','sin4', 'sin5', 'sin6', 'sin7', 'sin8', 'sin9', 'sin10'});  
sumadesenoidales= sum(data); 
 subplot (2,1,2);%plot suma de senoidales
plot(seg,sumadesenoidales,'o-'); 
xlabel('tiempo en segundos'),ylabel('seno del angulo en radianes');