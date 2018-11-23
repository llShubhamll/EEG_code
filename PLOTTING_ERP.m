% matrix generation
data = load('../EEG_data/Naren/Naren_filtered_epochs.mat');
a=["Fp1","Fz","F3","F7","FT9","FC1","C3","T7","CP5","CP1",...
    "Pz","P7","O1","Oz","O2","P4","P8","CP6","CP2","C4","T8",...
    "FT10","FC6","FC2","F4","F8","Fp2","AF7","AF3","AFz","F1",...
    "F5","FT7","FC3","FCz","C5","TP7","CP3","P1","P5","PO7",...
    "PO3","POz","PO4","PO8","P6","P2","CPz","CP4","TP8","C6",...
    "C2","FC4","FT8","F6","F2","AF4","AF8"];    
erp1=mean(data.epochs{1}, 3);
erp2=mean(data.epochs{2}, 3);
erp3=mean(data.epochs{3}, 3);
erp4=mean(data.epochs{4}, 3);

for t=1:58
    subplot(9,7,t);
    plot(erp1 (t,:),'color','b');title(a(t));
    hold on
    plot(erp2(t,:),'color','r');title(a(t));
    hold on
    plot(erp3(t,:),'color','g');title(a(t));
    hold on
    plot(erp4(t,:),'color','k');title(a(t));
    set(gca, 'ButtonDownFcn', @createnew_fig);
    grid on;
end


    
