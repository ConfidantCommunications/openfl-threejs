::SET_JSIMPORTS::
var $lime_init = (function ($hx_exports, $global) { "use strict"; var $hx_script = (function (exports, global) { ::SOURCE_FILE::
});::if false::
/*
    Don't insert or remove any line breaks in the code above this line!

    ::SOURCE_FILE:: must start on the first line.

    Breakpoints in debug builds won't work if this file's line numbers don't
    match the .js.map file's expected line numbers exactly.

    Additionally, the }); after ::SOURCE_FILE:: must appear on the next line
    to avoid it getting ignored in a // comment at the end of ::SOURCE_FILE::.
*/
::end::
    if (typeof self !== "undefined" && self.constructor.name.includes("Worker")) {
        // No need for exports in a worker context, just initialize statics.
        $hx_script({}, $global);
    } else {
        $hx_exports.lime = $hx_exports.lime || {};
        $hx_exports.lime.$scripts = $hx_exports.lime.$scripts || {};
        $hx_exports.lime.$scripts["::APP_FILE::"] = $hx_script;
        
        // Store original embed function if it exists
        var originalEmbed = $hx_exports.lime.embed;
        
        $hx_exports.lime.embed = function (projectName) {
            // Create isolated context for each embed call
            var isolatedGlobal = {};
            var isolatedExports = {};
            
            // Copy necessary global properties to isolated context
            for (var key in $global) {
                if (key !== 'lime' && typeof $global[key] !== 'function') {
                    try {
                        isolatedGlobal[key] = $global[key];
                    } catch (e) {
                        // Skip properties that can't be copied
                    }
                }
            }
            
            // Add essential global functions/objects that apps might need
            isolatedGlobal.console = $global.console;
            isolatedGlobal.setTimeout = $global.setTimeout;
            isolatedGlobal.setInterval = $global.setInterval;
            isolatedGlobal.clearTimeout = $global.clearTimeout;
            isolatedGlobal.clearInterval = $global.clearInterval;
            isolatedGlobal.requestAnimationFrame = $global.requestAnimationFrame;
            isolatedGlobal.cancelAnimationFrame = $global.cancelAnimationFrame;
            isolatedGlobal.document = $global.document;
            isolatedGlobal.window = $global.window;
            
            var script = $hx_exports.lime.$scripts[projectName];
            if (!script) throw Error("Cannot find project name \"" + projectName + "\"");
            
            // Execute script in isolated context
            script(isolatedExports, isolatedGlobal);
            
            // Don't pollute the main exports object
            // Instead return the isolated exports
            var lime = isolatedExports.lime;
            if (lime && lime.embed && lime.embed !== $hx_exports.lime.embed) {
                lime.embed.apply(lime, arguments);
            }
            
            return isolatedExports;
        };
    }
	::if embeddedLibraries::::foreach embeddedLibraries::
	::__current__::::end::::end::
	
    if (typeof define === "function" && define.amd) {
        define([], function () { return $hx_exports.lime; });
        define.__amd = define.amd;
        define.amd = null;
    }
})

$lime_init(typeof exports !== "undefined" ? exports : typeof define === "function" && define.amd ? {} : typeof window !== "undefined" ? window : typeof self !== "undefined" ? self : this,
typeof window !== "undefined" ? window : typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : this);

::if embeddedLibraries::::foreach embeddedLibraries::
::__current__::::end::::end::

if (typeof define === "function" && define.__amd) {
	define.amd = define.__amd;
	delete define.__amd;
}
