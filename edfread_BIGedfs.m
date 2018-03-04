% reading really large EDFs
% Lora Fanda

subj = 'NY625';
cd '\Users\Lora\Dropbox (Old)\Dropbox\Lora\Ariel'
addpath('C:\Users\Lora\Dropbox (Old)\Dropbox\Lora\Ariel\addpath')

% Here goes code for small analysis of clip to:
% 1. find audioDC9 channel
% 2. estimate rough lag between high and low quality audio

cd edfs
files = dir(['*' subj '*.edf']);
 
%Reading Electrode by electrode; 
electrodeNumber = 126;
electrodeLabel = [];
for k=1:length(files) % # of .edf files to edit  
    clear data header labels
    
    for i=1:electrodeNumber
        [header, data(i,:)]=edfread(files(k).name, 'targetSignals',[i]);
        labels{i,1}=header.label;
    
        % create an if statement that will seperate the data variable into
            % multiple vars if file becomes larger than PC memory allows 
        
    end
   
    savefile = split(files(k).name,'.');
    save([savefile{1}],'data','labels','-v7.3')
end


% dayfiles are still dificult to load

