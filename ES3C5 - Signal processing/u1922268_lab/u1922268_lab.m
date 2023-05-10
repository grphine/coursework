function Answers = u1922268_lab()
%% ES3C5 lab submission template
%
% Please DO NOT change this header
% Please DO NOT change any code in this top-level function
% Please DO NOT change function or subfunction arguments (Input OR Output)
% DO Change function name above to u<ID>_lab2(), where <ID> is your student #

% ES3C5 2022-2023 Lab Assignment
% Module Leader: Adam Noel

% Modify the SUBFUNCTIONS below with the code needed to determine or
% demonstrate the answers requested.

% See the Briefing Sheet for full instructions.

% Initialise answer structure
Answers = [];

%% Template call (dummy)
Q0();

%% Remaining Calls
Answers.Q1 = Q1Fun();
Answers.Q2 = Q2Fun();
Answers.Q3 = Q3Fun();
Answers.Q4 = Q4Fun();

end

%% Template Question on hypotenuse length
% This subfunction is a sample to demonstrate what is expected for comments
function c0 = Q0()
% Please DO NOT change function arguments (input OR output)
% Assign answer to c0 (double value)

% Define triangle lengths
a0 = 2; % 1st side
b0 = 1; % 2nd side

% Find length of hypothenuse
c0 = sqrt(a0^2 + b0^2); % Pythagorean theorem to find 3rd side

end

%%
%%%%%%%%%%%%%%%%%%% Start Modifying Below %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Q1 Audio Signal Processing
% Figures created must be labelled and copied to u<ID>_lab.docx
function Q1 = Q1Fun()
% Please DO NOT change function arguments above (input OR output)
% You must call a plotting function but you can label it manually.

    % Initialising outputs to guarantee they exist (unless you delete them)
    % Please DO NOT modify or move the code below
    audioRaw = []; % Q1 part (a)

    Q1.w = []; % Q1 part (b)
    Q1.L = []; % Q1 part (b)
    Q1.hb = []; % Q1 part (b)
    Q1.audioLow = []; % Q1 part (b)

    Q1.D = []; % Q1 part (c)
    Q1.b = []; % Q1 part (c)
    Q1.a = []; % Q1 part (c)
    Q1.audioReverb = []; % Q1 part (c)

    Q1.audioNoisy = []; % Q1 part (d)
    Q1.FFT = []; % Q1 part (d)

    Q1.he = []; % Q1 part (e)
    Q1.audioNotNoisy = []; % Q1 part (e)
    % Please DO NOT modify or move the code above
    
    %% Start your Q1 code here
    % DO NOT REMOVE OR MOVE THIS IF STATEMENT
    % WRITE YOUR CODE INSIDE THIS IF STATEMENT
    if exist('u1922268_lab_Audio.mat', 'file') == 2 ... % Update with your student ID
        && exist('u1922268_lab_signals.mat', 'file') == 2 % Update with your student ID

        load('u1922268_lab_Audio.mat', 'audioRaw') % Update with your student ID
        load('u1922268_lab_signals.mat', 'n1') % Update with your student ID
        
        fs = 22050; %sampling rate
        rp = 0.092; %pass band ripple parameter (dB)
        fp1 = 3331; %pass band edge frequency (Hz)
        fstop1 = 3798; %stop band edge frequency (Hz)
        A1 = 0.55; %reverb relative strength
        t1 = 0.14; %delay (s)

        Q1.w = 'hamming';
        o_d = ((2*pi*fstop1)/fs) - ((2*pi*fp1)/fs); % window phase difference
        Q1.L = ceil(1 + ((6.64*pi)/o_d)); % window length

        fc_normalised = (2*((fstop1 + fp1)/2))/fs; % normalised cutoff frequency 

        b = fir1(Q1.L,fc_normalised); % filter transfer function coefficients
        Q1.hb = impz(b,1);    % impulse response
        Q1.audioLow = filter(b,1,audioRaw); % audio signal through low pass filter

        Q1.D = t1 * fs;     % delay in samples
        D = uint16(Q1.D); %convert D to integer
        Q1.b = zeros(1, D + 1); % initialise numerator vector of transfer function
        Q1.b(1) = -A1; % set coefficients
        Q1.b(D + 1) = 1;
        Q1.a = zeros(1, D + 1); % initialise denominator vector 
        Q1.a(1) = 1;    % set coefficients
        Q1.a(D + 1) = -A1;
        Q1.audioReverb = filter(Q1.b, Q1.a, Q1.audioLow);   %reverb audio signal

        Q1.audioNoisy = Q1.audioReverb + n1; % contaminate audio with noise source
        Q1.FFT = fft(Q1.audioNoisy); % fft of the noisy signal
        
        audio_size = length(Q1.audioNoisy);   % elements in audio file
        frequencies = linspace(0,fs-1,audio_size);  %frequencies in file
        
        figure(1); stem(frequencies, abs(Q1.FFT));    % stem plot magnitude against frequencies
        xlabel('Frequency (Hz)');
        ylabel('Magnitude');
        title('u1922268 Q1.d');
        subtitle('FFT: magnitude against frequency');
        
        noise_frequency = 186;  % frequency of noise signal
        stopband_low = ((noise_frequency - 50)/fs)*2;    % normalised stopband low cutoff frequency
        stopband_high = ((noise_frequency + 50)/fs)*2;   % normalised stopband high cutoff frequency
        L = ceil(1 + (6.22/(stopband_high - stopband_low)));    % create window length
        if mod(L,2) ~= 0    % ensure L is even 
            L = L + 1;
        end
        b = fir1(L, [stopband_low stopband_high], 'stop', hann(L+1));   % produce filter coefficients
        Q1.he = freqz(b,1,fs);   % normalised frequency response
        Q1.audioNotNoisy = filter(b,1,Q1.audioNoisy);   % filter the noisy signal

        t = linspace(0,5,110250); % time vector for plotting
        
        figure(3); 
        subplot(3,1,1); % create subplot to compare each signal on a single figure
        plot(t,Q1.audioReverb); % plot reverb against time
        xlabel('Time (s)');
        ylabel('Magnitude');
        title('Original signal');
        subplot(3,1,2);
        plot(t,Q1.audioNoisy);  % plot noisy audio
        xlabel('Time (s)');
        ylabel('Magnitude');
        title('Noisy signal');
        subplot(3,1,3);
        plot(t,Q1.audioNotNoisy);   % plot filtered audio
        xlabel('Time (s)');
        ylabel('Magnitude');
        title('Filtered signal');
        sgtitle('u1922268 Q1.e.iv');
               
    end

end

%% Q2 Interference and Aliasing
% Figures created must be labelled and copied to u<ID>_lab.docx
function Q2 = Q2Fun()
% Please DO NOT change function arguments above (input OR output)
% You must call a plotting function but you can label it manually.

    % Initialising outputs to guarantee they exist (unless you delete them)
    % Please DO NOT modify code below
    Q2.FFT = []; % Q2 part (a)    
    Q2.fRange = []; % Q2 part (a)

    Q2.fInter = []; % Q2 part (b)

    Q2.fFast = []; % Q2 part (c)
    % Please DO NOT modify code above
    
    %% Start your Q2 code here
    % DO NOT REMOVE OR MOVE THIS IF STATEMENT
    % WRITE YOUR CODE INSIDE THIS IF STATEMENT
    if exist('u1922268_lab_signals.mat', 'file') == 2 % Update with your student ID
        load('u1922268_lab_signals.mat', 'y2') % Update with your student ID
        
        f2s = 1800; %sampling frequency (Hz)
        f_satellite = 600; %satellite signal (Hz)

        Q2.FFT = fft(y2);   %fast fourier transform of y2
        Q2.fRange = 0:f2s-1; %vector of frequency values (including negative mirror)          
%         mirror = fftshift(Q2.FFT);   % mirrored elements for plotting
        
%         figure(3); stem(Q2.fRange, abs(mirror));    % stem plot magnitude against frequencies, 0 centred
%         xline(f_satellite, 'r-', 'Satellite frequency');    %plot expected satellite frequency
%         xlabel('Frequency (Hz)');
%         ylabel('Magnitude');
%         title('u1922268 Q2.a');
%         subtitle('FFT: magnitude against frequency');
        
        figure(4);  %create figure
        stem(Q2.fRange, abs(Q2.FFT));   %stem plot magnitude against frequencies present
        xline(f_satellite, 'r-', 'Satellite frequency');    %plot expected satellite frequency
        xlabel('Frequency (Hz)');
        ylabel('Magnitude');
        title('u1922268 Q2.a');
        subtitle('FFT: magnitude against frequency');

%         yvals = mag(mag > 50, :)
%         for c = 1:10
%             val = find(mag == yvals(c))
%         end
            
        Q2.fInter = [117 256 733 853]; %identified interfering frequencies

        Q2.fFirst = 947;    % lowest frequency that may produce alias
        f_alias = 853;   % alias frequency
        t = 1/f2s * Q2.fRange;  %sampling times
        signal_original = sin(2*pi*Q2.fFirst*t); % original signal in time domain
        signal_alias = sin(2*pi*f_alias*t); % alias signal

        figure(5); 
        set(gcf, 'Position',  [100, 100, 800, 400]);    % ensure enough size for graph
        subplot(2,2,1);
        plot(signal_original(1,1:100)); % plot sample of original signal
        xlabel('n');
        ylabel('Magnitude');
        title(sprintf('%d Hz signal with 1800 Hz sampling frequency', Q2.fFirst))

        signal_original_fft = fft(signal_original);     %fft transform original signal
        subplot(2,2,2); 
        stem(Q2.fRange, abs(signal_original_fft));   % fft plot of original signal
        xlabel('Frequency (Hz)');
        ylabel('Magnitude');
        title(sprintf('FFT: magnitude against frequency of original signal (%d Hz)',Q2.fFirst));

        subplot(2,2,3);
        plot(signal_alias(1,1:100));    % plot sample of alias
        xlabel('n');
        ylabel('Magnitude');
        title(sprintf('%d Hz alias signal with 1800 Hz sampling frequency', f_alias))

        signal_alias_fft = fft(signal_alias);     % fft alias
        subplot(2,2,4); 
        stem(Q2.fRange, abs(signal_alias_fft));     % fft plot of alias
        xlabel('Frequency (Hz)');
        ylabel('Magnitude');
        title(sprintf('FFT: magnitude against frequency of alias signal (%d Hz)',f_alias));
        sgtitle('u1922268 Q2.c');
                
    end
end

%% Q3 Estimating Unknown Signal
function Q3 = Q3Fun()
% Please DO NOT change function arguments (input OR output)

    % Initialising outputs to guarantee they exist (unless you delete them)
    % Please DO NOT modify code below
    Q3.Obs = []; % Q3 part (a)

    Q3.param = []; % Q3 part (b)

    Q3.yHat = []; % Q3 part (c)

    Q3.mse = []; % Q3 part (d)

    Q3.yFFT = []; % Q3 part (f)
    Q3.yHatFFT = []; % Q3 part (f)
    Q3.fRange = []; % Q3 part (f)
    % Please DO NOT modify code above

    % DO NOT REMOVE THIS IF STATEMENT
    % WRITE YOUR CODE INSIDE THIS IF STATEMENT
    if exist('u1922268_lab_signals.mat', 'file') == 2 % Update with your student ID
        load('u1922268_lab_signals.mat', 'y3') % Update with your student ID
        
        Ts3 = 0.025; %constant sampling interval (s)
        %y3(t) = A3*(1-exp(-0.11*t)) + B3*exp(-0.46*t)*sin(11.60*t) +
        %C3*sin(25.13*t) + w3(t)   %transient heating profile
        
        sz = size(y3);  % number of samples
        t_vector = (0:sz-1)*Ts3; % vector of timestamps
        a_vector =  1 - exp(-0.11.*t_vector); % vector of A coefficients
        b_vector = exp(-0.46.*t_vector).*(sin(11.6 .* t_vector)); % vector of B coefficients
        c_vector = sin(25.13 .* t_vector); % vector of C coefficients
        
        Q3.Obs =  [reshape(a_vector,[sz(1) 1])  reshape(b_vector,[sz(1) 1])  reshape(c_vector,[sz(1) 1]) ]; % observation matrix
        Q3.param = lscov(Q3.Obs,y3); % calculate constants A, B, and C by least squares estimate

        Q3.yHat = Q3.Obs * Q3.param;    % temperature predictions
        
        for n = 1:sz
            mse_sum = (Q3.yHat(n) - y3(n))^2;   % summation as part of mse calculation
        end
        Q3.mse = (1/sz(1)) * mse_sum;   % calculate mean square error 

        figure(6); 
        plot(t_vector, y3); % plot measured temperatures
        hold on;
        plot(t_vector, Q3.yHat,'LineWidth',2); % plot predicted values on smae plot
        hold off;
        grid on;
        legend('Measured', 'Predicted'); 
        xlabel('Time (s)');
        ylabel('Temperature (°C)');
        title('u1922268 Q3.e');
        subtitle('Measured and predicted temperature values against time');

        Q3.yFFT = fft(y3);  % fft of measured values
        Q3.fRange = linspace(0,(1/Ts3)-1,sz(1));    % array of frequencies 
        Q3.yHatFFT = fft(Q3.yHat); % fft of yHat

        figure(7);  
        stem(Q3.fRange, abs(Q3.yFFT));   %stem plot magnitude against frequencies present, measured
        hold on; stem(Q3.fRange, abs(Q3.yHatFFT)); hold off; % stem plot predicted
        legend('Measured', 'Predicted');
        xlabel('Frequency (Hz)');
        ylabel('Magnitude');
        title('u1922268 Q3.f');
        subtitle('FFT: magnitude against frequency');

    end

end

%% Q4 Communications Signal
function Q4 = Q4Fun()
% Please DO NOT change function arguments (input OR output)

    % Initialising outputs to guarantee they exist (unless you delete them)
    % Please DO NOT modify code below
    Q4.Obs = []; % Q4 part (a)

    Q4.W = []; % Q4 part (b)

    Q4.param = []; % Q4 part (c)

    Q4.yHat = []; % Q4 part (d)

    Q4.k4Est = []; % Q4 part (e)
    % Please DO NOT modify code above

    % DO NOT REMOVE THIS IF STATEMENT
    % WRITE YOUR CODE INSIDE THIS IF STATEMENT
    if exist('u1922268_lab_signals.mat', 'file') == 2 % Update with your student ID
        load('u1922268_lab_signals.mat', 'y4', 'x4') % Update with your student ID

        %y4[n] = A4*x[n] + B4*x[n-1] + C4*x[n-6] + D4*x[n-9] + w4[n]
        %%wireless propogation difference equation
        
        s4 = 46;   % affected samples
        k4 = 12.0; % noise variance factor
        sz = size(x4);  % number of samples

        a_vector = x4; % vector of expected A path values
        b_vector = [0; x4(1:end-1)]; % B vector with 1 delay
        c_vector = [zeros(6,1); x4(1:end-6)]; % C vector with 6 delay
        d_vector = [zeros(9,1); x4(1:end-9)]; % D vector with 9 delay

        Q4.Obs =  [a_vector b_vector c_vector d_vector]; % observation matrix
        Q4.W = [ones(sz(1)-s4,1); (ones(s4,1).*(1/k4))]; % weights vector

        Q4.param = lscov(Q4.Obs, y4, Q4.W); % least square estimate with weighting
        Q4.yHat = Q4.Obs * Q4.param;    % voltage predictions

        figure(8); 
        plot(y4); % plot measured voltage
        hold on;
        plot(Q4.yHat,'LineWidth',2); % plot predicted values
        hold off;
        grid on;
        legend('Measured', 'Predicted'); 
        xlabel('Sample n');
        ylabel('Voltage (V)');
        title('u1922268 Q4.e');
        subtitle('Measured and predicted voltage values per sample');

    end

end