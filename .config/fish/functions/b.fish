function b
	set tree_level $argv

	if [ -n "$argv" ]
		tree -C -L $argv
	else
		tree -C -L 1 
	end
end 
