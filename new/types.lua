local BaseType = function(s)
	return {
		label = "BaseType",
		xargs = {  },
		on_stack = s..';',
	}
end

local base_types = {
	--['void'] =   function(i) return '(void)(L, ' .. tostring(i) .. ')' end,
	--['void*'] =   function(i) return 'lua_pushlightuserdata(L, ' .. tostring(i) .. ')' end,
	--['void**'] = function(i) return 'lua_pushlightuserdata(L, ' .. tostring(i) .. ')' end,
	--['void const*'] =   function(i) return 'lua_pushlightuserdata(L, ' .. tostring(i) .. ')' end,
	--['void const**'] = function(i) return 'lua_pushlightuserdata(L, ' .. tostring(i) .. ')' end,

	['char'] = BaseType'string',
	['char*'] = BaseType'string',
	--['char**'] = function(i) return 'lqtL_pusharguments(L, ' .. tostring(i) .. ')' end,
	['char const*'] = BaseType'string',
	--['char const**'] = function(i) return 'lqtL_pusharguments(L, ' .. tostring(i) .. ')' end,

	['int'] =                    BaseType'integer',
	['unsigned int'] =           BaseType'integer',

	['short'] =                  BaseType'integer',
	['short int'] =              BaseType'integer',
	['unsigned short'] =         BaseType'integer',
	['unsigned short int'] =     BaseType'integer',
	['short unsigned int'] =     BaseType'integer',

	['long'] =                   BaseType'integer',
	['unsigned long'] =          BaseType'integer',
	['long int'] =               BaseType'integer',
	['unsigned long int'] =      BaseType'integer',
	['long unsigned int'] =      BaseType'integer',

	['long long'] =              BaseType'integer',
	['unsigned long long'] =     BaseType'integer',
	['long long int'] =          BaseType'integer',
	['unsigned long long int'] = BaseType'integer',

	['float'] =  BaseType'number',
	['double'] = BaseType'number',

	['bool'] = BaseType'bool',
}

return base_types