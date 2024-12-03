
%% TASK 1 
% Robots
X = [0.75528, -0.0609]';
% Robot stiff - Good for position control
M = diag([500,500]); %lambdax and lambday
B = diag([3000,3000]);
K = diag([2500,2500]);

% Robot flexible - Good for effort control
% M = diag([100,100]); %lambdax and lambday
% B = diag([1500,1500]);
% K = diag([250,250]);


% Environment Compliant
Ke = diag([1E3,0]);
Xe = [0.7803,0.24119]';

% Environment Compliant
Ke = diag([1E4,0]);
Xe = [3,4]';



% Task Specific variables
kp= 9e-2; ki = 9e-2;
cfx = tf({[kp ki],1},{[1 0],1});
%Cf = diag([cfx,0]);

Fd = [10, 0]';
Fe = [3, 0]'; 

set_param('commande_en_effort_avec_boucle_interne_en_position', 'SimulationCommand', 'start');







% Graphs
% out = sim("Commande_effort_vitesse.slx")
% x = out.position.signals.values(:,1);
% y = out.position.signals.values(:,2);
% t=out.tout;
% Xfe = out.force.signals.values(:,1);
% Yfe = out.force.signals.values(:,2);
% % 1. Graphique de x et y en fonction du temps
% figure;
% plot(t, x, 'LineWidth', 1.5, 'DisplayName', 'x');
% hold on;
% plot(t, y, 'LineWidth', 1.5, 'DisplayName', 'y');
% grid on;
% xlabel('Temps (s)');
% ylabel('Valeurs');
% title('x et y en fonction du temps');
% legend('show');
% hold off;
% % 2. Graphique de x en fonction de y
% figure;
% plot(x, y, 'LineWidth', 1.5);
% grid on;
% xlabel('x');
% ylabel('y');
% title('x en fonction de y');
% % 3. Graphique de Xfe et Yfe en fonction du temps
% figure;
% plot(t, Xfe, 'LineWidth', 1.5, 'DisplayName', 'Xfe');
% hold on;
% plot(t, Yfe, 'LineWidth', 1.5, 'DisplayName', 'Yfe');
% grid on;
% xlabel('Temps (s)');
% ylabel('Valeurs de force');
% title('Xfe et Yfe en fonction du temps');
% legend('show');
% hold off;
 
	

        