# -*- Mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# vim:ft=zsh:sw=4:sts=4:et
#
# No plugin manager is needed to use this file. All that is needed is adding:
#   source {where-zredis-cmd-is}/zredis-cmd.plugin.zsh
#
# to ~/.zshrc.

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
typeset -g ZREDIS_CMD_REPO_DIR="${0:h}"
typeset -g ZREDIS_CMD_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/zredis-cmd"
# The variable/data household, an operational-"database" hash
typeset -gA ZREDIS_CMD

if [[ ( ${+LOADED_PLUGINS} = 0 || ${LOADED_PLUGINS[-1]} != */zredis ) && -z "${fpath[(r)${0:h}]}" ]]; then
    fpath+=( "$ZREDIS_CMD_REPO_DIR" )
fi

autoload @atom-untie-if-tied @atom-read-all @atom-one-element-setup @atom-setup-facade \
            atom-oe-setup atom-oe-get atom-oe-push \
            @atom-multi-element-setup \
            atom-me-setup atom-me-get atom-me-push

