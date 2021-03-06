clear all;
QueryFilename = 'queries.txt';

queries = textread(QueryFilename, '%s');
[sizeN,col] = size(queries);
% AP_val = [0.09 0.04 0.57 0.17 0.13 0.31 1.0 0.05 1.0 0.08 0.34 0.15 0.21 0.14 0.24 0.61 0.60 0.22 0.09 0.11;
%           0.489   0.0134 0.538 0.663 0.432 0.611 1.0 0.315 0.833 0.352 0.395 0.328 0.702 0.199 0.277 0.293 0.819 0.497 0.321 0.394];
AP_val = [0.09  0.04   0.17  0.13  0.31   0.05   0.08  0.34  0.15  0.21  0.14  0.24  0.61  0.60  0.22  0.09;
          0.489 0.0134 0.663 0.432 0.611  0.315  0.352 0.395 0.328 0.702 0.199 0.277 0.293 0.819 0.497 0.321 ];

    AP_val = [AP_val mean(AP_val,2)];
    gcf = figure;
    bar_len = length(AP_val);
    x = [1:1:bar_len];
    bar(x,AP_val');
    set(gca,'YLim',[0,1]);
    set(gca,'XLim',[0,bar_len+1]);
    set(gca,'XTick',[1:bar_len]);
    set(gca,'ygrid','on') 
    XLables = [queries;'mAP'];
    set(gca,'XTickLabel',XLables);
    %xlabel('Category');
    ylabel('Average Precision');
    ht = xticklabel_rotate([],90,[],'Fontsize',12,'interpreter','none');
