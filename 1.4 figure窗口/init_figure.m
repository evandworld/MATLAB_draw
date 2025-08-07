function f = init_figure(fig_id, fig_name, varargin)
% INIT_FIGURE 创建并初始化标准图窗
%   f = INIT_FIGURE(fig_id, fig_name) 创建指定编号的图窗，命名为 fig_name
%   可选参数：
%     'Position'   - [x y width height]，设置图窗位置和大小
%     'Maximized'  - true/false，是否最大化窗口
%     'Toolbar'    - 'none' 或 'auto'
%     'MenuBar'    - 'none' 或 'figure'
%     'Background' - 背景颜色，如 'white' 或 [1 1 1]

% 默认参数
opts = struct( ...
    'Position', [], ...
    'Maximized', false, ...
    'Toolbar', 'none', ...
    'MenuBar', 'none', ...
    'Background', [1 1 1]);   % 白色背景

% 解析可选输入参数
if ~isempty(varargin)
    userOpts = struct(varargin{:});
    opts = update_struct(opts, userOpts);
end

% 创建图窗
f = figure(fig_id);
clf(f);     % 清空图窗内容
set(f, ...
    'Name', fig_name, ...
    'NumberTitle', 'off', ...
    'MenuBar', opts.MenuBar, ...
    'ToolBar', opts.Toolbar, ...
    'Color', opts.Background, ...
    'Resize', 'on', ...
    'Tag', fig_name);

% 设置窗口位置或最大化
if opts.Maximized
    f.WindowState = 'maximized';
elseif ~isempty(opts.Position)
    f.Position = opts.Position;
end

end


