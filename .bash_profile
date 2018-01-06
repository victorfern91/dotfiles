# Load the shell dotfiles
for file in ~/.{bash_functions,bash_git,bash_alias}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file" && echo "$file";
done;
