% Define the number of points in the lookup table
num_points = 128*8;

% Create the lookup table for the sinusoid
sinusoid_lut = zeros(1, num_points);
for i = 1:num_points
    value = round(511 * (1 + sin(2 * pi * i / num_points)));
    sinusoid_lut(i) = value;
end

% Create the lookup table for the sawtooth wave
sawtooth_lut = linspace(0, 1023, num_points);

% Create the lookup table for the triangular wave
triangular_lut = zeros(1, num_points);
for i = 1:num_points
    value = round((1023 / (num_points / 2)) * (num_points / 2 - abs(i - num_points / 2)));
    triangular_lut(i) = value;
end

% Display the lookup tables
disp('Sinusoid Lookup Table:');
disp(sinusoid_lut);
disp('Sawtooth Wave Lookup Table:');
disp(sawtooth_lut);
disp('Triangular Wave Lookup Table:');
disp(triangular_lut);
