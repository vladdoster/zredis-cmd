# -*- Mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# vim:ft=zsh:sw=4:sts=4:et
#
# No plugin manager is needed to use this file. All that is needed is adding:
#   source {where-zredis-cmd-is}/zredis-cmd.plugin.zsh
#
# to ~/.zshrc.

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
ZREDIS_CMD_REPO_DIR="${0:h}"
ZREDIS_CMD_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/zredis-cmd"

if [[ ( ${+LOADED_PLUGINS} = 0 || ${LOADED_PLUGINS[-1]} != */zredis ) && -z "${fpath[(r)${0:h}]}" ]]; then
    fpath+=( "$ZREDIS_CMD_REPO_DIR" )
fi


