function [] = createnew_fig( cb, data )

    hh = copyobj(cb, figure);
    set(hh, 'ButtonDownFcn', []);
    set(hh, 'Position', get(0, 'DefaultAxesPosition'));
    legend('happy', 'angry', 'sad', 'fear');
end

