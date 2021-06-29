local M = {}

M.config = function()
    -- vim.g.dashboard_custom_header = {
    --     '███╗   ██╗██╗   ██╗ ██████╗ ██████╗ ██████╗ ███████╗',
    --     '████╗  ██║██║   ██║██╔════╝██╔═══██╗██╔══██╗██╔════╝',
    --     '██╔██╗ ██║██║   ██║██║     ██║   ██║██║  ██║█████╗',
    --     '██║╚██╗██║╚██╗ ██╔╝██║     ██║   ██║██║  ██║██╔══╝',
    --     '██║ ╚████║ ╚████╔╝ ╚██████╗╚██████╔╝██████╔╝███████╗',
    --     '╚═╝  ╚═══╝  ╚═══╝   ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝'
    -- }
    -- vim.g.dashboard_custom_header = {
    --
    -- '      _..._                                                                           ',
    -- '    .\'     `.   ██      ██    ██ ███    ██  █████  ██████  ██    ██ ██ ███    ███ ',
    -- '   :         :  ██      ██    ██ ████   ██ ██   ██ ██   ██ ██    ██ ██ ████  ████ ',
    -- '   :         :  ██      ██    ██ ██ ██  ██ ███████ ██████  ██    ██ ██ ██ ████ ██ ',
    -- '   `.       .\'  ██      ██    ██ ██  ██ ██ ██   ██ ██   ██  ██  ██  ██ ██  ██  ██ ',
    -- '     `-...-\'    ███████  ██████  ██   ████ ██   ██ ██   ██   ████   ██ ██      ██ ',
    --
    -- }
    vim.g.dashboard_disable_at_vimenter = 0

    vim.g.dashboard_custom_header = O.dashboard.custom_header

    vim.g.dashboard_default_executive = 'telescope'

    vim.g.dashboard_custom_section = {
        a = {
            description = {'  Find File          '},
            command = 'Telescope find_files'
        },
        b = {
            description = {'  Projects           '},
            command = 'Telescope project'
        },
        c = {
            description = {'  Recently Used Files'},
            command = 'Telescope oldfiles'
        },
        d = {
            description = {'  Load Last Session  '},
            command = 'SessionLoad'
        },
        e = {
            description = {'  Find Word          '},
            command = 'Telescope live_grep'
        },
        f = {
            description = {'  Settings           '},
            command = ':e ' .. CONFIG_PATH .. '/lv-config.lua'
        }
        -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
    }

    -- file_browser = {description = {' File Browser'}, command = 'Telescope find_files'},

    -- vim.g.dashboard_custom_shortcut = {
    --     a = 'f',
    --     find_word = 'SPC f a',
    --     last_session = 'SPC s l',
    --     new_file = 'SPC c n',
    --     book_marks = 'SPC f b'
    -- }
    -- find_history = 'SPC f h',

    -- vim.g.dashboard_session_directory = CACHE_PATH..'/session'
    vim.g.dashboard_custom_footer = O.dashboard.footer
end

return M
