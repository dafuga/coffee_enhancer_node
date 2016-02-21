# Method that checks if a certain variable is undefined or null
window.non_existent = (variable) ->
	variable == undefined || variable == null

# Method that checks if a certain variable is defined and not null
window.exists = (variable) -> 
	not non_existent(variable)

# Method that checks if a certain variable is defined
window.defined = (variable) ->
	variable != undefined

# Method that checks if a certain variable is undefined
window.not_defined = (variable) ->
	variable == undefined

# Method that checks if a certain variable is loaded (used in ReactJs mostly)
window.loaded = (variable) -> 
	defined(variable)
