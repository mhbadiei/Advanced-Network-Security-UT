close all
clear; clc;

%monte carlo simulation
M = 50;
t_max = 100;
I_Monte_Carlo = zeros(M,t_max);

% Let's solve the problem :)
beta = 0.5; %0.1,0.8
r0 = 5;
eta =1 ; % parameter of 2nd article model.
sigma = 0.25;
X_dimantion = 100;
Y_dimantion = 200;
N = X_dimantion * Y_dimantion * sigma; 

for m=1:1:M
    m
    figure
    hold off
    X=rand(2,N);
    x=X(1,:)*X_dimantion;
    y=X(2,:)*Y_dimantion;
    plot(x,y,'.');drawnow;pause(0.5)
    init_coord = [0, 0];
    break_flag = 0;
    for i=1:1:length(x)
        if (x(i)>45 && x(i)<55)
            if (y(i)>95 && y(i)<105)
                break_flag=1;
                init_coord=i;
                break
            end
        end
        if break_flag==1
           break 
        end
    end

    infected_nodes = init_coord;
    for t=1:1:t_max
        infected_nodes_temp = infected_nodes;
        for i =1:1:length(x)
           if (~any(i == infected_nodes)) 
               for k=1:1:length(infected_nodes)
                  if (sqrt((x(infected_nodes(k))-x(i)).^2+(y(infected_nodes(k))-y(i)).^2)<= r0)
                      if rand <= beta
                          infected_nodes_temp = [infected_nodes_temp, i];
                          break
                      end
                  end
               end
           end
        end
        infected_nodes = infected_nodes_temp;
        plot(x,y,'.');drawnow;pause(0.1)
        hold on
        plot(x(infected_nodes),y(infected_nodes),'.');drawnow;pause(0.1)
        hold off
        I_Monte_Carlo(m,t)=length(infected_nodes);
        if(length(infected_nodes)==N)
            I_Monte_Carlo(m,t:t_max) = N;
            break 
        end
    end
end

% 1st article
I_1 = zeros(1,t_max);
% 2nd article
I_2 = zeros(1,t_max);

for t=1:1:t_max
    I_1(1,t)= N*(2./(1+(((sqrt(N)-1)./(sqrt(N)+1))*exp(-(2*beta*(sqrt(sigma*pi)*r0).*3*t)/sqrt(N))))-1).^2;
    I_2(1,t)= N*(2./(1+(((sqrt(N)-1)./(sqrt(N)+1))*exp(-(2*beta*sqrt(sigma*pi)*eta*r0)/sqrt(N))*t))-1).^2;
end
figure
hold on
plot(0:1:t_max,[1 sum(I_Monte_Carlo,1)/M])
plot(0:1:t_max,[1 I_1])
plot(0:1:t_max,[1 I_2])

xlabel('Time'),ylabel('Infected Nodes')
title('I(t) in SI Models')
grid on,grid minor
legend({'I(t) our problem','I(t) 1st article', 'I(t) 2nd article'},'Location','southeast')
