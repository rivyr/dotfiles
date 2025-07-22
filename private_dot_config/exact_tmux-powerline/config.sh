# Default configuration file for tmux-powerline.
# Modeline {
#	 vi: foldmarker={,} foldmethod=marker foldlevel=0 tabstop=4 filetype=sh
# }

# General {
# Show which segment fails and its exit code.
export TMUX_POWERLINE_DEBUG_MODE_ENABLED="false"
# Create error log in tmux runtime temp dir.
export TMUX_POWERLINE_ERROR_LOGS_ENABLED="false"
# Only log specific scopes. Space separated list of scopes. Supported scopes: weather.sh lib/text_roll.sh lib/powerline.sh lib/colors.sh config/helpers.sh
export TMUX_POWERLINE_ERROR_LOGS_SCOPES=""
# Use patched font symbols.
export TMUX_POWERLINE_PATCHED_FONT_IN_USE="true"

# The theme to use.
export TMUX_POWERLINE_THEME="default"
# Overlay directory to look for themes. There you can put your own themes outside the repo. Fallback will still be the "themes" directory in the repo.
export TMUX_POWERLINE_DIR_USER_THEMES="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-powerline/themes"
# Overlay directory to look for segments. There you can put your own segments outside the repo. Fallback will still be the "segments" directory in the repo.
export TMUX_POWERLINE_DIR_USER_SEGMENTS="${XDG_CONFIG_HOME:-$HOME/.config}/tmux-powerline/segments"

# The initial visibility of the status bar. Can be {"on", "off", "2"}. 2 will create two status lines: one for the window list and one with status bar segments.
export TMUX_POWERLINE_STATUS_VISIBILITY="on"
# In case of visibility = 2, where to display window status and where left/right status bars.
# 0: window status top, left/right status bottom; 1: window status bottom, left/right status top
export TMUX_POWERLINE_WINDOW_STATUS_LINE=0
# The status bar refresh interval in seconds.
# Note that events that force-refresh the status bar (such as window renaming) will ignore this.
export TMUX_POWERLINE_STATUS_INTERVAL="1"
# The location of the window list. Can be {"absolute-centre, centre, left, right"}.
# Note that "absolute-centre" is only supported on `tmux -V` >= 3.2.
export TMUX_POWERLINE_STATUS_JUSTIFICATION="centre"

# The maximum length of the left status bar.
export TMUX_POWERLINE_STATUS_LEFT_LENGTH="60"
# The maximum length of the right status bar.
export TMUX_POWERLINE_STATUS_RIGHT_LENGTH="90"

# The separator to use between windows on the status bar.
export TMUX_POWERLINE_WINDOW_STATUS_SEPARATOR=""

# Uncomment these if you want to enable tmux bindings for muting (hiding) one of the status bars.
# E.g. this example binding would mute the left status bar when pressing <prefix> followed by Ctrl-[
#export TMUX_POWERLINE_MUTE_LEFT_KEYBINDING="C-["
#export TMUX_POWERLINE_MUTE_RIGHT_KEYBINDING="C-]"
# }

# air.sh {
# The data provider to use. Currently only "openweather" is supported.
export TMUX_POWERLINE_SEG_AIR_DATA_PROVIDER="openweather"
# How often to update the weather in seconds.
export TMUX_POWERLINE_SEG_AIR_UPDATE_PERIOD="600"
# Location of the JSON parser, jq
export TMUX_POWERLINE_SEG_AIR_JSON="jq"
# Your location
# Latitude and Longitude:
TMUX_POWERLINE_SEG_AIR_LAT=""
TMUX_POWERLINE_SEG_AIR_LON=""
# Your Open Weather API Key:
TMUX_POWERLINE_SEG_AIR_OPEN_WEATHER_API_KEY=""
# }

# date.sh {
# date(1) format for the date. If you don't, for some reason, like ISO 8601 format you might want to have "%D" or "%m/%d/%Y".
export TMUX_POWERLINE_SEG_DATE_FORMAT="%F"
# }

# date_week.sh {
# Symbol for calendar week.
# export TMUX_POWERLINE_SEG_DATE_WEEK_SYMBOL="󰨳"
# export TMUX_POWERLINE_SEG_DATE_WEEK_SYMBOL_COLOUR="255"
# }

# gcalcli.sh {
# gcalcli uses 24hr time format by default - if you want to see 12hr time format, set TMUX_POWERLINE_SEG_GCALCLI_MILITARY_TIME_DEFAULT to 0
export TMUX_POWERLINE_SEG_GCALCLI_24HR_TIME_FORMAT="1"
# }

# github_notifications.sh {
# Github token (https://github.com/settings/tokens) with at least "notifications" scope
export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_TOKEN=""
# Include available notification reasons (https://docs.github.com/en/rest/activity/notifications?apiVersion=2022-11-28#about-notification-reasons),
# in the format "REASON:SEPARATOR"
# export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_REASONS="approval_requested:-󰴄 |assign:-󰎔 |author:-󰔗 |comment:- |ci_activity:-󰙨 |invitation:- |manual:-󱥃 |mention:- |review_requested:- |security_alert:-󰒃 |state_change:-󱇯 |subscribed:- |team_mention:- "
# Or if you don't like so many symbols, try the abbreviation variant
# export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_REASONS="approval_requested:areq|assign:as|author:au|comment:co|ci_activity:ci|invitation:in|manual:ma|mention:me|review_requested:rreq|security_alert:sec|state_change:st|subscribed:sub|team_mention:team"
# Use symbol mode (ignored if you set TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_REASONS yourself)
# export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_SYMBOL_MODE="yes"
# Summarize all notifications
# export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_SUMMARIZE="no"
# Hide if no notifications
# export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_HIDE_NO_NOTIFICATIONS="yes"
# Only show new notifications since date (default: today) (takes up to UPDATE_INTERVAL time to take effect)
# export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_SINCE="$(date +%Y-%m-%dT00:00:00Z)"
# Enable show only notifications since date (takes up to UPDATE_INTERVAL time to take effect)
# export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_SINCE_ENABLE="no"
# Maximum notifications to retreive per page (upstream github default per_page, 50)
# export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_PER_PAGE="50"
# Maximum pages to retreive
# export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_MAX_PAGES="10"
# Update interval to pull latest state from github api
# export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_UPDATE_INTERVAL="60"
# Enable Test Mode (to test how the segment will look like when you have notifications for all types/reasons)
# export TMUX_POWERLINE_SEG_GITHUB_NOTIFICATIONS_TEST_MODE="no"
# }

# hostname.sh {
# Use short, long or custom format for the hostname. Can be {"short", "long", "custom"}.
export TMUX_POWERLINE_SEG_HOSTNAME_FORMAT="short"
# Custom name to be used when format is "custom"
export TMUX_POWERLINE_SEG_HOSTNAME_CUSTOM=""
# }

# ifstat.sh {
# Symbol for Download.
# export TMUX_POWERLINE_SEG_IFSTAT_DOWN_SYMBOL="⇊"
# Symbol for Upload.
# export TMUX_POWERLINE_SEG_IFSTAT_UP_SYMBOL="⇈"
# Symbol for Ethernet.
# export TMUX_POWERLINE_SEG_IFSTAT_ETHERNET_SYMBOL="󰈀"
# Symbol for WLAN.
# export TMUX_POWERLINE_SEG_IFSTAT_WLAN_SYMBOL="󱚻"
# Symbol for WWAN.
# export TMUX_POWERLINE_SEG_IFSTAT_WWAN_SYMBOL=""
# Separator for Interfaces.
# export TMUX_POWERLINE_SEG_IFSTAT_INTERFACE_SEPARATOR=" | "
# Space separated list of interface names to be excluded. substring match, regexp can be used.
# Examples:
# export TMUX_POWERLINE_SEG_IFSTAT_INTERFACE_EXCLUDES="tun" # will exclude 'tun0', 'utun0', 'itun', 'tun08127387'
# export TMUX_POWERLINE_SEG_IFSTAT_INTERFACE_EXCLUDES="tun0 tuntun" # will exclude 'tun0', 'utun0', 'tuntun'
# export TMUX_POWERLINE_SEG_IFSTAT_INTERFACE_EXCLUDES="^tun0$ ^tun1$" # excludes exactly 'tun0' and 'tun1'
# Default:
# export TMUX_POWERLINE_SEG_IFSTAT_INTERFACE_EXCLUDES="^u?tun[0-9]+$"
# }

# kubernetes_context.sh {
# Kubernetes config context display mode {"name_namespace", "name", "namespace"}.
# export TMUX_POWERLINE_SEG_KUBERNETES_CONTEXT_DISPLAY_MODE="name_namespace"
# Kubernetes config context symbol.
# export TMUX_POWERLINE_SEG_KUBERNETES_CONTEXT_SYMBOL="󱃾"
# Kubernetes config context symbol colour.
# export TMUX_POWERLINE_SEG_KUBERNETES_CONTEXT_SYMBOL_COLOUR="255"
# Separator for display mode "name_namespace"
# TMUX_POWERLINE_SEG_KUBERNETES_CONTEXT_SEPARATOR="󰿟"
# }

# lan_ip.sh {
# Symbol for LAN IP.
# export TMUX_POWERLINE_SEG_LAN_IP_SYMBOL="ⓛ "
# Symbol colour for LAN IP
# export TMUX_POWERLINE_SEG_LAN_IP_SYMBOL_COLOUR="255"
# }

# mode_indicator.sh {
# Whether the normal & prefix mode section should be enabled. Should be {"true, "false"}.
export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_AND_PREFIX_MODE_ENABLED="true"
# Normal mode text & color overrides. Defaults to "normal" & the segment foreground color set in the theme used.
export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT="normal"
export TMUX_POWERLINE_SEG_MODE_INDICATOR_NORMAL_MODE_TEXT_COLOR=""
# Prefix mode text & color overrides. Defaults to "prefix" & the segment foreground color set in the theme used.
export TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT="prefix"
export TMUX_POWERLINE_SEG_MODE_INDICATOR_PREFIX_MODE_TEXT_COLOR=""
# Whether the mouse mode section should be enabled. Should be {"true, "false"}.
export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_ENABLED="true"
# Mouse mode text & color overrides. Defaults to "mouse" & the segment foreground color set in the theme used.
export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT="mouse"
export TMUX_POWERLINE_SEG_MODE_INDICATOR_MOUSE_MODE_TEXT_COLOR=""
# Whether the copy mode section should be enabled. Should be {"true, "false"}.
export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_ENABLED="true"
# Copy mode text & color overrides. Defaults to "copy" & the segment foreground color set in the theme used.
export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT="copy"
export TMUX_POWERLINE_SEG_MODE_INDICATOR_COPY_MODE_TEXT_COLOR=""
# Suspend mode text & color overrides. Defaults to "SUSPEND" & the segment foreground color set in the theme used.
export TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT="SUSPEND"
export TMUX_POWERLINE_SEG_MODE_INDICATOR_SUSPEND_MODE_TEXT_COLOR=""
# Separator text override. Defaults to " • ".
export TMUX_POWERLINE_SEG_MODE_INDICATOR_SEPARATOR_TEXT=" • "
# }

# pwd.sh {
# Maximum length of output.
export TMUX_POWERLINE_SEG_PWD_MAX_LEN="40"
# }

# time.sh {
# date(1) format for the time. Americans might want to have "%I:%M %p".
export TMUX_POWERLINE_SEG_TIME_FORMAT="%H:%M"
# Change this to display a different timezone than the system default.
# Use TZ Identifier like "America/Los_Angeles"
# export TMUX_POWERLINE_SEG_TIME_TZ=""
# }

# utc_time.sh {
# date(1) format for the UTC time.
export TMUX_POWERLINE_SEG_UTC_TIME_FORMAT="%H:%M %Z"
# }

# vcs_branch.sh {
# Max length of the branch name.
export TMUX_POWERLINE_SEG_VCS_BRANCH_MAX_LEN=""
# Symbol when branch length exceeds max length
# export TMUX_POWERLINE_SEG_VCS_BRANCH_TRUNCATE_SYMBOL="…"
# Default branch symbol
export TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL=""
# Branch symbol for git repositories
# export TMUX_POWERLINE_SEG_VCS_BRANCH_GIT_SYMBOL="${TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL}"
# Branch symbol for hg/mercurial repositories
# export TMUX_POWERLINE_SEG_VCS_BRANCH_HG_SYMBOL="${TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL}"
# Branch symbol for SVN repositories
# export TMUX_POWERLINE_SEG_VCS_BRANCH_SVN_SYMBOL="${TMUX_POWERLINE_SEG_VCS_BRANCH_DEFAULT_SYMBOL}"
# Branch symbol colour for git repositories
export TMUX_POWERLINE_SEG_VCS_BRANCH_GIT_SYMBOL_COLOUR="5"
# Branch symbol colour for hg/mercurial repositories
export TMUX_POWERLINE_SEG_VCS_BRANCH_HG_SYMBOL_COLOUR="45"
# Branch symbol colour for SVN repositories
export TMUX_POWERLINE_SEG_VCS_BRANCH_SVN_SYMBOL_COLOUR="220"
# }

# vcs_compare.sh {
# Symbol if local branch is behind.
# export TMUX_POWERLINE_SEG_VCS_COMPARE_AHEAD_SYMBOL="↑ "
# Symbol colour if local branch is ahead. Defaults to "current segment foreground colour"
# export TMUX_POWERLINE_SEG_VCS_COMPARE_AHEAD_SYMBOL_COLOUR=""
# Symbol if local branch is ahead.
# export TMUX_POWERLINE_SEG_VCS_COMPARE_BEHIND_SYMBOL="↓ "
# Symbol colour if local branch is behind. Defaults to "current segment foreground colour"
# export TMUX_POWERLINE_SEG_VCS_COMPARE_BEHIND_SYMBOL_COLOUR=""
# }

# vcs_modified.sh {
# Symbol for count of modified vcs files.
# export TMUX_POWERLINE_SEG_VCS_MODIFIED_SYMBOL="± "
# }

# vcs_others.sh {
# Symbol for count of untracked vcs files.
# export TMUX_POWERLINE_SEG_VCS_OTHERS_SYMBOL="⋯"
# }

# vcs_rootpath.sh {
# Display mode for vcs_rootpath.
# Example: (name: folder name only; path: full path, w/o expansion; user_path: full path, w/ tilde expansion)
# export TMUX_POWERLINE_SEG_VCS_ROOTPATH_MODE="name"
# }

# vcs_staged.sh {
# Symbol for count of staged vcs files.
# export TMUX_POWERLINE_SEG_VCS_STAGED_SYMBOL="⊕ "
# }

# wan_ip.sh {
# Symbol for WAN IP
# export TMUX_POWERLINE_SEG_WAN_IP_SYMBOL="ⓦ "
# Symbol colour for WAN IP
# export TMUX_POWERLINE_SEG_WAN_IP_SYMBOL_COLOUR="255"
# }
