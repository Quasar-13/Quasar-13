/*
	Class: scope
	A runtime instance of a block. Used internally by the interpreter.
*/
/scope
	//The base object
	var/scope/parent
	//This is a collection of all of the values that can be made in each parent object.
	var/scope/variables_parent
	//This represents a block of NTSL code written in-game.
	var/node/BlockDefinition/block
	var/list/functions
	var/list/variables
	//
	var/status = 0
	//Determines if the code is allowed to run. Similar to how a server needs to set its signal
	var/allowed_status = 0
	var/recursion = 0
	var/node/statement/FunctionDefinition/function
	var/node/expression/FunctionCall/call_node
	var/list/return_val

/scope/New(node/BlockDefinition/B, scope/parent, scope/variables_parent, allowed_status = 0)
	src.block = B
	src.parent = parent
	src.variables_parent = variables_parent || parent
	if(B)
		src.variables = B.initial_variables.Copy()
		src.functions = B.functions.Copy()
	else
		src.variables = list()
		src.functions = list()
	if(parent)
		src.status = parent.status
		recursion = parent.recursion

	if(allowed_status & RESET_STATUS || !parent)
		src.allowed_status = allowed_status & ~RESET_STATUS
	else
		src.allowed_status = allowed_status | parent.allowed_status
	.=..()

/scope/proc/get_scope(name)
	var/scope/S = src
	while(S)
		if(S.variables.Find(name))
			return S
		S = S.variables_parent
//Adds new execution process to the queue for tcomms. This means the code blocks will attempt to fire again.
//Possibly runs after an ALWAYS signal returns from a server
/scope/proc/push(node/BlockDefinition/B, scope/variables_parent = src, allowed_status = 0)
	return new /scope(B, src, variables_parent, allowed_status)

// Good example of when this is called: the return statement  of process_signal - Horologium
/scope/proc/pop(keep_status = (BREAKING | CONTINUING | RETURNING)) // keep_status is which flags you want to copy to the parent.
	parent.status = (parent.status & ~keep_status) | (status & keep_status)
	if(parent.status & RETURNING)
		if(length(return_val == 1))
			parent.return_val = return_val
			parent.recursion = 0
		else
			parent.return_val = return_val
			parent.recursion = 1

	return parent

/scope/proc/get_var(name, n_Interpreter/interp, node/node)
	var/scope/S = get_scope(name)
	if(S)
		return S.variables[name]
	else if(interp)
		interp.RaiseError(new/runtimeError/UndefinedVariable(name), src, node)

/scope/proc/get_function(name)
	var/scope/S = src
	while(S)
		. = S.functions[name]
		if(.)
			return
		S = S.variables_parent

/scope/proc/set_var(name, val, n_Interpreter/interp, node/node)
	var/scope/S = get_scope(name)
	if(S)
		S.variables[name] = val
	else
		init_var(name, val, interp, node)
	return val

/scope/proc/init_var(name, val, n_Interpreter/interp, node/node)
	if(variables.Find(name) && interp)
		interp.RaiseError(new/runtimeError/DuplicateVariableDeclaration(name), src, node)
	variables[name] = val

