# Load the shell dotfiles
for file in ~/.{}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

