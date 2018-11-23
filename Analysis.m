dataNepochs = cell(length(ALLEEG), 1);
for i = 1:length(dataNepochs)
    dataNepochs{i} = ALLEEG(i).data;
end
data = dataNepochs{1};
epochs = dataNepochs(2:end);

save('../EEG_data/Naren/Naren_filtered_epochs.mat', 'data', 'epochs');

m = length(ALLEEG(1).chanlocs);
channelLabels = cell(m, 1);
for i = 1:m
    channelLabels{i} = lower(ALLEEG(1).chanlocs(i).labels);
end

channelMap = containers.Map(channelLabels, 1:m);
figure;
plot(1:size(data, 2), data(channelMap('fp2'), :));


% This is a test comment.