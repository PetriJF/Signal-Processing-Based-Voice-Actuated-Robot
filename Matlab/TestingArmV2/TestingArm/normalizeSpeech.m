function out = normalizeSpeech(in, ampMax)
%% Team 5 - Speech normalizing
%     Scale speech by its peak value
% 
%     Input Parameters : 
%       in       Input speech
%       ampMax   Expected peak value between 0 and 1
%     Output Parameters : enhanced speech  
%       out      Output Scaled Speech
%% M 
    out = zeros(length(in),1);
    if( ampMax > 1 || ampMax < 0 )  % If the ratio is out of bounds
        disp(float2Str(ampMax) + " is out of bounds");
    else    % Normal working condition
        % Normalizing based on the difference between the distance from
        % origin (0 amplitude) on both sides (i.e. the pozitive side and
        % the absolute value of the negative side). The ratio is then
        % created and multiplied by the input signal in order to bring it
        % to the desired format.
        if (max(in) > abs(min(in)))
            out = in .* (ampMax ./ max(in));
        else
            out = in .* ((-1 * ampMax) ./ min(in));
        end
    end

end