% Parameters
beta = 316.227766; % rad/m
E0 = 1000; % V/m
B0 = 3.16227766e-5; % T

% Wavelength
lambda = 2 * pi / beta;

% Spatial range (3 wavelengths)
x = linspace(0, 3 * lambda, 100); % From 0 to 3 wavelengths

% Electric field components at t = 0
E_x = zeros(size(x)); % E has no x-component
E_y = E0 * cos(beta * x); % V/m (along y-axis)
E_z = zeros(size(x)); % E has no z-component

% Magnetic field components at t = 0
B_x = zeros(size(x)); % B has no x-component
B_y = zeros(size(x)); % B has no y-component
B_z = -B0 * cos(beta * x); % T (along z-axis)

% Create a new figure
figure;

% Plot E field vectors
quiver3(x, E_x, E_z, zeros(size(x)), E_y, zeros(size(x)), 'b', 'LineWidth', 1.5);
hold on;

% Plot B field vectors
quiver3(x, B_x, B_z, zeros(size(x)), zeros(size(x)), B_z, 'r', 'LineWidth', 1.5);

% Labels and title
xlabel('Position x (m)');
ylabel('Electric Field E_y (V/m)');
zlabel('Magnetic Field B_z (T)');
title('3-D Plot of Electric and Magnetic Fields at t = 0');

% Set view angle for better visualization
view(30, 30);

% Add legend
legend({'Electric Field \mathbf{E}', 'Magnetic Field \mathbf{B}'}, 'Location', 'best');

% Grid for better visualization
grid on;

% Adjust axes limits for clarity
axis tight;

saveas(gcf, 'graph.png'); % Save the figure as a PNG file