# Load the shell dotfiles
for file in ~/.{bash_alias,bash_functions,bash_git}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
