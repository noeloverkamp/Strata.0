// string[] tokenize(string toTokenize, char splitter)

var ret = 0;
ret[0] = 0;

var from = 1;
var len = string_length(argument0);

for(var i = 1; i <= len; i += 1) {
    if(string(argument1) == string(string_char_at(argument0, i))) {
        if(i > from) {
            ret[0] += 1;
            ret[ret[0]] = string_copy(argument0, from, i - from);
        }
        from = i + 1;
    }
    else if(i == len) {
        ret[0] += 1;
        ret[ret[0]] = string_copy(argument0, from, i - from + 1);
    }
}

return ret;
