figure;
cycle = length(Naren.happy);
for i = 1:cycle
   t = mean(Naren.happy{i}, 1);
   subplot(3,2,i);
   cwt(t, 'morse', 2500);
   title(sprintf('happy %d', i));
   colormap('jet');
   xl = xticks - 0.2;
   xticks(xl);
end

figure;
cycle = length(Naren.happy);
for i = 1:cycle
   t = mean(Naren.sad{i}, 1);
   subplot(3,2,i);
   cwt(t, 'morse', 2500);
   title(sprintf('sad %d', i));
   colormap('jet');
   xl = xticks - 0.2;
   xticks(xl);
end

figure;
cycle = length(Naren.happy);
for i = 1:cycle
   t = mean(Naren.anger{i}, 1);
   subplot(3,2,i);
   cwt(t, 'morse', 2500);
   title(sprintf('anger %d', i));
   colormap('jet');
   xl = xticks - 0.2;
   xticks(xl);
end

figure;
cycle = length(Naren.happy);
for i = 1:cycle
   t = mean(Naren.fear{i}, 1);
   subplot(3,2,i);
   cwt(t, 'morse', 2500);
   title(sprintf('fear %d', i));
   colormap('jet');
   xl = xticks - 0.2;
   xticks(xl);
end
