%% 辅助函数：更新结构体字段
function out = update_struct(defaults, updates)
    out = defaults;
    fields = fieldnames(updates);
    for i = 1:length(fields)
        out.(fields{i}) = updates.(fields{i});
    end
end