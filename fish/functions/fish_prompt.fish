# Fish git prompt
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream auto

function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    
    printf '%s%s%s%s%s  '\
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (fish_git_prompt) 
end
# 
# 
# 
