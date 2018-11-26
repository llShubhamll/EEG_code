% dataNepochs = cell(length(narenPos), 1);
% for i = 1:length(dataNepochs)
%     dataNepochs{i} = ALLEEG(anandPos(i)).data;
% end
% data = dataNepochs{1};
% epochs = dataNepochs(2:end);
% 
% save('../EEG_data/Anand/Anand_data_emotion_epoch_h_a_s_f.mat', 'data', 'epochs');



m = length(ALLEEG(1).chanlocs);
channelLabels = cell(m, 1);
for i = 1:m
    channelLabels{i} = lower(ALLEEG(1).chanlocs(i).labels);
end

channelMap = containers.Map(channelLabels, 1:m);


% Plot correlation spectogram

% Plot Time frequency analysis for different channels


load('../EEG_data/Naren/Naren_data_emotion_epoch_h_a_s_f.mat');

% for i = 1:length(epochs)
%     erp = mean(epochs{i}, 3);
%     corrErp = corr(erp');
%     figure;
%     imagesc(corrErp);
%     set(gca, 'XTick', 1:m);
%     set(gca, 'YTick', 1:m);
%     set(gca, 'XTickLabel', channelLabels);
%     set(gca, 'YTickLabel', channelLabels);
%     colormap('jet');
%     colorbar;
% end

electrodeSelect = cell(6,1);
electrodeSelect(1) = {[channelMap('fp1'), channelMap('fp2')]};
electrodeSelect(2) = {[channelMap('af7'), channelMap('af3'), channelMap('afz'),...
                       channelMap('af4'), channelMap('af8')]};
electrodeSelect(3) = {[channelMap('f7'), channelMap('f5'), channelMap('f3'),...
                      channelMap('f1'), channelMap('fz'), channelMap('f2'),...
                      channelMap('f4'), channelMap('f6'), channelMap('f8')]};
electrodeSelect(4) = {[channelMap('p7'), channelMap('p5'), channelMap('p1'),...
                      channelMap('pz'), channelMap('p2'), channelMap('p4'),...
                      channelMap('p6'), channelMap('p8')]};
electrodeSelect(5) = {[channelMap('po7'), channelMap('po3'), channelMap('poz'),...
                       channelMap('po4'), channelMap('po8')]};
electrodeSelect(6) = {[channelMap('o1'), channelMap('oz'), channelMap('o2')]};


% Happy time-frequency analysis
Naren.happy = cell(6,1);
for i = 1:length(electrodeSelect)
    Naren.happy{i} = zeros(length(electrodeSelect{i}), size(epochs{1}, 2));
    for j = 1:length(electrodeSelect{i})
        tmp = mean(epochs{1}, 3);
        Naren.happy{i}(j, :) = tmp(electrodeSelect{i}(j),:);
    end
end

Naren.anger = cell(6,1);
for i = 1:length(electrodeSelect)
    Naren.anger{i} = zeros(length(electrodeSelect{i}), size(epochs{2}, 2));
    for j = 1:length(electrodeSelect{i})
        tmp = mean(epochs{2}, 3);
        Naren.anger{i}(j, :) = tmp(electrodeSelect{i}(j),:);
    end
end

Naren.sad = cell(6,1);
for i = 1:length(electrodeSelect)
    Naren.sad{i} = zeros(length(electrodeSelect{i}), size(epochs{3}, 2));
    for j = 1:length(electrodeSelect{i})
        tmp = mean(epochs{3}, 3);
        Naren.sad{i}(j, :) = tmp(electrodeSelect{i}(j),:);
    end
end

Naren.fear = cell(6,1);
for i = 1:length(electrodeSelect)
    Naren.fear{i} = zeros(length(electrodeSelect{i}), size(epochs{4}, 2));
    for j = 1:length(electrodeSelect{i})
        tmp = mean(epochs{4}, 3);
        Naren.fear{i}(j, :) = tmp(electrodeSelect{i}(j),:);
    end
end

