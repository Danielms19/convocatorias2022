!function(e,t){"object"==typeof exports&&"undefined"!=typeof module?module.exports=t():"function"==typeof define&&define.amd?define(t):e.moment=t()}(this,function(){"use strict";var e,i;function f(){return e.apply(null,arguments)}function s(e){return e instanceof Array||"[object Array]"===Object.prototype.toString.call(e)}function l(e){return null!=e&&"[object Object]"===Object.prototype.toString.call(e)}function p(e,t){return Object.prototype.hasOwnProperty.call(e,t)}function u(e){if(Object.getOwnPropertyNames)return 0===Object.getOwnPropertyNames(e).length;var t;for(t in e)if(p(e,t))return;return 1}function o(e){return void 0===e}function c(e){return"number"==typeof e||"[object Number]"===Object.prototype.toString.call(e)}function a(e){return e instanceof Date||"[object Date]"===Object.prototype.toString.call(e)}function d(e,t){for(var n=[],r=0;r<e.length;++r)n.push(t(e[r],r));return n}function h(e,t){for(var n in t)p(t,n)&&(e[n]=t[n]);return p(t,"toString")&&(e.toString=t.toString),p(t,"valueOf")&&(e.valueOf=t.valueOf),e}function g(e,t,n,r){return Mt(e,t,n,r,!0).utc()}function v(e){return null==e._pf&&(e._pf={empty:!1,unusedTokens:[],unusedInput:[],overflow:-2,charsLeftOver:0,nullInput:!1,invalidEra:null,invalidMonth:null,invalidFormat:!1,userInvalidated:!1,iso:!1,parsedDateParts:[],era:null,meridiem:null,rfc2822:!1,weekdayMismatch:!1}),e._pf}function m(e){if(null==e._isValid){var t=v(e),n=i.call(t.parsedDateParts,function(e){return null!=e}),r=!isNaN(e._d.getTime())&&t.overflow<0&&!t.empty&&!t.invalidEra&&!t.invalidMonth&&!t.invalidWeekday&&!t.weekdayMismatch&&!t.nullInput&&!t.invalidFormat&&!t.userInvalidated&&(!t.meridiem||t.meridiem&&n);if(e._strict&&(r=r&&0===t.charsLeftOver&&0===t.unusedTokens.length&&void 0===t.bigHour),null!=Object.isFrozen&&Object.isFrozen(e))return r;e._isValid=r}return e._isValid}function y(e){var t=g(NaN);return null!=e?h(v(t),e):v(t).userInvalidated=!0,t}i=Array.prototype.some?Array.prototype.some:function(e){for(var t=Object(this),n=t.length>>>0,r=0;r<n;r++)if(r in t&&e.call(this,t[r],r,t))return!0;return!1};var S=f.momentProperties=[],t=!1;function E(e,t){var n,r,i;if(o(t._isAMomentObject)||(e._isAMomentObject=t._isAMomentObject),o(t._i)||(e._i=t._i),o(t._f)||(e._f=t._f),o(t._l)||(e._l=t._l),o(t._strict)||(e._strict=t._strict),o(t._tzm)||(e._tzm=t._tzm),o(t._isUTC)||(e._isUTC=t._isUTC),o(t._offset)||(e._offset=t._offset),o(t._pf)||(e._pf=v(t)),o(t._locale)||(e._locale=t._locale),0<S.length)for(n=0;n<S.length;n++)o(i=t[r=S[n]])||(e[r]=i);return e}function b(e){E(this,e),this._d=new Date(null!=e._d?e._d.getTime():NaN),this.isValid()||(this._d=new Date(NaN)),!1===t&&(t=!0,f.updateOffset(this),t=!1)}function w(e){return e instanceof b||null!=e&&null!=e._isAMomentObject}function D(e){!1===f.suppressDeprecationWarnings&&"undefined"!=typeof console&&console.warn&&console.warn("Deprecation warning: "+e)}function n(i,o){var a=!0;return h(function(){if(null!=f.deprecationHandler&&f.deprecationHandler(null,i),a){for(var e,t,n=[],r=0;r<arguments.length;r++){if(e="","object"==typeof arguments[r]){for(t in e+="\n["+r+"] ",arguments[0])p(arguments[0],t)&&(e+=t+": "+arguments[0][t]+", ");e=e.slice(0,-2)}else e=arguments[r];n.push(e)}D(i+"\nArguments: "+Array.prototype.slice.call(n).join("")+"\n"+(new Error).stack),a=!1}return o.apply(this,arguments)},o)}var r,T={};function _(e,t){null!=f.deprecationHandler&&f.deprecationHandler(e,t),T[e]||(D(t),T[e]=!0)}function C(e){return"undefined"!=typeof Function&&e instanceof Function||"[object Function]"===Object.prototype.toString.call(e)}function x(e,t){var n,r=h({},e);for(n in t)p(t,n)&&(l(e[n])&&l(t[n])?(r[n]={},h(r[n],e[n]),h(r[n],t[n])):null!=t[n]?r[n]=t[n]:delete r[n]);for(n in e)p(e,n)&&!p(t,n)&&l(e[n])&&(r[n]=h({},r[n]));return r}function M(e){null!=e&&this.set(e)}f.suppressDeprecationWarnings=!1,f.deprecationHandler=null,r=Object.keys?Object.keys:function(e){var t,n=[];for(t in e)p(e,t)&&n.push(t);return n};function k(e,t,n){var r=""+Math.abs(e),i=t-r.length;return(0<=e?n?"+":"":"-")+Math.pow(10,Math.max(0,i)).toString().substr(1)+r}var R=/(\[[^\[]*\])|(\\)?([Hh]mm(ss)?|Mo|MM?M?M?|Do|DDDo|DD?D?D?|ddd?d?|do?|w[o|w]?|W[o|W]?|Qo?|N{1,5}|YYYYYY|YYYYY|YYYY|YY|y{2,4}|yo?|gg(ggg?)?|GG(GGG?)?|e|E|a|A|hh?|HH?|kk?|mm?|ss?|S{1,9}|x|X|zz?|ZZ?|.)/g,I=/(\[[^\[]*\])|(\\)?(LTS|LT|LL?L?L?|l{1,4})/g,N={},O={};function P(e,t,n,r){var i="string"==typeof r?function(){return this[r]()}:r;e&&(O[e]=i),t&&(O[t[0]]=function(){return k(i.apply(this,arguments),t[1],t[2])}),n&&(O[n]=function(){return this.localeData().ordinal(i.apply(this,arguments),e)})}function H(e,t){return e.isValid()?(t=L(t,e.localeData()),N[t]=N[t]||function(r){for(var e,i=r.match(R),t=0,o=i.length;t<o;t++)O[i[t]]?i[t]=O[i[t]]:i[t]=(e=i[t]).match(/\[[\s\S]/)?e.replace(/^\[|\]$/g,""):e.replace(/\\/g,"");return function(e){for(var t="",n=0;n<o;n++)t+=C(i[n])?i[n].call(e,r):i[n];return t}}(t),N[t](e)):e.localeData().invalidDate()}function L(e,t){var n=5;function r(e){return t.longDateFormat(e)||e}for(I.lastIndex=0;0<=n&&I.test(e);)e=e.replace(I,r),I.lastIndex=0,--n;return e}var A={};function Y(e,t){var n=e.toLowerCase();A[n]=A[n+"s"]=A[t]=e}function j(e){return"string"==typeof e?A[e]||A[e.toLowerCase()]:void 0}function U(e){var t,n,r={};for(n in e)p(e,n)&&(t=j(n))&&(r[t]=e[n]);return r}var W={};function V(e,t){W[e]=t}function F(e){return e%4==0&&e%100!=0||e%400==0}function z(e){return e<0?Math.ceil(e)||0:Math.floor(e)}function B(e){var t=+e,n=0;return 0!=t&&isFinite(t)&&(n=z(t)),n}function q(t,n){return function(e){return null!=e?(Z(this,t,e),f.updateOffset(this,n),this):G(this,t)}}function G(e,t){return e.isValid()?e._d["get"+(e._isUTC?"UTC":"")+t]():NaN}function Z(e,t,n){e.isValid()&&!isNaN(n)&&("FullYear"===t&&F(e.year())&&1===e.month()&&29===e.date()?(n=B(n),e._d["set"+(e._isUTC?"UTC":"")+t](n,e.month(),Me(n,e.month()))):e._d["set"+(e._isUTC?"UTC":"")+t](n))}var X,$=/\d/,J=/\d\d/,Q=/\d{3}/,K=/\d{4}/,ee=/[+-]?\d{6}/,te=/\d\d?/,ne=/\d\d\d\d?/,re=/\d\d\d\d\d\d?/,ie=/\d{1,3}/,oe=/\d{1,4}/,ae=/[+-]?\d{1,6}/,se=/\d+/,le=/[+-]?\d+/,ue=/Z|[+-]\d\d:?\d\d/gi,ce=/Z|[+-]\d\d(?::?\d\d)?/gi,de=/[0-9]{0,256}['a-z\u00A0-\u05FF\u0700-\uD7FF\uF900-\uFDCF\uFDF0-\uFF07\uFF10-\uFFEF]{1,256}|[\u0600-\u06FF\/]{1,256}(\s*?[\u0600-\u06FF]{1,256}){1,2}/i;function he(e,n,r){X[e]=C(n)?n:function(e,t){return e&&r?r:n}}function fe(e,t){return p(X,e)?X[e](t._strict,t._locale):new RegExp(pe(e.replace("\\","").replace(/\\(\[)|\\(\])|\[([^\]\[]*)\]|\\(.)/g,function(e,t,n,r,i){return t||n||r||i})))}function pe(e){return e.replace(/[-\/\\^$*+?.()|[\]{}]/g,"\\$&")}X={};var ge={};function ve(e,n){var t,r=n;for("string"==typeof e&&(e=[e]),c(n)&&(r=function(e,t){t[n]=B(e)}),t=0;t<e.length;t++)ge[e[t]]=r}function me(e,i){ve(e,function(e,t,n,r){n._w=n._w||{},i(e,n._w,n,r)})}var ye,Se=0,Ee=1,be=2,we=3,De=4,Te=5,_e=6,Ce=7,xe=8;function Me(e,t){if(isNaN(e)||isNaN(t))return NaN;var n,r=(t%(n=12)+n)%n;return e+=(t-r)/12,1==r?F(e)?29:28:31-r%7%2}ye=Array.prototype.indexOf?Array.prototype.indexOf:function(e){for(var t=0;t<this.length;++t)if(this[t]===e)return t;return-1},P("M",["MM",2],"Mo",function(){return this.month()+1}),P("MMM",0,0,function(e){return this.localeData().monthsShort(this,e)}),P("MMMM",0,0,function(e){return this.localeData().months(this,e)}),Y("month","M"),V("month",8),he("M",te),he("MM",te,J),he("MMM",function(e,t){return t.monthsShortRegex(e)}),he("MMMM",function(e,t){return t.monthsRegex(e)}),ve(["M","MM"],function(e,t){t[Ee]=B(e)-1}),ve(["MMM","MMMM"],function(e,t,n,r){var i=n._locale.monthsParse(e,r,n._strict);null!=i?t[Ee]=i:v(n).invalidMonth=e});var ke="January_February_March_April_May_June_July_August_September_October_November_December".split("_"),Re="Jan_Feb_Mar_Apr_May_Jun_Jul_Aug_Sep_Oct_Nov_Dec".split("_"),Ie=/D[oD]?(\[[^\[\]]*\]|\s)+MMMM?/,Ne=de,Oe=de;function Pe(e,t){var n;if(!e.isValid())return e;if("string"==typeof t)if(/^\d+$/.test(t))t=B(t);else if(!c(t=e.localeData().monthsParse(t)))return e;return n=Math.min(e.date(),Me(e.year(),t)),e._d["set"+(e._isUTC?"UTC":"")+"Month"](t,n),e}function He(e){return null!=e?(Pe(this,e),f.updateOffset(this,!0),this):G(this,"Month")}function Le(){function e(e,t){return t.length-e.length}for(var t,n=[],r=[],i=[],o=0;o<12;o++)t=g([2e3,o]),n.push(this.monthsShort(t,"")),r.push(this.months(t,"")),i.push(this.months(t,"")),i.push(this.monthsShort(t,""));for(n.sort(e),r.sort(e),i.sort(e),o=0;o<12;o++)n[o]=pe(n[o]),r[o]=pe(r[o]);for(o=0;o<24;o++)i[o]=pe(i[o]);this._monthsRegex=new RegExp("^("+i.join("|")+")","i"),this._monthsShortRegex=this._monthsRegex,this._monthsStrictRegex=new RegExp("^("+r.join("|")+")","i"),this._monthsShortStrictRegex=new RegExp("^("+n.join("|")+")","i")}function Ae(e){return F(e)?366:365}P("Y",0,0,function(){var e=this.year();return e<=9999?k(e,4):"+"+e}),P(0,["YY",2],0,function(){return this.year()%100}),P(0,["YYYY",4],0,"year"),P(0,["YYYYY",5],0,"year"),P(0,["YYYYYY",6,!0],0,"year"),Y("year","y"),V("year",1),he("Y",le),he("YY",te,J),he("YYYY",oe,K),he("YYYYY",ae,ee),he("YYYYYY",ae,ee),ve(["YYYYY","YYYYYY"],Se),ve("YYYY",function(e,t){t[Se]=2===e.length?f.parseTwoDigitYear(e):B(e)}),ve("YY",function(e,t){t[Se]=f.parseTwoDigitYear(e)}),ve("Y",function(e,t){t[Se]=parseInt(e,10)}),f.parseTwoDigitYear=function(e){return B(e)+(68<B(e)?1900:2e3)};var Ye=q("FullYear",!0);function je(e){var t,n;return e<100&&0<=e?((n=Array.prototype.slice.call(arguments))[0]=e+400,t=new Date(Date.UTC.apply(null,n)),isFinite(t.getUTCFullYear())&&t.setUTCFullYear(e)):t=new Date(Date.UTC.apply(null,arguments)),t}function Ue(e,t,n){var r=7+t-n;return r-(7+je(e,0,r).getUTCDay()-t)%7-1}function We(e,t,n,r,i){var o,a=1+7*(t-1)+(7+n-r)%7+Ue(e,r,i),s=a<=0?Ae(o=e-1)+a:a>Ae(e)?(o=e+1,a-Ae(e)):(o=e,a);return{year:o,dayOfYear:s}}function Ve(e,t,n){var r,i,o=Ue(e.year(),t,n),a=Math.floor((e.dayOfYear()-o-1)/7)+1;return a<1?r=a+Fe(i=e.year()-1,t,n):a>Fe(e.year(),t,n)?(r=a-Fe(e.year(),t,n),i=e.year()+1):(i=e.year(),r=a),{week:r,year:i}}function Fe(e,t,n){var r=Ue(e,t,n),i=Ue(e+1,t,n);return(Ae(e)-r+i)/7}P("w",["ww",2],"wo","week"),P("W",["WW",2],"Wo","isoWeek"),Y("week","w"),Y("isoWeek","W"),V("week",5),V("isoWeek",5),he("w",te),he("ww",te,J),he("W",te),he("WW",te,J),me(["w","ww","W","WW"],function(e,t,n,r){t[r.substr(0,1)]=B(e)});function ze(e,t){return e.slice(t,7).concat(e.slice(0,t))}P("d",0,"do","day"),P("dd",0,0,function(e){return this.localeData().weekdaysMin(this,e)}),P("ddd",0,0,function(e){return this.localeData().weekdaysShort(this,e)}),P("dddd",0,0,function(e){return this.localeData().weekdays(this,e)}),P("e",0,0,"weekday"),P("E",0,0,"isoWeekday"),Y("day","d"),Y("weekday","e"),Y("isoWeekday","E"),V("day",11),V("weekday",11),V("isoWeekday",11),he("d",te),he("e",te),he("E",te),he("dd",function(e,t){return t.weekdaysMinRegex(e)}),he("ddd",function(e,t){return t.weekdaysShortRegex(e)}),he("dddd",function(e,t){return t.weekdaysRegex(e)}),me(["dd","ddd","dddd"],function(e,t,n,r){var i=n._locale.weekdaysParse(e,r,n._strict);null!=i?t.d=i:v(n).invalidWeekday=e}),me(["d","e","E"],function(e,t,n,r){t[r]=B(e)});var Be="Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"),qe="Sun_Mon_Tue_Wed_Thu_Fri_Sat".split("_"),Ge="Su_Mo_Tu_We_Th_Fr_Sa".split("_"),Ze=de,Xe=de,$e=de;function Je(){function e(e,t){return t.length-e.length}for(var t,n,r,i,o=[],a=[],s=[],l=[],u=0;u<7;u++)t=g([2e3,1]).day(u),n=pe(this.weekdaysMin(t,"")),r=pe(this.weekdaysShort(t,"")),i=pe(this.weekdays(t,"")),o.push(n),a.push(r),s.push(i),l.push(n),l.push(r),l.push(i);o.sort(e),a.sort(e),s.sort(e),l.sort(e),this._weekdaysRegex=new RegExp("^("+l.join("|")+")","i"),this._weekdaysShortRegex=this._weekdaysRegex,this._weekdaysMinRegex=this._weekdaysRegex,this._weekdaysStrictRegex=new RegExp("^("+s.join("|")+")","i"),this._weekdaysShortStrictRegex=new RegExp("^("+a.join("|")+")","i"),this._weekdaysMinStrictRegex=new RegExp("^("+o.join("|")+")","i")}function Qe(){return this.hours()%12||12}function Ke(e,t){P(e,0,0,function(){return this.localeData().meridiem(this.hours(),this.minutes(),t)})}function et(e,t){return t._meridiemParse}P("H",["HH",2],0,"hour"),P("h",["hh",2],0,Qe),P("k",["kk",2],0,function(){return this.hours()||24}),P("hmm",0,0,function(){return""+Qe.apply(this)+k(this.minutes(),2)}),P("hmmss",0,0,function(){return""+Qe.apply(this)+k(this.minutes(),2)+k(this.seconds(),2)}),P("Hmm",0,0,function(){return""+this.hours()+k(this.minutes(),2)}),P("Hmmss",0,0,function(){return""+this.hours()+k(this.minutes(),2)+k(this.seconds(),2)}),Ke("a",!0),Ke("A",!1),Y("hour","h"),V("hour",13),he("a",et),he("A",et),he("H",te),he("h",te),he("k",te),he("HH",te,J),he("hh",te,J),he("kk",te,J),he("hmm",ne),he("hmmss",re),he("Hmm",ne),he("Hmmss",re),ve(["H","HH"],we),ve(["k","kk"],function(e,t,n){var r=B(e);t[we]=24===r?0:r}),ve(["a","A"],function(e,t,n){n._isPm=n._locale.isPM(e),n._meridiem=e}),ve(["h","hh"],function(e,t,n){t[we]=B(e),v(n).bigHour=!0}),ve("hmm",function(e,t,n){var r=e.length-2;t[we]=B(e.substr(0,r)),t[De]=B(e.substr(r)),v(n).bigHour=!0}),ve("hmmss",function(e,t,n){var r=e.length-4,i=e.length-2;t[we]=B(e.substr(0,r)),t[De]=B(e.substr(r,2)),t[Te]=B(e.substr(i)),v(n).bigHour=!0}),ve("Hmm",function(e,t,n){var r=e.length-2;t[we]=B(e.substr(0,r)),t[De]=B(e.substr(r))}),ve("Hmmss",function(e,t,n){var r=e.length-4,i=e.length-2;t[we]=B(e.substr(0,r)),t[De]=B(e.substr(r,2)),t[Te]=B(e.substr(i))});var tt=q("Hours",!0);var nt,rt={calendar:{sameDay:"[Today at] LT",nextDay:"[Tomorrow at] LT",nextWeek:"dddd [at] LT",lastDay:"[Yesterday at] LT",lastWeek:"[Last] dddd [at] LT",sameElse:"L"},longDateFormat:{LTS:"h:mm:ss A",LT:"h:mm A",L:"MM/DD/YYYY",LL:"MMMM D, YYYY",LLL:"MMMM D, YYYY h:mm A",LLLL:"dddd, MMMM D, YYYY h:mm A"},invalidDate:"Invalid date",ordinal:"%d",dayOfMonthOrdinalParse:/\d{1,2}/,relativeTime:{future:"in %s",past:"%s ago",s:"a few seconds",ss:"%d seconds",m:"a minute",mm:"%d minutes",h:"an hour",hh:"%d hours",d:"a day",dd:"%d days",w:"a week",ww:"%d weeks",M:"a month",MM:"%d months",y:"a year",yy:"%d years"},months:ke,monthsShort:Re,week:{dow:0,doy:6},weekdays:Be,weekdaysMin:Ge,weekdaysShort:qe,meridiemParse:/[ap]\.?m?\.?/i},it={},ot={};function at(e){return e?e.toLowerCase().replace("_","-"):e}function st(e){for(var t,n,r,i,o=0;o<e.length;){for(t=(i=at(e[o]).split("-")).length,n=(n=at(e[o+1]))?n.split("-"):null;0<t;){if(r=lt(i.slice(0,t).join("-")))return r;if(n&&n.length>=t&&function(e,t){for(var n=Math.min(e.length,t.length),r=0;r<n;r+=1)if(e[r]!==t[r])return r;return n}(i,n)>=t-1)break;t--}o++}return nt}function lt(t){var e=null;if(void 0===it[t]&&"undefined"!=typeof module&&module&&module.exports)try{e=nt._abbr,require("./locale/"+t),ut(e)}catch(e){it[t]=null}return it[t]}function ut(e,t){var n;return e&&((n=o(t)?dt(e):ct(e,t))?nt=n:"undefined"!=typeof console&&console.warn&&console.warn("Locale "+e+" not found. Did you forget to load it?")),nt._abbr}function ct(e,t){if(null===t)return delete it[e],null;var n,r=rt;if(t.abbr=e,null!=it[e])_("defineLocaleOverride","use moment.updateLocale(localeName, config) to change an existing locale. moment.defineLocale(localeName, config) should only be used for creating a new locale See http://momentjs.com/guides/#/warnings/define-locale/ for more info."),r=it[e]._config;else if(null!=t.parentLocale)if(null!=it[t.parentLocale])r=it[t.parentLocale]._config;else{if(null==(n=lt(t.parentLocale)))return ot[t.parentLocale]||(ot[t.parentLocale]=[]),ot[t.parentLocale].push({name:e,config:t}),null;r=n._config}return it[e]=new M(x(r,t)),ot[e]&&ot[e].forEach(function(e){ct(e.name,e.config)}),ut(e),it[e]}function dt(e){var t;if(e&&e._locale&&e._locale._abbr&&(e=e._locale._abbr),!e)return nt;if(!s(e)){if(t=lt(e))return t;e=[e]}return st(e)}function ht(e){var t,n=e._a;return n&&-2===v(e).overflow&&(t=n[Ee]<0||11<n[Ee]?Ee:n[be]<1||n[be]>Me(n[Se],n[Ee])?be:n[we]<0||24<n[we]||24===n[we]&&(0!==n[De]||0!==n[Te]||0!==n[_e])?we:n[De]<0||59<n[De]?De:n[Te]<0||59<n[Te]?Te:n[_e]<0||999<n[_e]?_e:-1,v(e)._overflowDayOfYear&&(t<Se||be<t)&&(t=be),v(e)._overflowWeeks&&-1===t&&(t=Ce),v(e)._overflowWeekday&&-1===t&&(t=xe),v(e).overflow=t),e}var ft=/^\s*((?:[+-]\d{6}|\d{4})-(?:\d\d-\d\d|W\d\d-\d|W\d\d|\d\d\d|\d\d))(?:(T| )(\d\d(?::\d\d(?::\d\d(?:[.,]\d+)?)?)?)([+-]\d\d(?::?\d\d)?|\s*Z)?)?$/,pt=/^\s*((?:[+-]\d{6}|\d{4})(?:\d\d\d\d|W\d\d\d|W\d\d|\d\d\d|\d\d|))(?:(T| )(\d\d(?:\d\d(?:\d\d(?:[.,]\d+)?)?)?)([+-]\d\d(?::?\d\d)?|\s*Z)?)?$/,gt=/Z|[+-]\d\d(?::?\d\d)?/,vt=[["YYYYYY-MM-DD",/[+-]\d{6}-\d\d-\d\d/],["YYYY-MM-DD",/\d{4}-\d\d-\d\d/],["GGGG-[W]WW-E",/\d{4}-W\d\d-\d/],["GGGG-[W]WW",/\d{4}-W\d\d/,!1],["YYYY-DDD",/\d{4}-\d{3}/],["YYYY-MM",/\d{4}-\d\d/,!1],["YYYYYYMMDD",/[+-]\d{10}/],["YYYYMMDD",/\d{8}/],["GGGG[W]WWE",/\d{4}W\d{3}/],["GGGG[W]WW",/\d{4}W\d{2}/,!1],["YYYYDDD",/\d{7}/],["YYYYMM",/\d{6}/,!1],["YYYY",/\d{4}/,!1]],mt=[["HH:mm:ss.SSSS",/\d\d:\d\d:\d\d\.\d+/],["HH:mm:ss,SSSS",/\d\d:\d\d:\d\d,\d+/],["HH:mm:ss",/\d\d:\d\d:\d\d/],["HH:mm",/\d\d:\d\d/],["HHmmss.SSSS",/\d\d\d\d\d\d\.\d+/],["HHmmss,SSSS",/\d\d\d\d\d\d,\d+/],["HHmmss",/\d\d\d\d\d\d/],["HHmm",/\d\d\d\d/],["HH",/\d\d/]],yt=/^\/?Date\((-?\d+)/i,St=/^(?:(Mon|Tue|Wed|Thu|Fri|Sat|Sun),?\s)?(\d{1,2})\s(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s(\d{2,4})\s(\d\d):(\d\d)(?::(\d\d))?\s(?:(UT|GMT|[ECMP][SD]T)|([Zz])|([+-]\d{4}))$/,Et={UT:0,GMT:0,EDT:-240,EST:-300,CDT:-300,CST:-360,MDT:-360,MST:-420,PDT:-420,PST:-480};function bt(e){var t,n,r,i,o,a,s=e._i,l=ft.exec(s)||pt.exec(s);if(l){for(v(e).iso=!0,t=0,n=vt.length;t<n;t++)if(vt[t][1].exec(l[1])){i=vt[t][0],r=!1!==vt[t][2];break}if(null==i)return void(e._isValid=!1);if(l[3]){for(t=0,n=mt.length;t<n;t++)if(mt[t][1].exec(l[3])){o=(l[2]||" ")+mt[t][0];break}if(null==o)return void(e._isValid=!1)}if(!r&&null!=o)return void(e._isValid=!1);if(l[4]){if(!gt.exec(l[4]))return void(e._isValid=!1);a="Z"}e._f=i+(o||"")+(a||""),Ct(e)}else e._isValid=!1}function wt(e,t,n,r,i,o){var a=[function(e){var t=parseInt(e,10);{if(t<=49)return 2e3+t;if(t<=999)return 1900+t}return t}(e),Re.indexOf(t),parseInt(n,10),parseInt(r,10),parseInt(i,10)];return o&&a.push(parseInt(o,10)),a}function Dt(e){var t,n,r,i,o=St.exec(e._i.replace(/\([^)]*\)|[\n\t]/g," ").replace(/(\s\s+)/g," ").replace(/^\s\s*/,"").replace(/\s\s*$/,""));if(o){if(t=wt(o[4],o[3],o[2],o[5],o[6],o[7]),n=o[1],r=t,i=e,n&&qe.indexOf(n)!==new Date(r[0],r[1],r[2]).getDay()&&(v(i).weekdayMismatch=!0,!void(i._isValid=!1)))return;e._a=t,e._tzm=function(e,t,n){if(e)return Et[e];if(t)return 0;var r=parseInt(n,10),i=r%100;return 60*((r-i)/100)+i}(o[8],o[9],o[10]),e._d=je.apply(null,e._a),e._d.setUTCMinutes(e._d.getUTCMinutes()-e._tzm),v(e).rfc2822=!0}else e._isValid=!1}function Tt(e,t,n){return null!=e?e:null!=t?t:n}function _t(e){var t,n,r,i,o,a,s,l=[];if(!e._d){for(a=e,s=new Date(f.now()),r=a._useUTC?[s.getUTCFullYear(),s.getUTCMonth(),s.getUTCDate()]:[s.getFullYear(),s.getMonth(),s.getDate()],e._w&&null==e._a[be]&&null==e._a[Ee]&&function(e){var t,n,r,i,o,a,s,l,u;null!=(t=e._w).GG||null!=t.W||null!=t.E?(o=1,a=4,n=Tt(t.GG,e._a[Se],Ve(kt(),1,4).year),r=Tt(t.W,1),((i=Tt(t.E,1))<1||7<i)&&(l=!0)):(o=e._locale._week.dow,a=e._locale._week.doy,u=Ve(kt(),o,a),n=Tt(t.gg,e._a[Se],u.year),r=Tt(t.w,u.week),null!=t.d?((i=t.d)<0||6<i)&&(l=!0):null!=t.e?(i=t.e+o,(t.e<0||6<t.e)&&(l=!0)):i=o);r<1||r>Fe(n,o,a)?v(e)._overflowWeeks=!0:null!=l?v(e)._overflowWeekday=!0:(s=We(n,r,i,o,a),e._a[Se]=s.year,e._dayOfYear=s.dayOfYear)}(e),null!=e._dayOfYear&&(o=Tt(e._a[Se],r[Se]),(e._dayOfYear>Ae(o)||0===e._dayOfYear)&&(v(e)._overflowDayOfYear=!0),n=je(o,0,e._dayOfYear),e._a[Ee]=n.getUTCMonth(),e._a[be]=n.getUTCDate()),t=0;t<3&&null==e._a[t];++t)e._a[t]=l[t]=r[t];for(;t<7;t++)e._a[t]=l[t]=null==e._a[t]?2===t?1:0:e._a[t];24===e._a[we]&&0===e._a[De]&&0===e._a[Te]&&0===e._a[_e]&&(e._nextDay=!0,e._a[we]=0),e._d=(e._useUTC?je:function(e,t,n,r,i,o,a){var s;return e<100&&0<=e?(s=new Date(e+400,t,n,r,i,o,a),isFinite(s.getFullYear())&&s.setFullYear(e)):s=new Date(e,t,n,r,i,o,a),s}).apply(null,l),i=e._useUTC?e._d.getUTCDay():e._d.getDay(),null!=e._tzm&&e._d.setUTCMinutes(e._d.getUTCMinutes()-e._tzm),e._nextDay&&(e._a[we]=24),e._w&&void 0!==e._w.d&&e._w.d!==i&&(v(e).weekdayMismatch=!0)}}function Ct(e){if(e._f!==f.ISO_8601)if(e._f!==f.RFC_2822){e._a=[],v(e).empty=!0;for(var t,n,r,i,o,a,s,l=""+e._i,u=l.length,c=0,d=L(e._f,e._locale).match(R)||[],h=0;h<d.length;h++)n=d[h],(t=(l.match(fe(n,e))||[])[0])&&(0<(r=l.substr(0,l.indexOf(t))).length&&v(e).unusedInput.push(r),l=l.slice(l.indexOf(t)+t.length),c+=t.length),O[n]?(t?v(e).empty=!1:v(e).unusedTokens.push(n),o=n,s=e,null!=(a=t)&&p(ge,o)&&ge[o](a,s._a,s,o)):e._strict&&!t&&v(e).unusedTokens.push(n);v(e).charsLeftOver=u-c,0<l.length&&v(e).unusedInput.push(l),e._a[we]<=12&&!0===v(e).bigHour&&0<e._a[we]&&(v(e).bigHour=void 0),v(e).parsedDateParts=e._a.slice(0),v(e).meridiem=e._meridiem,e._a[we]=function(e,t,n){var r;if(null==n)return t;return null!=e.meridiemHour?e.meridiemHour(t,n):(null!=e.isPM&&((r=e.isPM(n))&&t<12&&(t+=12),r||12!==t||(t=0)),t)}(e._locale,e._a[we],e._meridiem),null!==(i=v(e).era)&&(e._a[Se]=e._locale.erasConvertYear(i,e._a[Se])),_t(e),ht(e)}else Dt(e);else bt(e)}function xt(e){var t,n,r=e._i,i=e._f;return e._locale=e._locale||dt(e._l),null===r||void 0===i&&""===r?y({nullInput:!0}):("string"==typeof r&&(e._i=r=e._locale.preparse(r)),w(r)?new b(ht(r)):(a(r)?e._d=r:s(i)?function(e){var t,n,r,i,o,a,s=!1;if(0===e._f.length)return v(e).invalidFormat=!0,e._d=new Date(NaN);for(i=0;i<e._f.length;i++)o=0,a=!1,t=E({},e),null!=e._useUTC&&(t._useUTC=e._useUTC),t._f=e._f[i],Ct(t),m(t)&&(a=!0),o+=v(t).charsLeftOver,o+=10*v(t).unusedTokens.length,v(t).score=o,s?o<r&&(r=o,n=t):(null==r||o<r||a)&&(r=o,n=t,a&&(s=!0));h(e,n||t)}(e):i?Ct(e):o(n=(t=e)._i)?t._d=new Date(f.now()):a(n)?t._d=new Date(n.valueOf()):"string"==typeof n?function(e){var t=yt.exec(e._i);null===t?(bt(e),!1===e._isValid&&(delete e._isValid,Dt(e),!1===e._isValid&&(delete e._isValid,e._strict?e._isValid=!1:f.createFromInputFallback(e)))):e._d=new Date(+t[1])}(t):s(n)?(t._a=d(n.slice(0),function(e){return parseInt(e,10)}),_t(t)):l(n)?function(e){var t,n;e._d||(n=void 0===(t=U(e._i)).day?t.date:t.day,e._a=d([t.year,t.month,n,t.hour,t.minute,t.second,t.millisecond],function(e){return e&&parseInt(e,10)}),_t(e))}(t):c(n)?t._d=new Date(n):f.createFromInputFallback(t),m(e)||(e._d=null),e))}function Mt(e,t,n,r,i){var o,a={};return!0!==t&&!1!==t||(r=t,t=void 0),!0!==n&&!1!==n||(r=n,n=void 0),(l(e)&&u(e)||s(e)&&0===e.length)&&(e=void 0),a._isAMomentObject=!0,a._useUTC=a._isUTC=i,a._l=n,a._i=e,a._f=t,a._strict=r,(o=new b(ht(xt(a))))._nextDay&&(o.add(1,"d"),o._nextDay=void 0),o}function kt(e,t,n,r){return Mt(e,t,n,r,!1)}f.createFromInputFallback=n("value provided is not in a recognized RFC2822 or ISO format. moment construction falls back to js Date(), which is not reliable across all browsers and versions. Non RFC2822/ISO date formats are discouraged and will be removed in an upcoming major release. Please refer to http://momentjs.com/guides/#/warnings/js-date/ for more info.",function(e){e._d=new Date(e._i+(e._useUTC?" UTC":""))}),f.ISO_8601=function(){},f.RFC_2822=function(){};var Rt=n("moment().min is deprecated, use moment.max instead. http://momentjs.com/guides/#/warnings/min-max/",function(){var e=kt.apply(null,arguments);return this.isValid()&&e.isValid()?e<this?this:e:y()}),It=n("moment().max is deprecated, use moment.min instead. http://momentjs.com/guides/#/warnings/min-max/",function(){var e=kt.apply(null,arguments);return this.isValid()&&e.isValid()?this<e?this:e:y()});function Nt(e,t){var n,r;if(1===t.length&&s(t[0])&&(t=t[0]),!t.length)return kt();for(n=t[0],r=1;r<t.length;++r)t[r].isValid()&&!t[r][e](n)||(n=t[r]);return n}var Ot=["year","quarter","month","week","day","hour","minute","second","millisecond"];function Pt(e){var t=U(e),n=t.year||0,r=t.quarter||0,i=t.month||0,o=t.week||t.isoWeek||0,a=t.day||0,s=t.hour||0,l=t.minute||0,u=t.second||0,c=t.millisecond||0;this._isValid=function(e){var t,n,r=!1;for(t in e)if(p(e,t)&&(-1===ye.call(Ot,t)||null!=e[t]&&isNaN(e[t])))return!1;for(n=0;n<Ot.length;++n)if(e[Ot[n]]){if(r)return!1;parseFloat(e[Ot[n]])!==B(e[Ot[n]])&&(r=!0)}return!0}(t),this._milliseconds=+c+1e3*u+6e4*l+1e3*s*60*60,this._days=+a+7*o,this._months=+i+3*r+12*n,this._data={},this._locale=dt(),this._bubble()}function Ht(e){return e instanceof Pt}function Lt(e){return e<0?-1*Math.round(-1*e):Math.round(e)}function At(e,n){P(e,0,0,function(){var e=this.utcOffset(),t="+";return e<0&&(e=-e,t="-"),t+k(~~(e/60),2)+n+k(~~e%60,2)})}At("Z",":"),At("ZZ",""),he("Z",ce),he("ZZ",ce),ve(["Z","ZZ"],function(e,t,n){n._useUTC=!0,n._tzm=jt(ce,e)});var Yt=/([\+\-]|\d\d)/gi;function jt(e,t){var n,r,i=(t||"").match(e);return null===i?null:0===(r=60*(n=((i[i.length-1]||[])+"").match(Yt)||["-",0,0])[1]+B(n[2]))?0:"+"===n[0]?r:-r}function Ut(e,t){var n,r;return t._isUTC?(n=t.clone(),r=(w(e)||a(e)?e.valueOf():kt(e).valueOf())-n.valueOf(),n._d.setTime(n._d.valueOf()+r),f.updateOffset(n,!1),n):kt(e).local()}function Wt(e){return-Math.round(e._d.getTimezoneOffset())}function Vt(){return!!this.isValid()&&(this._isUTC&&0===this._offset)}f.updateOffset=function(){};var Ft=/^(-|\+)?(?:(\d*)[. ])?(\d+):(\d+)(?::(\d+)(\.\d*)?)?$/,zt=/^(-|\+)?P(?:([-+]?[0-9,.]*)Y)?(?:([-+]?[0-9,.]*)M)?(?:([-+]?[0-9,.]*)W)?(?:([-+]?[0-9,.]*)D)?(?:T(?:([-+]?[0-9,.]*)H)?(?:([-+]?[0-9,.]*)M)?(?:([-+]?[0-9,.]*)S)?)?$/;function Bt(e,t){var n,r,i,o=e,a=null;return Ht(e)?o={ms:e._milliseconds,d:e._days,M:e._months}:c(e)||!isNaN(+e)?(o={},t?o[t]=+e:o.milliseconds=+e):(a=Ft.exec(e))?(n="-"===a[1]?-1:1,o={y:0,d:B(a[be])*n,h:B(a[we])*n,m:B(a[De])*n,s:B(a[Te])*n,ms:B(Lt(1e3*a[_e]))*n}):(a=zt.exec(e))?(n="-"===a[1]?-1:1,o={y:qt(a[2],n),M:qt(a[3],n),w:qt(a[4],n),d:qt(a[5],n),h:qt(a[6],n),m:qt(a[7],n),s:qt(a[8],n)}):null==o?o={}:"object"==typeof o&&("from"in o||"to"in o)&&(i=function(e,t){var n;if(!e.isValid()||!t.isValid())return{milliseconds:0,months:0};t=Ut(t,e),e.isBefore(t)?n=Gt(e,t):((n=Gt(t,e)).milliseconds=-n.milliseconds,n.months=-n.months);return n}(kt(o.from),kt(o.to)),(o={}).ms=i.milliseconds,o.M=i.months),r=new Pt(o),Ht(e)&&p(e,"_locale")&&(r._locale=e._locale),Ht(e)&&p(e,"_isValid")&&(r._isValid=e._isValid),r}function qt(e,t){var n=e&&parseFloat(e.replace(",","."));return(isNaN(n)?0:n)*t}function Gt(e,t){var n={};return n.months=t.month()-e.month()+12*(t.year()-e.year()),e.clone().add(n.months,"M").isAfter(t)&&--n.months,n.milliseconds=t-e.clone().add(n.months,"M"),n}function Zt(r,i){return function(e,t){var n;return null===t||isNaN(+t)||(_(i,"moment()."+i+"(period, number) is deprecated. Please use moment()."+i+"(number, period). See http://momentjs.com/guides/#/warnings/add-inverted-param/ for more info."),n=e,e=t,t=n),Xt(this,Bt(e,t),r),this}}function Xt(e,t,n,r){var i=t._milliseconds,o=Lt(t._days),a=Lt(t._months);e.isValid()&&(r=null==r||r,a&&Pe(e,G(e,"Month")+a*n),o&&Z(e,"Date",G(e,"Date")+o*n),i&&e._d.setTime(e._d.valueOf()+i*n),r&&f.updateOffset(e,o||a))}Bt.fn=Pt.prototype,Bt.invalid=function(){return Bt(NaN)};var $t=Zt(1,"add"),Jt=Zt(-1,"subtract");function Qt(e){return"string"==typeof e||e instanceof String}function Kt(e){return w(e)||a(e)||Qt(e)||c(e)||function(t){var e=s(t),n=!1;e&&(n=0===t.filter(function(e){return!c(e)&&Qt(t)}).length);return e&&n}(e)||function(e){var t,n,r=l(e)&&!u(e),i=!1,o=["years","year","y","months","month","M","days","day","d","dates","date","D","hours","hour","h","minutes","minute","m","seconds","second","s","milliseconds","millisecond","ms"];for(t=0;t<o.length;t+=1)n=o[t],i=i||p(e,n);return r&&i}(e)||null==e}function en(e,t){if(e.date()<t.date())return-en(t,e);var n=12*(t.year()-e.year())+(t.month()-e.month()),r=e.clone().add(n,"months"),i=t-r<0?(t-r)/(r-e.clone().add(n-1,"months")):(t-r)/(e.clone().add(1+n,"months")-r);return-(n+i)||0}function tn(e){var t;return void 0===e?this._locale._abbr:(null!=(t=dt(e))&&(this._locale=t),this)}f.defaultFormat="YYYY-MM-DDTHH:mm:ssZ",f.defaultFormatUtc="YYYY-MM-DDTHH:mm:ss[Z]";var nn=n("moment().lang() is deprecated. Instead, use moment().localeData() to get the language configuration. Use moment().locale() to change languages.",function(e){return void 0===e?this.localeData():this.locale(e)});function rn(){return this._locale}var on=126227808e5;function an(e,t){return(e%t+t)%t}function sn(e,t,n){return e<100&&0<=e?new Date(e+400,t,n)-on:new Date(e,t,n).valueOf()}function ln(e,t,n){return e<100&&0<=e?Date.UTC(e+400,t,n)-on:Date.UTC(e,t,n)}function un(e,t){return t.erasAbbrRegex(e)}function cn(){for(var e=[],t=[],n=[],r=[],i=this.eras(),o=0,a=i.length;o<a;++o)t.push(pe(i[o].name)),e.push(pe(i[o].abbr)),n.push(pe(i[o].narrow)),r.push(pe(i[o].name)),r.push(pe(i[o].abbr)),r.push(pe(i[o].narrow));this._erasRegex=new RegExp("^("+r.join("|")+")","i"),this._erasNameRegex=new RegExp("^("+t.join("|")+")","i"),this._erasAbbrRegex=new RegExp("^("+e.join("|")+")","i"),this._erasNarrowRegex=new RegExp("^("+n.join("|")+")","i")}function dn(e,t){P(0,[e,e.length],0,t)}function hn(e,t,n,r,i){var o;return null==e?Ve(this,r,i).year:((o=Fe(e,r,i))<t&&(t=o),function(e,t,n,r,i){var o=We(e,t,n,r,i),a=je(o.year,0,o.dayOfYear);return this.year(a.getUTCFullYear()),this.month(a.getUTCMonth()),this.date(a.getUTCDate()),this}.call(this,e,t,n,r,i))}P("N",0,0,"eraAbbr"),P("NN",0,0,"eraAbbr"),P("NNN",0,0,"eraAbbr"),P("NNNN",0,0,"eraName"),P("NNNNN",0,0,"eraNarrow"),P("y",["y",1],"yo","eraYear"),P("y",["yy",2],0,"eraYear"),P("y",["yyy",3],0,"eraYear"),P("y",["yyyy",4],0,"eraYear"),he("N",un),he("NN",un),he("NNN",un),he("NNNN",function(e,t){return t.erasNameRegex(e)}),he("NNNNN",function(e,t){return t.erasNarrowRegex(e)}),ve(["N","NN","NNN","NNNN","NNNNN"],function(e,t,n,r){var i=n._locale.erasParse(e,r,n._strict);i?v(n).era=i:v(n).invalidEra=e}),he("y",se),he("yy",se),he("yyy",se),he("yyyy",se),he("yo",function(e,t){return t._eraYearOrdinalRegex||se}),ve(["y","yy","yyy","yyyy"],Se),ve(["yo"],function(e,t,n,r){var i;n._locale._eraYearOrdinalRegex&&(i=e.match(n._locale._eraYearOrdinalRegex)),n._locale.eraYearOrdinalParse?t[Se]=n._locale.eraYearOrdinalParse(e,i):t[Se]=parseInt(e,10)}),P(0,["gg",2],0,function(){return this.weekYear()%100}),P(0,["GG",2],0,function(){return this.isoWeekYear()%100}),dn("gggg","weekYear"),dn("ggggg","weekYear"),dn("GGGG","isoWeekYear"),dn("GGGGG","isoWeekYear"),Y("weekYear","gg"),Y("isoWeekYear","GG"),V("weekYear",1),V("isoWeekYear",1),he("G",le),he("g",le),he("GG",te,J),he("gg",te,J),he("GGGG",oe,K),he("gggg",oe,K),he("GGGGG",ae,ee),he("ggggg",ae,ee),me(["gggg","ggggg","GGGG","GGGGG"],function(e,t,n,r){t[r.substr(0,2)]=B(e)}),me(["gg","GG"],function(e,t,n,r){t[r]=f.parseTwoDigitYear(e)}),P("Q",0,"Qo","quarter"),Y("quarter","Q"),V("quarter",7),he("Q",$),ve("Q",function(e,t){t[Ee]=3*(B(e)-1)}),P("D",["DD",2],"Do","date"),Y("date","D"),V("date",9),he("D",te),he("DD",te,J),he("Do",function(e,t){return e?t._dayOfMonthOrdinalParse||t._ordinalParse:t._dayOfMonthOrdinalParseLenient}),ve(["D","DD"],be),ve("Do",function(e,t){t[be]=B(e.match(te)[0])});var fn=q("Date",!0);P("DDD",["DDDD",3],"DDDo","dayOfYear"),Y("dayOfYear","DDD"),V("dayOfYear",4),he("DDD",ie),he("DDDD",Q),ve(["DDD","DDDD"],function(e,t,n){n._dayOfYear=B(e)}),P("m",["mm",2],0,"minute"),Y("minute","m"),V("minute",14),he("m",te),he("mm",te,J),ve(["m","mm"],De);var pn=q("Minutes",!1);P("s",["ss",2],0,"second"),Y("second","s"),V("second",15),he("s",te),he("ss",te,J),ve(["s","ss"],Te);var gn,vn,mn=q("Seconds",!1);for(P("S",0,0,function(){return~~(this.millisecond()/100)}),P(0,["SS",2],0,function(){return~~(this.millisecond()/10)}),P(0,["SSS",3],0,"millisecond"),P(0,["SSSS",4],0,function(){return 10*this.millisecond()}),P(0,["SSSSS",5],0,function(){return 100*this.millisecond()}),P(0,["SSSSSS",6],0,function(){return 1e3*this.millisecond()}),P(0,["SSSSSSS",7],0,function(){return 1e4*this.millisecond()}),P(0,["SSSSSSSS",8],0,function(){return 1e5*this.millisecond()}),P(0,["SSSSSSSSS",9],0,function(){return 1e6*this.millisecond()}),Y("millisecond","ms"),V("millisecond",16),he("S",ie,$),he("SS",ie,J),he("SSS",ie,Q),gn="SSSS";gn.length<=9;gn+="S")he(gn,se);function yn(e,t){t[_e]=B(1e3*("0."+e))}for(gn="S";gn.length<=9;gn+="S")ve(gn,yn);vn=q("Milliseconds",!1),P("z",0,0,"zoneAbbr"),P("zz",0,0,"zoneName");var Sn=b.prototype;function En(e){return e}Sn.add=$t,Sn.calendar=function(e,t){1===arguments.length&&(Kt(arguments[0])?(e=arguments[0],t=void 0):function(e){for(var t=l(e)&&!u(e),n=!1,r=["sameDay","nextDay","lastDay","nextWeek","lastWeek","sameElse"],i=0;i<r.length;i+=1)n=n||p(e,r[i]);return t&&n}(arguments[0])&&(t=arguments[0],e=void 0));var n=e||kt(),r=Ut(n,this).startOf("day"),i=f.calendarFormat(this,r)||"sameElse",o=t&&(C(t[i])?t[i].call(this,n):t[i]);return this.format(o||this.localeData().calendar(i,this,kt(n)))},Sn.clone=function(){return new b(this)},Sn.diff=function(e,t,n){var r,i,o;if(!this.isValid())return NaN;if(!(r=Ut(e,this)).isValid())return NaN;switch(i=6e4*(r.utcOffset()-this.utcOffset()),t=j(t)){case"year":o=en(this,r)/12;break;case"month":o=en(this,r);break;case"quarter":o=en(this,r)/3;break;case"second":o=(this-r)/1e3;break;case"minute":o=(this-r)/6e4;break;case"hour":o=(this-r)/36e5;break;case"day":o=(this-r-i)/864e5;break;case"week":o=(this-r-i)/6048e5;break;default:o=this-r}return n?o:z(o)},Sn.endOf=function(e){var t,n;if(void 0===(e=j(e))||"millisecond"===e||!this.isValid())return this;switch(n=this._isUTC?ln:sn,e){case"year":t=n(this.year()+1,0,1)-1;break;case"quarter":t=n(this.year(),this.month()-this.month()%3+3,1)-1;break;case"month":t=n(this.year(),this.month()+1,1)-1;break;case"week":t=n(this.year(),this.month(),this.date()-this.weekday()+7)-1;break;case"isoWeek":t=n(this.year(),this.month(),this.date()-(this.isoWeekday()-1)+7)-1;break;case"day":case"date":t=n(this.year(),this.month(),this.date()+1)-1;break;case"hour":t=this._d.valueOf(),t+=36e5-an(t+(this._isUTC?0:6e4*this.utcOffset()),36e5)-1;break;case"minute":t=this._d.valueOf(),t+=6e4-an(t,6e4)-1;break;case"second":t=this._d.valueOf(),t+=1e3-an(t,1e3)-1}return this._d.setTime(t),f.updateOffset(this,!0),this},Sn.format=function(e){e=e||(this.isUtc()?f.defaultFormatUtc:f.defaultFormat);var t=H(this,e);return this.localeData().postformat(t)},Sn.from=function(e,t){return this.isValid()&&(w(e)&&e.isValid()||kt(e).isValid())?Bt({to:this,from:e}).locale(this.locale()).humanize(!t):this.localeData().invalidDate()},Sn.fromNow=function(e){return this.from(kt(),e)},Sn.to=function(e,t){return this.isValid()&&(w(e)&&e.isValid()||kt(e).isValid())?Bt({from:this,to:e}).locale(this.locale()).humanize(!t):this.localeData().invalidDate()},Sn.toNow=function(e){return this.to(kt(),e)},Sn.get=function(e){return C(this[e=j(e)])?this[e]():this},Sn.invalidAt=function(){return v(this).overflow},Sn.isAfter=function(e,t){var n=w(e)?e:kt(e);return!(!this.isValid()||!n.isValid())&&("millisecond"===(t=j(t)||"millisecond")?this.valueOf()>n.valueOf():n.valueOf()<this.clone().startOf(t).valueOf())},Sn.isBefore=function(e,t){var n=w(e)?e:kt(e);return!(!this.isValid()||!n.isValid())&&("millisecond"===(t=j(t)||"millisecond")?this.valueOf()<n.valueOf():this.clone().endOf(t).valueOf()<n.valueOf())},Sn.isBetween=function(e,t,n,r){var i=w(e)?e:kt(e),o=w(t)?t:kt(t);return!!(this.isValid()&&i.isValid()&&o.isValid())&&(("("===(r=r||"()")[0]?this.isAfter(i,n):!this.isBefore(i,n))&&(")"===r[1]?this.isBefore(o,n):!this.isAfter(o,n)))},Sn.isSame=function(e,t){var n,r=w(e)?e:kt(e);return!(!this.isValid()||!r.isValid())&&("millisecond"===(t=j(t)||"millisecond")?this.valueOf()===r.valueOf():(n=r.valueOf(),this.clone().startOf(t).valueOf()<=n&&n<=this.clone().endOf(t).valueOf()))},Sn.isSameOrAfter=function(e,t){return this.isSame(e,t)||this.isAfter(e,t)},Sn.isSameOrBefore=function(e,t){return this.isSame(e,t)||this.isBefore(e,t)},Sn.isValid=function(){return m(this)},Sn.lang=nn,Sn.locale=tn,Sn.localeData=rn,Sn.max=It,Sn.min=Rt,Sn.parsingFlags=function(){return h({},v(this))},Sn.set=function(e,t){if("object"==typeof e)for(var n=function(e){var t,n=[];for(t in e)p(e,t)&&n.push({unit:t,priority:W[t]});return n.sort(function(e,t){return e.priority-t.priority}),n}(e=U(e)),r=0;r<n.length;r++)this[n[r].unit](e[n[r].unit]);else if(C(this[e=j(e)]))return this[e](t);return this},Sn.startOf=function(e){var t,n;if(void 0===(e=j(e))||"millisecond"===e||!this.isValid())return this;switch(n=this._isUTC?ln:sn,e){case"year":t=n(this.year(),0,1);break;case"quarter":t=n(this.year(),this.month()-this.month()%3,1);break;case"month":t=n(this.year(),this.month(),1);break;case"week":t=n(this.year(),this.month(),this.date()-this.weekday());break;case"isoWeek":t=n(this.year(),this.month(),this.date()-(this.isoWeekday()-1));break;case"day":case"date":t=n(this.year(),this.month(),this.date());break;case"hour":t=this._d.valueOf(),t-=an(t+(this._isUTC?0:6e4*this.utcOffset()),36e5);break;case"minute":t=this._d.valueOf(),t-=an(t,6e4);break;case"second":t=this._d.valueOf(),t-=an(t,1e3)}return this._d.setTime(t),f.updateOffset(this,!0),this},Sn.subtract=Jt,Sn.toArray=function(){var e=this;return[e.year(),e.month(),e.date(),e.hour(),e.minute(),e.second(),e.millisecond()]},Sn.toObject=function(){var e=this;return{years:e.year(),months:e.month(),date:e.date(),hours:e.hours(),minutes:e.minutes(),seconds:e.seconds(),milliseconds:e.milliseconds()}},Sn.toDate=function(){return new Date(this.valueOf())},Sn.toISOString=function(e){if(!this.isValid())return null;var t=!0!==e,n=t?this.clone().utc():this;return n.year()<0||9999<n.year()?H(n,t?"YYYYYY-MM-DD[T]HH:mm:ss.SSS[Z]":"YYYYYY-MM-DD[T]HH:mm:ss.SSSZ"):C(Date.prototype.toISOString)?t?this.toDate().toISOString():new Date(this.valueOf()+60*this.utcOffset()*1e3).toISOString().replace("Z",H(n,"Z")):H(n,t?"YYYY-MM-DD[T]HH:mm:ss.SSS[Z]":"YYYY-MM-DD[T]HH:mm:ss.SSSZ")},Sn.inspect=function(){if(!this.isValid())return"moment.invalid(/* "+this._i+" */)";var e,t,n,r="moment",i="";return this.isLocal()||(r=0===this.utcOffset()?"moment.utc":"moment.parseZone",i="Z"),e="["+r+'("]',t=0<=this.year()&&this.year()<=9999?"YYYY":"YYYYYY",n=i+'[")]',this.format(e+t+"-MM-DD[T]HH:mm:ss.SSS"+n)},"undefined"!=typeof Symbol&&null!=Symbol.for&&(Sn[Symbol.for("nodejs.util.inspect.custom")]=function(){return"Moment<"+this.format()+">"}),Sn.toJSON=function(){return this.isValid()?this.toISOString():null},Sn.toString=function(){return this.clone().locale("en").format("ddd MMM DD YYYY HH:mm:ss [GMT]ZZ")},Sn.unix=function(){return Math.floor(this.valueOf()/1e3)},Sn.valueOf=function(){return this._d.valueOf()-6e4*(this._offset||0)},Sn.creationData=function(){return{input:this._i,format:this._f,locale:this._locale,isUTC:this._isUTC,strict:this._strict}},Sn.eraName=function(){for(var e,t=this.localeData().eras(),n=0,r=t.length;n<r;++n){if(e=this.startOf("day").valueOf(),t[n].since<=e&&e<=t[n].until)return t[n].name;if(t[n].until<=e&&e<=t[n].since)return t[n].name}return""},Sn.eraNarrow=function(){for(var e,t=this.localeData().eras(),n=0,r=t.length;n<r;++n){if(e=this.startOf("day").valueOf(),t[n].since<=e&&e<=t[n].until)return t[n].narrow;if(t[n].until<=e&&e<=t[n].since)return t[n].narrow}return""},Sn.eraAbbr=function(){for(var e,t=this.localeData().eras(),n=0,r=t.length;n<r;++n){if(e=this.startOf("day").valueOf(),t[n].since<=e&&e<=t[n].until)return t[n].abbr;if(t[n].until<=e&&e<=t[n].since)return t[n].abbr}return""},Sn.eraYear=function(){for(var e,t,n=this.localeData().eras(),r=0,i=n.length;r<i;++r)if(e=n[r].since<=n[r].until?1:-1,t=this.startOf("day").valueOf(),n[r].since<=t&&t<=n[r].until||n[r].until<=t&&t<=n[r].since)return(this.year()-f(n[r].since).year())*e+n[r].offset;return this.year()},Sn.year=Ye,Sn.isLeapYear=function(){return F(this.year())},Sn.weekYear=function(e){return hn.call(this,e,this.week(),this.weekday(),this.localeData()._week.dow,this.localeData()._week.doy)},Sn.isoWeekYear=function(e){return hn.call(this,e,this.isoWeek(),this.isoWeekday(),1,4)},Sn.quarter=Sn.quarters=function(e){return null==e?Math.ceil((this.month()+1)/3):this.month(3*(e-1)+this.month()%3)},Sn.month=He,Sn.daysInMonth=function(){return Me(this.year(),this.month())},Sn.week=Sn.weeks=function(e){var t=this.localeData().week(this);return null==e?t:this.add(7*(e-t),"d")},Sn.isoWeek=Sn.isoWeeks=function(e){var t=Ve(this,1,4).week;return null==e?t:this.add(7*(e-t),"d")},Sn.weeksInYear=function(){var e=this.localeData()._week;return Fe(this.year(),e.dow,e.doy)},Sn.weeksInWeekYear=function(){var e=this.localeData()._week;return Fe(this.weekYear(),e.dow,e.doy)},Sn.isoWeeksInYear=function(){return Fe(this.year(),1,4)},Sn.isoWeeksInISOWeekYear=function(){return Fe(this.isoWeekYear(),1,4)},Sn.date=fn,Sn.day=Sn.days=function(e){if(!this.isValid())return null!=e?this:NaN;var t,n,r=this._isUTC?this._d.getUTCDay():this._d.getDay();return null!=e?(t=e,n=this.localeData(),e="string"!=typeof t?t:isNaN(t)?"number"==typeof(t=n.weekdaysParse(t))?t:null:parseInt(t,10),this.add(e-r,"d")):r},Sn.weekday=function(e){if(!this.isValid())return null!=e?this:NaN;var t=(this.day()+7-this.localeData()._week.dow)%7;return null==e?t:this.add(e-t,"d")},Sn.isoWeekday=function(e){if(!this.isValid())return null!=e?this:NaN;if(null==e)return this.day()||7;var t,n,r=(t=e,n=this.localeData(),"string"==typeof t?n.weekdaysParse(t)%7||7:isNaN(t)?null:t);return this.day(this.day()%7?r:r-7)},Sn.dayOfYear=function(e){var t=Math.round((this.clone().startOf("day")-this.clone().startOf("year"))/864e5)+1;return null==e?t:this.add(e-t,"d")},Sn.hour=Sn.hours=tt,Sn.minute=Sn.minutes=pn,Sn.second=Sn.seconds=mn,Sn.millisecond=Sn.milliseconds=vn,Sn.utcOffset=function(e,t,n){var r,i=this._offset||0;if(!this.isValid())return null!=e?this:NaN;if(null==e)return this._isUTC?i:Wt(this);if("string"==typeof e){if(null===(e=jt(ce,e)))return this}else Math.abs(e)<16&&!n&&(e*=60);return!this._isUTC&&t&&(r=Wt(this)),this._offset=e,this._isUTC=!0,null!=r&&this.add(r,"m"),i!==e&&(!t||this._changeInProgress?Xt(this,Bt(e-i,"m"),1,!1):this._changeInProgress||(this._changeInProgress=!0,f.updateOffset(this,!0),this._changeInProgress=null)),this},Sn.utc=function(e){return this.utcOffset(0,e)},Sn.local=function(e){return this._isUTC&&(this.utcOffset(0,e),this._isUTC=!1,e&&this.subtract(Wt(this),"m")),this},Sn.parseZone=function(){var e;return null!=this._tzm?this.utcOffset(this._tzm,!1,!0):"string"==typeof this._i&&(null!=(e=jt(ue,this._i))?this.utcOffset(e):this.utcOffset(0,!0)),this},Sn.hasAlignedHourOffset=function(e){return!!this.isValid()&&(e=e?kt(e).utcOffset():0,(this.utcOffset()-e)%60==0)},Sn.isDST=function(){return this.utcOffset()>this.clone().month(0).utcOffset()||this.utcOffset()>this.clone().month(5).utcOffset()},Sn.isLocal=function(){return!!this.isValid()&&!this._isUTC},Sn.isUtcOffset=function(){return!!this.isValid()&&this._isUTC},Sn.isUtc=Vt,Sn.isUTC=Vt,Sn.zoneAbbr=function(){return this._isUTC?"UTC":""},Sn.zoneName=function(){return this._isUTC?"Coordinated Universal Time":""},Sn.dates=n("dates accessor is deprecated. Use date instead.",fn),Sn.months=n("months accessor is deprecated. Use month instead",He),Sn.years=n("years accessor is deprecated. Use year instead",Ye),Sn.zone=n("moment().zone is deprecated, use moment().utcOffset instead. http://momentjs.com/guides/#/warnings/zone/",function(e,t){return null!=e?("string"!=typeof e&&(e=-e),this.utcOffset(e,t),this):-this.utcOffset()}),Sn.isDSTShifted=n("isDSTShifted is deprecated. See http://momentjs.com/guides/#/warnings/dst-shifted/ for more information",function(){if(!o(this._isDSTShifted))return this._isDSTShifted;var e,t={};return E(t,this),(t=xt(t))._a?(e=(t._isUTC?g:kt)(t._a),this._isDSTShifted=this.isValid()&&0<function(e,t,n){for(var r=Math.min(e.length,t.length),i=Math.abs(e.length-t.length),o=0,a=0;a<r;a++)(n&&e[a]!==t[a]||!n&&B(e[a])!==B(t[a]))&&o++;return o+i}(t._a,e.toArray())):this._isDSTShifted=!1,this._isDSTShifted});var bn=M.prototype;function wn(e,t,n,r){var i=dt(),o=g().set(r,t);return i[n](o,e)}function Dn(e,t,n){if(c(e)&&(t=e,e=void 0),e=e||"",null!=t)return wn(e,t,n,"month");for(var r=[],i=0;i<12;i++)r[i]=wn(e,i,n,"month");return r}function Tn(e,t,n,r){t=("boolean"==typeof e?c(t)&&(n=t,t=void 0):(t=e,e=!1,c(n=t)&&(n=t,t=void 0)),t||"");var i,o=dt(),a=e?o._week.dow:0,s=[];if(null!=n)return wn(t,(n+a)%7,r,"day");for(i=0;i<7;i++)s[i]=wn(t,(i+a)%7,r,"day");return s}bn.calendar=function(e,t,n){var r=this._calendar[e]||this._calendar.sameElse;return C(r)?r.call(t,n):r},bn.longDateFormat=function(e){var t=this._longDateFormat[e],n=this._longDateFormat[e.toUpperCase()];return t||!n?t:(this._longDateFormat[e]=n.match(R).map(function(e){return"MMMM"===e||"MM"===e||"DD"===e||"dddd"===e?e.slice(1):e}).join(""),this._longDateFormat[e])},bn.invalidDate=function(){return this._invalidDate},bn.ordinal=function(e){return this._ordinal.replace("%d",e)},bn.preparse=En,bn.postformat=En,bn.relativeTime=function(e,t,n,r){var i=this._relativeTime[n];return C(i)?i(e,t,n,r):i.replace(/%d/i,e)},bn.pastFuture=function(e,t){var n=this._relativeTime[0<e?"future":"past"];return C(n)?n(t):n.replace(/%s/i,t)},bn.set=function(e){var t,n;for(n in e)p(e,n)&&(C(t=e[n])?this[n]=t:this["_"+n]=t);this._config=e,this._dayOfMonthOrdinalParseLenient=new RegExp((this._dayOfMonthOrdinalParse.source||this._ordinalParse.source)+"|"+/\d{1,2}/.source)},bn.eras=function(e,t){for(var n,r=this._eras||dt("en")._eras,i=0,o=r.length;i<o;++i){switch(typeof r[i].since){case"string":n=f(r[i].since).startOf("day"),r[i].since=n.valueOf()}switch(typeof r[i].until){case"undefined":r[i].until=1/0;break;case"string":n=f(r[i].until).startOf("day").valueOf(),r[i].until=n.valueOf()}}return r},bn.erasParse=function(e,t,n){var r,i,o,a,s,l=this.eras();for(e=e.toUpperCase(),r=0,i=l.length;r<i;++r)if(o=l[r].name.toUpperCase(),a=l[r].abbr.toUpperCase(),s=l[r].narrow.toUpperCase(),n)switch(t){case"N":case"NN":case"NNN":if(a===e)return l[r];break;case"NNNN":if(o===e)return l[r];break;case"NNNNN":if(s===e)return l[r]}else if(0<=[o,a,s].indexOf(e))return l[r]},bn.erasConvertYear=function(e,t){var n=e.since<=e.until?1:-1;return void 0===t?f(e.since).year():f(e.since).year()+(t-e.offset)*n},bn.erasAbbrRegex=function(e){return p(this,"_erasAbbrRegex")||cn.call(this),e?this._erasAbbrRegex:this._erasRegex},bn.erasNameRegex=function(e){return p(this,"_erasNameRegex")||cn.call(this),e?this._erasNameRegex:this._erasRegex},bn.erasNarrowRegex=function(e){return p(this,"_erasNarrowRegex")||cn.call(this),e?this._erasNarrowRegex:this._erasRegex},bn.months=function(e,t){return e?s(this._months)?this._months[e.month()]:this._months[(this._months.isFormat||Ie).test(t)?"format":"standalone"][e.month()]:s(this._months)?this._months:this._months.standalone},bn.monthsShort=function(e,t){return e?s(this._monthsShort)?this._monthsShort[e.month()]:this._monthsShort[Ie.test(t)?"format":"standalone"][e.month()]:s(this._monthsShort)?this._monthsShort:this._monthsShort.standalone},bn.monthsParse=function(e,t,n){var r,i,o;if(this._monthsParseExact)return function(e,t,n){var r,i,o,a=e.toLocaleLowerCase();if(!this._monthsParse)for(this._monthsParse=[],this._longMonthsParse=[],this._shortMonthsParse=[],r=0;r<12;++r)o=g([2e3,r]),this._shortMonthsParse[r]=this.monthsShort(o,"").toLocaleLowerCase(),this._longMonthsParse[r]=this.months(o,"").toLocaleLowerCase();return n?"MMM"===t?-1!==(i=ye.call(this._shortMonthsParse,a))?i:null:-1!==(i=ye.call(this._longMonthsParse,a))?i:null:"MMM"===t?-1!==(i=ye.call(this._shortMonthsParse,a))||-1!==(i=ye.call(this._longMonthsParse,a))?i:null:-1!==(i=ye.call(this._longMonthsParse,a))||-1!==(i=ye.call(this._shortMonthsParse,a))?i:null}.call(this,e,t,n);for(this._monthsParse||(this._monthsParse=[],this._longMonthsParse=[],this._shortMonthsParse=[]),r=0;r<12;r++){if(i=g([2e3,r]),n&&!this._longMonthsParse[r]&&(this._longMonthsParse[r]=new RegExp("^"+this.months(i,"").replace(".","")+"$","i"),this._shortMonthsParse[r]=new RegExp("^"+this.monthsShort(i,"").replace(".","")+"$","i")),n||this._monthsParse[r]||(o="^"+this.months(i,"")+"|^"+this.monthsShort(i,""),this._monthsParse[r]=new RegExp(o.replace(".",""),"i")),n&&"MMMM"===t&&this._longMonthsParse[r].test(e))return r;if(n&&"MMM"===t&&this._shortMonthsParse[r].test(e))return r;if(!n&&this._monthsParse[r].test(e))return r}},bn.monthsRegex=function(e){return this._monthsParseExact?(p(this,"_monthsRegex")||Le.call(this),e?this._monthsStrictRegex:this._monthsRegex):(p(this,"_monthsRegex")||(this._monthsRegex=Oe),this._monthsStrictRegex&&e?this._monthsStrictRegex:this._monthsRegex)},bn.monthsShortRegex=function(e){return this._monthsParseExact?(p(this,"_monthsRegex")||Le.call(this),e?this._monthsShortStrictRegex:this._monthsShortRegex):(p(this,"_monthsShortRegex")||(this._monthsShortRegex=Ne),this._monthsShortStrictRegex&&e?this._monthsShortStrictRegex:this._monthsShortRegex)},bn.week=function(e){return Ve(e,this._week.dow,this._week.doy).week},bn.firstDayOfYear=function(){return this._week.doy},bn.firstDayOfWeek=function(){return this._week.dow},bn.weekdays=function(e,t){var n=s(this._weekdays)?this._weekdays:this._weekdays[e&&!0!==e&&this._weekdays.isFormat.test(t)?"format":"standalone"];return!0===e?ze(n,this._week.dow):e?n[e.day()]:n},bn.weekdaysMin=function(e){return!0===e?ze(this._weekdaysMin,this._week.dow):e?this._weekdaysMin[e.day()]:this._weekdaysMin},bn.weekdaysShort=function(e){return!0===e?ze(this._weekdaysShort,this._week.dow):e?this._weekdaysShort[e.day()]:this._weekdaysShort},bn.weekdaysParse=function(e,t,n){var r,i,o;if(this._weekdaysParseExact)return function(e,t,n){var r,i,o,a=e.toLocaleLowerCase();if(!this._weekdaysParse)for(this._weekdaysParse=[],this._shortWeekdaysParse=[],this._minWeekdaysParse=[],r=0;r<7;++r)o=g([2e3,1]).day(r),this._minWeekdaysParse[r]=this.weekdaysMin(o,"").toLocaleLowerCase(),this._shortWeekdaysParse[r]=this.weekdaysShort(o,"").toLocaleLowerCase(),this._weekdaysParse[r]=this.weekdays(o,"").toLocaleLowerCase();return n?"dddd"===t?-1!==(i=ye.call(this._weekdaysParse,a))?i:null:"ddd"===t?-1!==(i=ye.call(this._shortWeekdaysParse,a))?i:null:-1!==(i=ye.call(this._minWeekdaysParse,a))?i:null:"dddd"===t?-1!==(i=ye.call(this._weekdaysParse,a))||-1!==(i=ye.call(this._shortWeekdaysParse,a))||-1!==(i=ye.call(this._minWeekdaysParse,a))?i:null:"ddd"===t?-1!==(i=ye.call(this._shortWeekdaysParse,a))||-1!==(i=ye.call(this._weekdaysParse,a))||-1!==(i=ye.call(this._minWeekdaysParse,a))?i:null:-1!==(i=ye.call(this._minWeekdaysParse,a))||-1!==(i=ye.call(this._weekdaysParse,a))||-1!==(i=ye.call(this._shortWeekdaysParse,a))?i:null}.call(this,e,t,n);for(this._weekdaysParse||(this._weekdaysParse=[],this._minWeekdaysParse=[],this._shortWeekdaysParse=[],this._fullWeekdaysParse=[]),r=0;r<7;r++){if(i=g([2e3,1]).day(r),n&&!this._fullWeekdaysParse[r]&&(this._fullWeekdaysParse[r]=new RegExp("^"+this.weekdays(i,"").replace(".","\\.?")+"$","i"),this._shortWeekdaysParse[r]=new RegExp("^"+this.weekdaysShort(i,"").replace(".","\\.?")+"$","i"),this._minWeekdaysParse[r]=new RegExp("^"+this.weekdaysMin(i,"").replace(".","\\.?")+"$","i")),this._weekdaysParse[r]||(o="^"+this.weekdays(i,"")+"|^"+this.weekdaysShort(i,"")+"|^"+this.weekdaysMin(i,""),this._weekdaysParse[r]=new RegExp(o.replace(".",""),"i")),n&&"dddd"===t&&this._fullWeekdaysParse[r].test(e))return r;if(n&&"ddd"===t&&this._shortWeekdaysParse[r].test(e))return r;if(n&&"dd"===t&&this._minWeekdaysParse[r].test(e))return r;if(!n&&this._weekdaysParse[r].test(e))return r}},bn.weekdaysRegex=function(e){return this._weekdaysParseExact?(p(this,"_weekdaysRegex")||Je.call(this),e?this._weekdaysStrictRegex:this._weekdaysRegex):(p(this,"_weekdaysRegex")||(this._weekdaysRegex=Ze),this._weekdaysStrictRegex&&e?this._weekdaysStrictRegex:this._weekdaysRegex)},bn.weekdaysShortRegex=function(e){return this._weekdaysParseExact?(p(this,"_weekdaysRegex")||Je.call(this),e?this._weekdaysShortStrictRegex:this._weekdaysShortRegex):(p(this,"_weekdaysShortRegex")||(this._weekdaysShortRegex=Xe),this._weekdaysShortStrictRegex&&e?this._weekdaysShortStrictRegex:this._weekdaysShortRegex)},bn.weekdaysMinRegex=function(e){return this._weekdaysParseExact?(p(this,"_weekdaysRegex")||Je.call(this),e?this._weekdaysMinStrictRegex:this._weekdaysMinRegex):(p(this,"_weekdaysMinRegex")||(this._weekdaysMinRegex=$e),this._weekdaysMinStrictRegex&&e?this._weekdaysMinStrictRegex:this._weekdaysMinRegex)},bn.isPM=function(e){return"p"===(e+"").toLowerCase().charAt(0)},bn.meridiem=function(e,t,n){return 11<e?n?"pm":"PM":n?"am":"AM"},ut("en",{eras:[{since:"0001-01-01",until:1/0,offset:1,name:"Anno Domini",narrow:"AD",abbr:"AD"},{since:"0000-12-31",until:-1/0,offset:1,name:"Before Christ",narrow:"BC",abbr:"BC"}],dayOfMonthOrdinalParse:/\d{1,2}(th|st|nd|rd)/,ordinal:function(e){var t=e%10;return e+(1===B(e%100/10)?"th":1==t?"st":2==t?"nd":3==t?"rd":"th")}}),f.lang=n("moment.lang is deprecated. Use moment.locale instead.",ut),f.langData=n("moment.langData is deprecated. Use moment.localeData instead.",dt);var _n=Math.abs;function Cn(e,t,n,r){var i=Bt(t,n);return e._milliseconds+=r*i._milliseconds,e._days+=r*i._days,e._months+=r*i._months,e._bubble()}function xn(e){return e<0?Math.floor(e):Math.ceil(e)}function Mn(e){return 4800*e/146097}function kn(e){return 146097*e/4800}function Rn(e){return function(){return this.as(e)}}var In=Rn("ms"),Nn=Rn("s"),On=Rn("m"),Pn=Rn("h"),Hn=Rn("d"),Ln=Rn("w"),An=Rn("M"),Yn=Rn("Q"),jn=Rn("y");function Un(e){return function(){return this.isValid()?this._data[e]:NaN}}var Wn=Un("milliseconds"),Vn=Un("seconds"),Fn=Un("minutes"),zn=Un("hours"),Bn=Un("days"),qn=Un("months"),Gn=Un("years");var Zn=Math.round,Xn={ss:44,s:45,m:45,h:22,d:26,w:null,M:11};function $n(e,t,n,r){var i=Bt(e).abs(),o=Zn(i.as("s")),a=Zn(i.as("m")),s=Zn(i.as("h")),l=Zn(i.as("d")),u=Zn(i.as("M")),c=Zn(i.as("w")),d=Zn(i.as("y")),h=(o<=n.ss?["s",o]:o<n.s&&["ss",o])||a<=1&&["m"]||a<n.m&&["mm",a]||s<=1&&["h"]||s<n.h&&["hh",s]||l<=1&&["d"]||l<n.d&&["dd",l];return null!=n.w&&(h=h||c<=1&&["w"]||c<n.w&&["ww",c]),(h=h||u<=1&&["M"]||u<n.M&&["MM",u]||d<=1&&["y"]||["yy",d])[2]=t,h[3]=0<+e,h[4]=r,function(e,t,n,r,i){return i.relativeTime(t||1,!!n,e,r)}.apply(null,h)}var Jn=Math.abs;function Qn(e){return(0<e)-(e<0)||+e}function Kn(){if(!this.isValid())return this.localeData().invalidDate();var e,t,n,r,i,o,a,s,l=Jn(this._milliseconds)/1e3,u=Jn(this._days),c=Jn(this._months),d=this.asSeconds();return d?(e=z(l/60),t=z(e/60),l%=60,e%=60,n=z(c/12),c%=12,r=l?l.toFixed(3).replace(/\.?0+$/,""):"",i=d<0?"-":"",o=Qn(this._months)!==Qn(d)?"-":"",a=Qn(this._days)!==Qn(d)?"-":"",s=Qn(this._milliseconds)!==Qn(d)?"-":"",i+"P"+(n?o+n+"Y":"")+(c?o+c+"M":"")+(u?a+u+"D":"")+(t||e||l?"T":"")+(t?s+t+"H":"")+(e?s+e+"M":"")+(l?s+r+"S":"")):"P0D"}var er=Pt.prototype;return er.isValid=function(){return this._isValid},er.abs=function(){var e=this._data;return this._milliseconds=_n(this._milliseconds),this._days=_n(this._days),this._months=_n(this._months),e.milliseconds=_n(e.milliseconds),e.seconds=_n(e.seconds),e.minutes=_n(e.minutes),e.hours=_n(e.hours),e.months=_n(e.months),e.years=_n(e.years),this},er.add=function(e,t){return Cn(this,e,t,1)},er.subtract=function(e,t){return Cn(this,e,t,-1)},er.as=function(e){if(!this.isValid())return NaN;var t,n,r=this._milliseconds;if("month"===(e=j(e))||"quarter"===e||"year"===e)switch(t=this._days+r/864e5,n=this._months+Mn(t),e){case"month":return n;case"quarter":return n/3;case"year":return n/12}else switch(t=this._days+Math.round(kn(this._months)),e){case"week":return t/7+r/6048e5;case"day":return t+r/864e5;case"hour":return 24*t+r/36e5;case"minute":return 1440*t+r/6e4;case"second":return 86400*t+r/1e3;case"millisecond":return Math.floor(864e5*t)+r;default:throw new Error("Unknown unit "+e)}},er.asMilliseconds=In,er.asSeconds=Nn,er.asMinutes=On,er.asHours=Pn,er.asDays=Hn,er.asWeeks=Ln,er.asMonths=An,er.asQuarters=Yn,er.asYears=jn,er.valueOf=function(){return this.isValid()?this._milliseconds+864e5*this._days+this._months%12*2592e6+31536e6*B(this._months/12):NaN},er._bubble=function(){var e,t,n,r,i,o=this._milliseconds,a=this._days,s=this._months,l=this._data;return 0<=o&&0<=a&&0<=s||o<=0&&a<=0&&s<=0||(o+=864e5*xn(kn(s)+a),s=a=0),l.milliseconds=o%1e3,e=z(o/1e3),l.seconds=e%60,t=z(e/60),l.minutes=t%60,n=z(t/60),l.hours=n%24,a+=z(n/24),s+=i=z(Mn(a)),a-=xn(kn(i)),r=z(s/12),s%=12,l.days=a,l.months=s,l.years=r,this},er.clone=function(){return Bt(this)},er.get=function(e){return e=j(e),this.isValid()?this[e+"s"]():NaN},er.milliseconds=Wn,er.seconds=Vn,er.minutes=Fn,er.hours=zn,er.days=Bn,er.weeks=function(){return z(this.days()/7)},er.months=qn,er.years=Gn,er.humanize=function(e,t){if(!this.isValid())return this.localeData().invalidDate();var n,r,i=!1,o=Xn;return"object"==typeof e&&(t=e,e=!1),"boolean"==typeof e&&(i=e),"object"==typeof t&&(o=Object.assign({},Xn,t),null!=t.s&&null==t.ss&&(o.ss=t.s-1)),n=this.localeData(),r=$n(this,!i,o,n),i&&(r=n.pastFuture(+this,r)),n.postformat(r)},er.toISOString=Kn,er.toString=Kn,er.toJSON=Kn,er.locale=tn,er.localeData=rn,er.toIsoString=n("toIsoString() is deprecated. Please use toISOString() instead (notice the capitals)",Kn),er.lang=nn,P("X",0,0,"unix"),P("x",0,0,"valueOf"),he("x",le),he("X",/[+-]?\d+(\.\d{1,3})?/),ve("X",function(e,t,n){n._d=new Date(1e3*parseFloat(e))}),ve("x",function(e,t,n){n._d=new Date(B(e))}),f.version="2.26.0",e=kt,f.fn=Sn,f.min=function(){return Nt("isBefore",[].slice.call(arguments,0))},f.max=function(){return Nt("isAfter",[].slice.call(arguments,0))},f.now=function(){return Date.now?Date.now():+new Date},f.utc=g,f.unix=function(e){return kt(1e3*e)},f.months=function(e,t){return Dn(e,t,"months")},f.isDate=a,f.locale=ut,f.invalid=y,f.duration=Bt,f.isMoment=w,f.weekdays=function(e,t,n){return Tn(e,t,n,"weekdays")},f.parseZone=function(){return kt.apply(null,arguments).parseZone()},f.localeData=dt,f.isDuration=Ht,f.monthsShort=function(e,t){return Dn(e,t,"monthsShort")},f.weekdaysMin=function(e,t,n){return Tn(e,t,n,"weekdaysMin")},f.defineLocale=ct,f.updateLocale=function(e,t){var n,r,i;return null!=t?(i=rt,null!=it[e]&&null!=it[e].parentLocale?it[e].set(x(it[e]._config,t)):(null!=(r=lt(e))&&(i=r._config),t=x(i,t),null==r&&(t.abbr=e),(n=new M(t)).parentLocale=it[e],it[e]=n),ut(e)):null!=it[e]&&(null!=it[e].parentLocale?(it[e]=it[e].parentLocale,e===ut()&&ut(e)):null!=it[e]&&delete it[e]),it[e]},f.locales=function(){return r(it)},f.weekdaysShort=function(e,t,n){return Tn(e,t,n,"weekdaysShort")},f.normalizeUnits=j,f.relativeTimeRounding=function(e){return void 0===e?Zn:"function"==typeof e&&(Zn=e,!0)},f.relativeTimeThreshold=function(e,t){return void 0!==Xn[e]&&(void 0===t?Xn[e]:(Xn[e]=t,"s"===e&&(Xn.ss=t-1),!0))},f.calendarFormat=function(e,t){var n=e.diff(t,"days",!0);return n<-6?"sameElse":n<-1?"lastWeek":n<0?"lastDay":n<1?"sameDay":n<2?"nextDay":n<7?"nextWeek":"sameElse"},f.prototype=Sn,f.HTML5_FMT={DATETIME_LOCAL:"YYYY-MM-DDTHH:mm",DATETIME_LOCAL_SECONDS:"YYYY-MM-DDTHH:mm:ss",DATETIME_LOCAL_MS:"YYYY-MM-DDTHH:mm:ss.SSS",DATE:"YYYY-MM-DD",TIME:"HH:mm",TIME_SECONDS:"HH:mm:ss",TIME_MS:"HH:mm:ss.SSS",WEEK:"GGGG-[W]WW",MONTH:"YYYY-MM"},f}),function(e,t){"use strict";"object"==typeof module&&"object"==typeof module.exports?module.exports=e.document?t(e,!0):function(e){if(!e.document)throw new Error("jQuery requires a window with a document");return t(e)}:t(e)}("undefined"!=typeof window?window:this,function(D,e){"use strict";function g(e){return null!=e&&e===e.window}var t=[],r=Object.getPrototypeOf,s=t.slice,v=t.flat?function(e){return t.flat.call(e)}:function(e){return t.concat.apply([],e)},l=t.push,i=t.indexOf,n={},o=n.toString,m=n.hasOwnProperty,a=m.toString,u=a.call(Object),y={},S=function(e){return"function"==typeof e&&"number"!=typeof e.nodeType},T=D.document,c={type:!0,src:!0,nonce:!0,noModule:!0};function E(e,t,n){var r,i,o=(n=n||T).createElement("script");if(o.text=e,t)for(r in c)(i=t[r]||t.getAttribute&&t.getAttribute(r))&&o.setAttribute(r,i);n.head.appendChild(o).parentNode.removeChild(o)}function b(e){return null==e?e+"":"object"==typeof e||"function"==typeof e?n[o.call(e)]||"object":typeof e}var _=function(e,t){return new _.fn.init(e,t)};function d(e){var t=!!e&&"length"in e&&e.length,n=b(e);return!S(e)&&!g(e)&&("array"===n||0===t||"number"==typeof t&&0<t&&t-1 in e)}_.fn=_.prototype={jquery:"3.5.1",constructor:_,length:0,toArray:function(){return s.call(this)},get:function(e){return null==e?s.call(this):e<0?this[e+this.length]:this[e]},pushStack:function(e){var t=_.merge(this.constructor(),e);return t.prevObject=this,t},each:function(e){return _.each(this,e)},map:function(n){return this.pushStack(_.map(this,function(e,t){return n.call(e,t,e)}))},slice:function(){return this.pushStack(s.apply(this,arguments))},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},even:function(){return this.pushStack(_.grep(this,function(e,t){return(t+1)%2}))},odd:function(){return this.pushStack(_.grep(this,function(e,t){return t%2}))},eq:function(e){var t=this.length,n=+e+(e<0?t:0);return this.pushStack(0<=n&&n<t?[this[n]]:[])},end:function(){return this.prevObject||this.constructor()},push:l,sort:t.sort,splice:t.splice},_.extend=_.fn.extend=function(){var e,t,n,r,i,o,a=arguments[0]||{},s=1,l=arguments.length,u=!1;for("boolean"==typeof a&&(u=a,a=arguments[s]||{},s++),"object"==typeof a||S(a)||(a={}),s===l&&(a=this,s--);s<l;s++)if(null!=(e=arguments[s]))for(t in e)r=e[t],"__proto__"!==t&&a!==r&&(u&&r&&(_.isPlainObject(r)||(i=Array.isArray(r)))?(n=a[t],o=i&&!Array.isArray(n)?[]:i||_.isPlainObject(n)?n:{},i=!1,a[t]=_.extend(u,o,r)):void 0!==r&&(a[t]=r));return a},_.extend({expando:"jQuery"+("3.5.1"+Math.random()).replace(/\D/g,""),isReady:!0,error:function(e){throw new Error(e)},noop:function(){},isPlainObject:function(e){var t,n;return!(!e||"[object Object]"!==o.call(e))&&(!(t=r(e))||"function"==typeof(n=m.call(t,"constructor")&&t.constructor)&&a.call(n)===u)},isEmptyObject:function(e){var t;for(t in e)return!1;return!0},globalEval:function(e,t,n){E(e,{nonce:t&&t.nonce},n)},each:function(e,t){var n,r=0;if(d(e))for(n=e.length;r<n&&!1!==t.call(e[r],r,e[r]);r++);else for(r in e)if(!1===t.call(e[r],r,e[r]))break;return e},makeArray:function(e,t){var n=t||[];return null!=e&&(d(Object(e))?_.merge(n,"string"==typeof e?[e]:e):l.call(n,e)),n},inArray:function(e,t,n){return null==t?-1:i.call(t,e,n)},merge:function(e,t){for(var n=+t.length,r=0,i=e.length;r<n;r++)e[i++]=t[r];return e.length=i,e},grep:function(e,t,n){for(var r=[],i=0,o=e.length,a=!n;i<o;i++)!t(e[i],i)!=a&&r.push(e[i]);return r},map:function(e,t,n){var r,i,o=0,a=[];if(d(e))for(r=e.length;o<r;o++)null!=(i=t(e[o],o,n))&&a.push(i);else for(o in e)null!=(i=t(e[o],o,n))&&a.push(i);return v(a)},guid:1,support:y}),"function"==typeof Symbol&&(_.fn[Symbol.iterator]=t[Symbol.iterator]),_.each("Boolean Number String Function Array Date RegExp Object Error Symbol".split(" "),function(e,t){n["[object "+t+"]"]=t.toLowerCase()});var h=function(n){function d(e,t){var n="0x"+e.slice(1)-65536;return t||(n<0?String.fromCharCode(65536+n):String.fromCharCode(n>>10|55296,1023&n|56320))}function i(){w()}var e,f,E,o,a,p,h,g,b,l,u,w,D,s,T,v,c,m,y,_="sizzle"+ +new Date,S=n.document,C=0,r=0,x=le(),M=le(),k=le(),R=le(),I=function(e,t){return e===t&&(u=!0),0},N={}.hasOwnProperty,t=[],O=t.pop,P=t.push,H=t.push,L=t.slice,A=function(e,t){for(var n=0,r=e.length;n<r;n++)if(e[n]===t)return n;return-1},Y="checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",j="[\\x20\\t\\r\\n\\f]",U="(?:\\\\[\\da-fA-F]{1,6}"+j+"?|\\\\[^\\r\\n\\f]|[\\w-]|[^\0-\\x7f])+",W="\\["+j+"*("+U+")(?:"+j+"*([*^$|!~]?=)"+j+"*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|("+U+"))|)"+j+"*\\]",V=":("+U+")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|"+W+")*)|.*)\\)|)",F=new RegExp(j+"+","g"),z=new RegExp("^"+j+"+|((?:^|[^\\\\])(?:\\\\.)*)"+j+"+$","g"),B=new RegExp("^"+j+"*,"+j+"*"),q=new RegExp("^"+j+"*([>+~]|"+j+")"+j+"*"),G=new RegExp(j+"|>"),Z=new RegExp(V),X=new RegExp("^"+U+"$"),$={ID:new RegExp("^#("+U+")"),CLASS:new RegExp("^\\.("+U+")"),TAG:new RegExp("^("+U+"|[*])"),ATTR:new RegExp("^"+W),PSEUDO:new RegExp("^"+V),CHILD:new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\("+j+"*(even|odd|(([+-]|)(\\d*)n|)"+j+"*(?:([+-]|)"+j+"*(\\d+)|))"+j+"*\\)|)","i"),bool:new RegExp("^(?:"+Y+")$","i"),needsContext:new RegExp("^"+j+"*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\("+j+"*((?:-\\d)?\\d*)"+j+"*\\)|)(?=[^-]|$)","i")},J=/HTML$/i,Q=/^(?:input|select|textarea|button)$/i,K=/^h\d$/i,ee=/^[^{]+\{\s*\[native \w/,te=/^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,ne=/[+~]/,re=new RegExp("\\\\[\\da-fA-F]{1,6}"+j+"?|\\\\([^\\r\\n\\f])","g"),ie=/([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,oe=function(e,t){return t?"\0"===e?"�":e.slice(0,-1)+"\\"+e.charCodeAt(e.length-1).toString(16)+" ":"\\"+e},ae=ye(function(e){return!0===e.disabled&&"fieldset"===e.nodeName.toLowerCase()},{dir:"parentNode",next:"legend"});try{H.apply(t=L.call(S.childNodes),S.childNodes),t[S.childNodes.length].nodeType}catch(e){H={apply:t.length?function(e,t){P.apply(e,L.call(t))}:function(e,t){for(var n=e.length,r=0;e[n++]=t[r++];);e.length=n-1}}}function se(t,e,n,r){var i,o,a,s,l,u,c,d=e&&e.ownerDocument,h=e?e.nodeType:9;if(n=n||[],"string"!=typeof t||!t||1!==h&&9!==h&&11!==h)return n;if(!r&&(w(e),e=e||D,T)){if(11!==h&&(l=te.exec(t)))if(i=l[1]){if(9===h){if(!(a=e.getElementById(i)))return n;if(a.id===i)return n.push(a),n}else if(d&&(a=d.getElementById(i))&&y(e,a)&&a.id===i)return n.push(a),n}else{if(l[2])return H.apply(n,e.getElementsByTagName(t)),n;if((i=l[3])&&f.getElementsByClassName&&e.getElementsByClassName)return H.apply(n,e.getElementsByClassName(i)),n}if(f.qsa&&!R[t+" "]&&(!v||!v.test(t))&&(1!==h||"object"!==e.nodeName.toLowerCase())){if(c=t,d=e,1===h&&(G.test(t)||q.test(t))){for((d=ne.test(t)&&ge(e.parentNode)||e)===e&&f.scope||((s=e.getAttribute("id"))?s=s.replace(ie,oe):e.setAttribute("id",s=_)),o=(u=p(t)).length;o--;)u[o]=(s?"#"+s:":scope")+" "+me(u[o]);c=u.join(",")}try{return H.apply(n,d.querySelectorAll(c)),n}catch(e){R(t,!0)}finally{s===_&&e.removeAttribute("id")}}}return g(t.replace(z,"$1"),e,n,r)}function le(){var n=[];function r(e,t){return n.push(e+" ")>E.cacheLength&&delete r[n.shift()],r[e+" "]=t}return r}function ue(e){return e[_]=!0,e}function ce(e){var t=D.createElement("fieldset");try{return!!e(t)}catch(e){return!1}finally{t.parentNode&&t.parentNode.removeChild(t),t=null}}function de(e,t){for(var n=e.split("|"),r=n.length;r--;)E.attrHandle[n[r]]=t}function he(e,t){var n=t&&e,r=n&&1===e.nodeType&&1===t.nodeType&&e.sourceIndex-t.sourceIndex;if(r)return r;if(n)for(;n=n.nextSibling;)if(n===t)return-1;return e?1:-1}function fe(t){return function(e){return"form"in e?e.parentNode&&!1===e.disabled?"label"in e?"label"in e.parentNode?e.parentNode.disabled===t:e.disabled===t:e.isDisabled===t||e.isDisabled!==!t&&ae(e)===t:e.disabled===t:"label"in e&&e.disabled===t}}function pe(a){return ue(function(o){return o=+o,ue(function(e,t){for(var n,r=a([],e.length,o),i=r.length;i--;)e[n=r[i]]&&(e[n]=!(t[n]=e[n]))})})}function ge(e){return e&&void 0!==e.getElementsByTagName&&e}for(e in f=se.support={},a=se.isXML=function(e){var t=e.namespaceURI,n=(e.ownerDocument||e).documentElement;return!J.test(t||n&&n.nodeName||"HTML")},w=se.setDocument=function(e){var t,n,r=e?e.ownerDocument||e:S;return r!=D&&9===r.nodeType&&r.documentElement&&(s=(D=r).documentElement,T=!a(D),S!=D&&(n=D.defaultView)&&n.top!==n&&(n.addEventListener?n.addEventListener("unload",i,!1):n.attachEvent&&n.attachEvent("onunload",i)),f.scope=ce(function(e){return s.appendChild(e).appendChild(D.createElement("div")),void 0!==e.querySelectorAll&&!e.querySelectorAll(":scope fieldset div").length}),f.attributes=ce(function(e){return e.className="i",!e.getAttribute("className")}),f.getElementsByTagName=ce(function(e){return e.appendChild(D.createComment("")),!e.getElementsByTagName("*").length}),f.getElementsByClassName=ee.test(D.getElementsByClassName),f.getById=ce(function(e){return s.appendChild(e).id=_,!D.getElementsByName||!D.getElementsByName(_).length}),f.getById?(E.filter.ID=function(e){var t=e.replace(re,d);return function(e){return e.getAttribute("id")===t}},E.find.ID=function(e,t){if(void 0!==t.getElementById&&T){var n=t.getElementById(e);return n?[n]:[]}}):(E.filter.ID=function(e){var n=e.replace(re,d);return function(e){var t=void 0!==e.getAttributeNode&&e.getAttributeNode("id");return t&&t.value===n}},E.find.ID=function(e,t){if(void 0!==t.getElementById&&T){var n,r,i,o=t.getElementById(e);if(o){if((n=o.getAttributeNode("id"))&&n.value===e)return[o];for(i=t.getElementsByName(e),r=0;o=i[r++];)if((n=o.getAttributeNode("id"))&&n.value===e)return[o]}return[]}}),E.find.TAG=f.getElementsByTagName?function(e,t){return void 0!==t.getElementsByTagName?t.getElementsByTagName(e):f.qsa?t.querySelectorAll(e):void 0}:function(e,t){var n,r=[],i=0,o=t.getElementsByTagName(e);if("*"!==e)return o;for(;n=o[i++];)1===n.nodeType&&r.push(n);return r},E.find.CLASS=f.getElementsByClassName&&function(e,t){if(void 0!==t.getElementsByClassName&&T)return t.getElementsByClassName(e)},c=[],v=[],(f.qsa=ee.test(D.querySelectorAll))&&(ce(function(e){var t;s.appendChild(e).innerHTML="<a id='"+_+"'></a><select id='"+_+"-\r\\' msallowcapture=''><option selected=''></option></select>",e.querySelectorAll("[msallowcapture^='']").length&&v.push("[*^$]="+j+"*(?:''|\"\")"),e.querySelectorAll("[selected]").length||v.push("\\["+j+"*(?:value|"+Y+")"),e.querySelectorAll("[id~="+_+"-]").length||v.push("~="),(t=D.createElement("input")).setAttribute("name",""),e.appendChild(t),e.querySelectorAll("[name='']").length||v.push("\\["+j+"*name"+j+"*="+j+"*(?:''|\"\")"),e.querySelectorAll(":checked").length||v.push(":checked"),e.querySelectorAll("a#"+_+"+*").length||v.push(".#.+[+~]"),e.querySelectorAll("\\\f"),v.push("[\\r\\n\\f]")}),ce(function(e){e.innerHTML="<a href='' disabled='disabled'></a><select disabled='disabled'><option/></select>";var t=D.createElement("input");t.setAttribute("type","hidden"),e.appendChild(t).setAttribute("name","D"),e.querySelectorAll("[name=d]").length&&v.push("name"+j+"*[*^$|!~]?="),2!==e.querySelectorAll(":enabled").length&&v.push(":enabled",":disabled"),s.appendChild(e).disabled=!0,2!==e.querySelectorAll(":disabled").length&&v.push(":enabled",":disabled"),e.querySelectorAll("*,:x"),v.push(",.*:")})),(f.matchesSelector=ee.test(m=s.matches||s.webkitMatchesSelector||s.mozMatchesSelector||s.oMatchesSelector||s.msMatchesSelector))&&ce(function(e){f.disconnectedMatch=m.call(e,"*"),m.call(e,"[s!='']:x"),c.push("!=",V)}),v=v.length&&new RegExp(v.join("|")),c=c.length&&new RegExp(c.join("|")),t=ee.test(s.compareDocumentPosition),y=t||ee.test(s.contains)?function(e,t){var n=9===e.nodeType?e.documentElement:e,r=t&&t.parentNode;return e===r||!(!r||1!==r.nodeType||!(n.contains?n.contains(r):e.compareDocumentPosition&&16&e.compareDocumentPosition(r)))}:function(e,t){if(t)for(;t=t.parentNode;)if(t===e)return!0;return!1},I=t?function(e,t){if(e===t)return u=!0,0;var n=!e.compareDocumentPosition-!t.compareDocumentPosition;return n||(1&(n=(e.ownerDocument||e)==(t.ownerDocument||t)?e.compareDocumentPosition(t):1)||!f.sortDetached&&t.compareDocumentPosition(e)===n?e==D||e.ownerDocument==S&&y(S,e)?-1:t==D||t.ownerDocument==S&&y(S,t)?1:l?A(l,e)-A(l,t):0:4&n?-1:1)}:function(e,t){if(e===t)return u=!0,0;var n,r=0,i=e.parentNode,o=t.parentNode,a=[e],s=[t];if(!i||!o)return e==D?-1:t==D?1:i?-1:o?1:l?A(l,e)-A(l,t):0;if(i===o)return he(e,t);for(n=e;n=n.parentNode;)a.unshift(n);for(n=t;n=n.parentNode;)s.unshift(n);for(;a[r]===s[r];)r++;return r?he(a[r],s[r]):a[r]==S?-1:s[r]==S?1:0}),D},se.matches=function(e,t){return se(e,null,null,t)},se.matchesSelector=function(e,t){if(w(e),f.matchesSelector&&T&&!R[t+" "]&&(!c||!c.test(t))&&(!v||!v.test(t)))try{var n=m.call(e,t);if(n||f.disconnectedMatch||e.document&&11!==e.document.nodeType)return n}catch(e){R(t,!0)}return 0<se(t,D,null,[e]).length},se.contains=function(e,t){return(e.ownerDocument||e)!=D&&w(e),y(e,t)},se.attr=function(e,t){(e.ownerDocument||e)!=D&&w(e);var n=E.attrHandle[t.toLowerCase()],r=n&&N.call(E.attrHandle,t.toLowerCase())?n(e,t,!T):void 0;return void 0!==r?r:f.attributes||!T?e.getAttribute(t):(r=e.getAttributeNode(t))&&r.specified?r.value:null},se.escape=function(e){return(e+"").replace(ie,oe)},se.error=function(e){throw new Error("Syntax error, unrecognized expression: "+e)},se.uniqueSort=function(e){var t,n=[],r=0,i=0;if(u=!f.detectDuplicates,l=!f.sortStable&&e.slice(0),e.sort(I),u){for(;t=e[i++];)t===e[i]&&(r=n.push(i));for(;r--;)e.splice(n[r],1)}return l=null,e},o=se.getText=function(e){var t,n="",r=0,i=e.nodeType;if(i){if(1===i||9===i||11===i){if("string"==typeof e.textContent)return e.textContent;for(e=e.firstChild;e;e=e.nextSibling)n+=o(e)}else if(3===i||4===i)return e.nodeValue}else for(;t=e[r++];)n+=o(t);return n},(E=se.selectors={cacheLength:50,createPseudo:ue,match:$,attrHandle:{},find:{},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(e){return e[1]=e[1].replace(re,d),e[3]=(e[3]||e[4]||e[5]||"").replace(re,d),"~="===e[2]&&(e[3]=" "+e[3]+" "),e.slice(0,4)},CHILD:function(e){return e[1]=e[1].toLowerCase(),"nth"===e[1].slice(0,3)?(e[3]||se.error(e[0]),e[4]=+(e[4]?e[5]+(e[6]||1):2*("even"===e[3]||"odd"===e[3])),e[5]=+(e[7]+e[8]||"odd"===e[3])):e[3]&&se.error(e[0]),e},PSEUDO:function(e){var t,n=!e[6]&&e[2];return $.CHILD.test(e[0])?null:(e[3]?e[2]=e[4]||e[5]||"":n&&Z.test(n)&&(t=p(n,!0))&&(t=n.indexOf(")",n.length-t)-n.length)&&(e[0]=e[0].slice(0,t),e[2]=n.slice(0,t)),e.slice(0,3))}},filter:{TAG:function(e){var t=e.replace(re,d).toLowerCase();return"*"===e?function(){return!0}:function(e){return e.nodeName&&e.nodeName.toLowerCase()===t}},CLASS:function(e){var t=x[e+" "];return t||(t=new RegExp("(^|"+j+")"+e+"("+j+"|$)"))&&x(e,function(e){return t.test("string"==typeof e.className&&e.className||void 0!==e.getAttribute&&e.getAttribute("class")||"")})},ATTR:function(n,r,i){return function(e){var t=se.attr(e,n);return null==t?"!="===r:!r||(t+="","="===r?t===i:"!="===r?t!==i:"^="===r?i&&0===t.indexOf(i):"*="===r?i&&-1<t.indexOf(i):"$="===r?i&&t.slice(-i.length)===i:"~="===r?-1<(" "+t.replace(F," ")+" ").indexOf(i):"|="===r&&(t===i||t.slice(0,i.length+1)===i+"-"))}},CHILD:function(p,e,t,g,v){var m="nth"!==p.slice(0,3),y="last"!==p.slice(-4),S="of-type"===e;return 1===g&&0===v?function(e){return!!e.parentNode}:function(e,t,n){var r,i,o,a,s,l,u=m!=y?"nextSibling":"previousSibling",c=e.parentNode,d=S&&e.nodeName.toLowerCase(),h=!n&&!S,f=!1;if(c){if(m){for(;u;){for(a=e;a=a[u];)if(S?a.nodeName.toLowerCase()===d:1===a.nodeType)return!1;l=u="only"===p&&!l&&"nextSibling"}return!0}if(l=[y?c.firstChild:c.lastChild],y&&h){for(f=(s=(r=(i=(o=(a=c)[_]||(a[_]={}))[a.uniqueID]||(o[a.uniqueID]={}))[p]||[])[0]===C&&r[1])&&r[2],a=s&&c.childNodes[s];a=++s&&a&&a[u]||(f=s=0)||l.pop();)if(1===a.nodeType&&++f&&a===e){i[p]=[C,s,f];break}}else if(h&&(f=s=(r=(i=(o=(a=e)[_]||(a[_]={}))[a.uniqueID]||(o[a.uniqueID]={}))[p]||[])[0]===C&&r[1]),!1===f)for(;(a=++s&&a&&a[u]||(f=s=0)||l.pop())&&((S?a.nodeName.toLowerCase()!==d:1!==a.nodeType)||!++f||(h&&((i=(o=a[_]||(a[_]={}))[a.uniqueID]||(o[a.uniqueID]={}))[p]=[C,f]),a!==e)););return(f-=v)===g||f%g==0&&0<=f/g}}},PSEUDO:function(e,o){var t,a=E.pseudos[e]||E.setFilters[e.toLowerCase()]||se.error("unsupported pseudo: "+e);return a[_]?a(o):1<a.length?(t=[e,e,"",o],E.setFilters.hasOwnProperty(e.toLowerCase())?ue(function(e,t){for(var n,r=a(e,o),i=r.length;i--;)e[n=A(e,r[i])]=!(t[n]=r[i])}):function(e){return a(e,0,t)}):a}},pseudos:{not:ue(function(e){var r=[],i=[],s=h(e.replace(z,"$1"));return s[_]?ue(function(e,t,n,r){for(var i,o=s(e,null,r,[]),a=e.length;a--;)(i=o[a])&&(e[a]=!(t[a]=i))}):function(e,t,n){return r[0]=e,s(r,null,n,i),r[0]=null,!i.pop()}}),has:ue(function(t){return function(e){return 0<se(t,e).length}}),contains:ue(function(t){return t=t.replace(re,d),function(e){return-1<(e.textContent||o(e)).indexOf(t)}}),lang:ue(function(n){return X.test(n||"")||se.error("unsupported lang: "+n),n=n.replace(re,d).toLowerCase(),function(e){var t;do{if(t=T?e.lang:e.getAttribute("xml:lang")||e.getAttribute("lang"))return(t=t.toLowerCase())===n||0===t.indexOf(n+"-")}while((e=e.parentNode)&&1===e.nodeType);return!1}}),target:function(e){var t=n.location&&n.location.hash;return t&&t.slice(1)===e.id},root:function(e){return e===s},focus:function(e){return e===D.activeElement&&(!D.hasFocus||D.hasFocus())&&!!(e.type||e.href||~e.tabIndex)},enabled:fe(!1),disabled:fe(!0),checked:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&!!e.checked||"option"===t&&!!e.selected},selected:function(e){return e.parentNode&&e.parentNode.selectedIndex,!0===e.selected},empty:function(e){for(e=e.firstChild;e;e=e.nextSibling)if(e.nodeType<6)return!1;return!0},parent:function(e){return!E.pseudos.empty(e)},header:function(e){return K.test(e.nodeName)},input:function(e){return Q.test(e.nodeName)},button:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&"button"===e.type||"button"===t},text:function(e){var t;return"input"===e.nodeName.toLowerCase()&&"text"===e.type&&(null==(t=e.getAttribute("type"))||"text"===t.toLowerCase())},first:pe(function(){return[0]}),last:pe(function(e,t){return[t-1]}),eq:pe(function(e,t,n){return[n<0?n+t:n]}),even:pe(function(e,t){for(var n=0;n<t;n+=2)e.push(n);return e}),odd:pe(function(e,t){for(var n=1;n<t;n+=2)e.push(n);return e}),lt:pe(function(e,t,n){for(var r=n<0?n+t:t<n?t:n;0<=--r;)e.push(r);return e}),gt:pe(function(e,t,n){for(var r=n<0?n+t:n;++r<t;)e.push(r);return e})}}).pseudos.nth=E.pseudos.eq,{radio:!0,checkbox:!0,file:!0,password:!0,image:!0})E.pseudos[e]=function(t){return function(e){return"input"===e.nodeName.toLowerCase()&&e.type===t}}(e);for(e in{submit:!0,reset:!0})E.pseudos[e]=function(n){return function(e){var t=e.nodeName.toLowerCase();return("input"===t||"button"===t)&&e.type===n}}(e);function ve(){}function me(e){for(var t=0,n=e.length,r="";t<n;t++)r+=e[t].value;return r}function ye(s,e,t){var l=e.dir,u=e.next,c=u||l,d=t&&"parentNode"===c,h=r++;return e.first?function(e,t,n){for(;e=e[l];)if(1===e.nodeType||d)return s(e,t,n);return!1}:function(e,t,n){var r,i,o,a=[C,h];if(n){for(;e=e[l];)if((1===e.nodeType||d)&&s(e,t,n))return!0}else for(;e=e[l];)if(1===e.nodeType||d)if(i=(o=e[_]||(e[_]={}))[e.uniqueID]||(o[e.uniqueID]={}),u&&u===e.nodeName.toLowerCase())e=e[l]||e;else{if((r=i[c])&&r[0]===C&&r[1]===h)return a[2]=r[2];if((i[c]=a)[2]=s(e,t,n))return!0}return!1}}function Se(i){return 1<i.length?function(e,t,n){for(var r=i.length;r--;)if(!i[r](e,t,n))return!1;return!0}:i[0]}function Ee(e,t,n,r,i){for(var o,a=[],s=0,l=e.length,u=null!=t;s<l;s++)(o=e[s])&&(n&&!n(o,r,i)||(a.push(o),u&&t.push(s)));return a}function be(f,p,g,v,m,e){return v&&!v[_]&&(v=be(v)),m&&!m[_]&&(m=be(m,e)),ue(function(e,t,n,r){var i,o,a,s=[],l=[],u=t.length,c=e||function(e,t,n){for(var r=0,i=t.length;r<i;r++)se(e,t[r],n);return n}(p||"*",n.nodeType?[n]:n,[]),d=!f||!e&&p?c:Ee(c,s,f,n,r),h=g?m||(e?f:u||v)?[]:t:d;if(g&&g(d,h,n,r),v)for(i=Ee(h,l),v(i,[],n,r),o=i.length;o--;)(a=i[o])&&(h[l[o]]=!(d[l[o]]=a));if(e){if(m||f){if(m){for(i=[],o=h.length;o--;)(a=h[o])&&i.push(d[o]=a);m(null,h=[],i,r)}for(o=h.length;o--;)(a=h[o])&&-1<(i=m?A(e,a):s[o])&&(e[i]=!(t[i]=a))}}else h=Ee(h===t?h.splice(u,h.length):h),m?m(null,t,h,r):H.apply(t,h)})}function we(v,m){function e(e,t,n,r,i){var o,a,s,l=0,u="0",c=e&&[],d=[],h=b,f=e||S&&E.find.TAG("*",i),p=C+=null==h?1:Math.random()||.1,g=f.length;for(i&&(b=t==D||t||i);u!==g&&null!=(o=f[u]);u++){if(S&&o){for(a=0,t||o.ownerDocument==D||(w(o),n=!T);s=v[a++];)if(s(o,t||D,n)){r.push(o);break}i&&(C=p)}y&&((o=!s&&o)&&l--,e&&c.push(o))}if(l+=u,y&&u!==l){for(a=0;s=m[a++];)s(c,d,t,n);if(e){if(0<l)for(;u--;)c[u]||d[u]||(d[u]=O.call(r));d=Ee(d)}H.apply(r,d),i&&!e&&0<d.length&&1<l+m.length&&se.uniqueSort(r)}return i&&(C=p,b=h),c}var y=0<m.length,S=0<v.length;return y?ue(e):e}return ve.prototype=E.filters=E.pseudos,E.setFilters=new ve,p=se.tokenize=function(e,t){var n,r,i,o,a,s,l,u=M[e+" "];if(u)return t?0:u.slice(0);for(a=e,s=[],l=E.preFilter;a;){for(o in n&&!(r=B.exec(a))||(r&&(a=a.slice(r[0].length)||a),s.push(i=[])),n=!1,(r=q.exec(a))&&(n=r.shift(),i.push({value:n,type:r[0].replace(z," ")}),a=a.slice(n.length)),E.filter)!(r=$[o].exec(a))||l[o]&&!(r=l[o](r))||(n=r.shift(),i.push({value:n,type:o,matches:r}),a=a.slice(n.length));if(!n)break}return t?a.length:a?se.error(e):M(e,s).slice(0)},h=se.compile=function(e,t){var n,r=[],i=[],o=k[e+" "];if(!o){for(n=(t=t||p(e)).length;n--;)(o=function e(t){for(var i,n,r,o=t.length,a=E.relative[t[0].type],s=a||E.relative[" "],l=a?1:0,u=ye(function(e){return e===i},s,!0),c=ye(function(e){return-1<A(i,e)},s,!0),d=[function(e,t,n){var r=!a&&(n||t!==b)||((i=t).nodeType?u:c)(e,t,n);return i=null,r}];l<o;l++)if(n=E.relative[t[l].type])d=[ye(Se(d),n)];else{if((n=E.filter[t[l].type].apply(null,t[l].matches))[_]){for(r=++l;r<o&&!E.relative[t[r].type];r++);return be(1<l&&Se(d),1<l&&me(t.slice(0,l-1).concat({value:" "===t[l-2].type?"*":""})).replace(z,"$1"),n,l<r&&e(t.slice(l,r)),r<o&&e(t=t.slice(r)),r<o&&me(t))}d.push(n)}return Se(d)}(t[n]))[_]?r.push(o):i.push(o);(o=k(e,we(i,r))).selector=e}return o},g=se.select=function(e,t,n,r){var i,o,a,s,l,u="function"==typeof e&&e,c=!r&&p(e=u.selector||e);if(n=n||[],1===c.length){if(2<(o=c[0]=c[0].slice(0)).length&&"ID"===(a=o[0]).type&&9===t.nodeType&&T&&E.relative[o[1].type]){if(!(t=(E.find.ID(a.matches[0].replace(re,d),t)||[])[0]))return n;u&&(t=t.parentNode),e=e.slice(o.shift().value.length)}for(i=$.needsContext.test(e)?0:o.length;i--&&(a=o[i],!E.relative[s=a.type]);)if((l=E.find[s])&&(r=l(a.matches[0].replace(re,d),ne.test(o[0].type)&&ge(t.parentNode)||t))){if(o.splice(i,1),!(e=r.length&&me(o)))return H.apply(n,r),n;break}}return(u||h(e,c))(r,t,!T,n,!t||ne.test(e)&&ge(t.parentNode)||t),n},f.sortStable=_.split("").sort(I).join("")===_,f.detectDuplicates=!!u,w(),f.sortDetached=ce(function(e){return 1&e.compareDocumentPosition(D.createElement("fieldset"))}),ce(function(e){return e.innerHTML="<a href='#'></a>","#"===e.firstChild.getAttribute("href")})||de("type|href|height|width",function(e,t,n){if(!n)return e.getAttribute(t,"type"===t.toLowerCase()?1:2)}),f.attributes&&ce(function(e){return e.innerHTML="<input/>",e.firstChild.setAttribute("value",""),""===e.firstChild.getAttribute("value")})||de("value",function(e,t,n){if(!n&&"input"===e.nodeName.toLowerCase())return e.defaultValue}),ce(function(e){return null==e.getAttribute("disabled")})||de(Y,function(e,t,n){var r;if(!n)return!0===e[t]?t.toLowerCase():(r=e.getAttributeNode(t))&&r.specified?r.value:null}),se}(D);_.find=h,_.expr=h.selectors,_.expr[":"]=_.expr.pseudos,_.uniqueSort=_.unique=h.uniqueSort,_.text=h.getText,_.isXMLDoc=h.isXML,_.contains=h.contains,_.escapeSelector=h.escape;function f(e,t,n){for(var r=[],i=void 0!==n;(e=e[t])&&9!==e.nodeType;)if(1===e.nodeType){if(i&&_(e).is(n))break;r.push(e)}return r}function p(e,t){for(var n=[];e;e=e.nextSibling)1===e.nodeType&&e!==t&&n.push(e);return n}var w=_.expr.match.needsContext;function C(e,t){return e.nodeName&&e.nodeName.toLowerCase()===t.toLowerCase()}var x=/^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?:<\/\1>|)$/i;function M(e,n,r){return S(n)?_.grep(e,function(e,t){return!!n.call(e,t,e)!==r}):n.nodeType?_.grep(e,function(e){return e===n!==r}):"string"!=typeof n?_.grep(e,function(e){return-1<i.call(n,e)!==r}):_.filter(n,e,r)}_.filter=function(e,t,n){var r=t[0];return n&&(e=":not("+e+")"),1===t.length&&1===r.nodeType?_.find.matchesSelector(r,e)?[r]:[]:_.find.matches(e,_.grep(t,function(e){return 1===e.nodeType}))},_.fn.extend({find:function(e){var t,n,r=this.length,i=this;if("string"!=typeof e)return this.pushStack(_(e).filter(function(){for(t=0;t<r;t++)if(_.contains(i[t],this))return!0}));for(n=this.pushStack([]),t=0;t<r;t++)_.find(e,i[t],n);return 1<r?_.uniqueSort(n):n},filter:function(e){return this.pushStack(M(this,e||[],!1))},not:function(e){return this.pushStack(M(this,e||[],!0))},is:function(e){return!!M(this,"string"==typeof e&&w.test(e)?_(e):e||[],!1).length}});var k,R=/^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;(_.fn.init=function(e,t,n){var r,i;if(!e)return this;if(n=n||k,"string"!=typeof e)return e.nodeType?(this[0]=e,this.length=1,this):S(e)?void 0!==n.ready?n.ready(e):e(_):_.makeArray(e,this);if(!(r="<"===e[0]&&">"===e[e.length-1]&&3<=e.length?[null,e,null]:R.exec(e))||!r[1]&&t)return!t||t.jquery?(t||n).find(e):this.constructor(t).find(e);if(r[1]){if(t=t instanceof _?t[0]:t,_.merge(this,_.parseHTML(r[1],t&&t.nodeType?t.ownerDocument||t:T,!0)),x.test(r[1])&&_.isPlainObject(t))for(r in t)S(this[r])?this[r](t[r]):this.attr(r,t[r]);return this}return(i=T.getElementById(r[2]))&&(this[0]=i,this.length=1),this}).prototype=_.fn,k=_(T);var I=/^(?:parents|prev(?:Until|All))/,N={children:!0,contents:!0,next:!0,prev:!0};function O(e,t){for(;(e=e[t])&&1!==e.nodeType;);return e}_.fn.extend({has:function(e){var t=_(e,this),n=t.length;return this.filter(function(){for(var e=0;e<n;e++)if(_.contains(this,t[e]))return!0})},closest:function(e,t){var n,r=0,i=this.length,o=[],a="string"!=typeof e&&_(e);if(!w.test(e))for(;r<i;r++)for(n=this[r];n&&n!==t;n=n.parentNode)if(n.nodeType<11&&(a?-1<a.index(n):1===n.nodeType&&_.find.matchesSelector(n,e))){o.push(n);break}return this.pushStack(1<o.length?_.uniqueSort(o):o)},index:function(e){return e?"string"==typeof e?i.call(_(e),this[0]):i.call(this,e.jquery?e[0]:e):this[0]&&this[0].parentNode?this.first().prevAll().length:-1},add:function(e,t){return this.pushStack(_.uniqueSort(_.merge(this.get(),_(e,t))))},addBack:function(e){return this.add(null==e?this.prevObject:this.prevObject.filter(e))}}),_.each({parent:function(e){var t=e.parentNode;return t&&11!==t.nodeType?t:null},parents:function(e){return f(e,"parentNode")},parentsUntil:function(e,t,n){return f(e,"parentNode",n)},next:function(e){return O(e,"nextSibling")},prev:function(e){return O(e,"previousSibling")},nextAll:function(e){return f(e,"nextSibling")},prevAll:function(e){return f(e,"previousSibling")},nextUntil:function(e,t,n){return f(e,"nextSibling",n)},prevUntil:function(e,t,n){return f(e,"previousSibling",n)},siblings:function(e){return p((e.parentNode||{}).firstChild,e)},children:function(e){return p(e.firstChild)},contents:function(e){return null!=e.contentDocument&&r(e.contentDocument)?e.contentDocument:(C(e,"template")&&(e=e.content||e),_.merge([],e.childNodes))}},function(r,i){_.fn[r]=function(e,t){var n=_.map(this,i,e);return"Until"!==r.slice(-5)&&(t=e),t&&"string"==typeof t&&(n=_.filter(t,n)),1<this.length&&(N[r]||_.uniqueSort(n),I.test(r)&&n.reverse()),this.pushStack(n)}});var P=/[^\x20\t\r\n\f]+/g;function H(e){return e}function L(e){throw e}function A(e,t,n,r){var i;try{e&&S(i=e.promise)?i.call(e).done(t).fail(n):e&&S(i=e.then)?i.call(e,t,n):t.apply(void 0,[e].slice(r))}catch(e){n.apply(void 0,[e])}}_.Callbacks=function(r){var e,n;r="string"==typeof r?(e=r,n={},_.each(e.match(P)||[],function(e,t){n[t]=!0}),n):_.extend({},r);function i(){for(s=s||r.once,a=o=!0;u.length;c=-1)for(t=u.shift();++c<l.length;)!1===l[c].apply(t[0],t[1])&&r.stopOnFalse&&(c=l.length,t=!1);r.memory||(t=!1),o=!1,s&&(l=t?[]:"")}var o,t,a,s,l=[],u=[],c=-1,d={add:function(){return l&&(t&&!o&&(c=l.length-1,u.push(t)),function n(e){_.each(e,function(e,t){S(t)?r.unique&&d.has(t)||l.push(t):t&&t.length&&"string"!==b(t)&&n(t)})}(arguments),t&&!o&&i()),this},remove:function(){return _.each(arguments,function(e,t){for(var n;-1<(n=_.inArray(t,l,n));)l.splice(n,1),n<=c&&c--}),this},has:function(e){return e?-1<_.inArray(e,l):0<l.length},empty:function(){return l=l&&[],this},disable:function(){return s=u=[],l=t="",this},disabled:function(){return!l},lock:function(){return s=u=[],t||o||(l=t=""),this},locked:function(){return!!s},fireWith:function(e,t){return s||(t=[e,(t=t||[]).slice?t.slice():t],u.push(t),o||i()),this},fire:function(){return d.fireWith(this,arguments),this},fired:function(){return!!a}};return d},_.extend({Deferred:function(e){var o=[["notify","progress",_.Callbacks("memory"),_.Callbacks("memory"),2],["resolve","done",_.Callbacks("once memory"),_.Callbacks("once memory"),0,"resolved"],["reject","fail",_.Callbacks("once memory"),_.Callbacks("once memory"),1,"rejected"]],i="pending",a={state:function(){return i},always:function(){return s.done(arguments).fail(arguments),this},catch:function(e){return a.then(null,e)},pipe:function(){var i=arguments;return _.Deferred(function(r){_.each(o,function(e,t){var n=S(i[t[4]])&&i[t[4]];s[t[1]](function(){var e=n&&n.apply(this,arguments);e&&S(e.promise)?e.promise().progress(r.notify).done(r.resolve).fail(r.reject):r[t[0]+"With"](this,n?[e]:arguments)})}),i=null}).promise()},then:function(t,n,r){var l=0;function u(i,o,a,s){return function(){function e(){var e,t;if(!(i<l)){if((e=a.apply(n,r))===o.promise())throw new TypeError("Thenable self-resolution");t=e&&("object"==typeof e||"function"==typeof e)&&e.then,S(t)?s?t.call(e,u(l,o,H,s),u(l,o,L,s)):(l++,t.call(e,u(l,o,H,s),u(l,o,L,s),u(l,o,H,o.notifyWith))):(a!==H&&(n=void 0,r=[e]),(s||o.resolveWith)(n,r))}}var n=this,r=arguments,t=s?e:function(){try{e()}catch(e){_.Deferred.exceptionHook&&_.Deferred.exceptionHook(e,t.stackTrace),l<=i+1&&(a!==L&&(n=void 0,r=[e]),o.rejectWith(n,r))}};i?t():(_.Deferred.getStackHook&&(t.stackTrace=_.Deferred.getStackHook()),D.setTimeout(t))}}return _.Deferred(function(e){o[0][3].add(u(0,e,S(r)?r:H,e.notifyWith)),o[1][3].add(u(0,e,S(t)?t:H)),o[2][3].add(u(0,e,S(n)?n:L))}).promise()},promise:function(e){return null!=e?_.extend(e,a):a}},s={};return _.each(o,function(e,t){var n=t[2],r=t[5];a[t[1]]=n.add,r&&n.add(function(){i=r},o[3-e][2].disable,o[3-e][3].disable,o[0][2].lock,o[0][3].lock),n.add(t[3].fire),s[t[0]]=function(){return s[t[0]+"With"](this===s?void 0:this,arguments),this},s[t[0]+"With"]=n.fireWith}),a.promise(s),e&&e.call(s,s),s},when:function(e){function t(t){return function(e){i[t]=this,o[t]=1<arguments.length?s.call(arguments):e,--n||a.resolveWith(i,o)}}var n=arguments.length,r=n,i=Array(r),o=s.call(arguments),a=_.Deferred();if(n<=1&&(A(e,a.done(t(r)).resolve,a.reject,!n),"pending"===a.state()||S(o[r]&&o[r].then)))return a.then();for(;r--;)A(o[r],t(r),a.reject);return a.promise()}});var Y=/^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;_.Deferred.exceptionHook=function(e,t){D.console&&D.console.warn&&e&&Y.test(e.name)&&D.console.warn("jQuery.Deferred exception: "+e.message,e.stack,t)},_.readyException=function(e){D.setTimeout(function(){throw e})};var j=_.Deferred();function U(){T.removeEventListener("DOMContentLoaded",U),D.removeEventListener("load",U),_.ready()}_.fn.ready=function(e){return j.then(e).catch(function(e){_.readyException(e)}),this},_.extend({isReady:!1,readyWait:1,ready:function(e){(!0===e?--_.readyWait:_.isReady)||(_.isReady=!0)!==e&&0<--_.readyWait||j.resolveWith(T,[_])}}),_.ready.then=j.then,"complete"===T.readyState||"loading"!==T.readyState&&!T.documentElement.doScroll?D.setTimeout(_.ready):(T.addEventListener("DOMContentLoaded",U),D.addEventListener("load",U));var W=function(e,t,n,r,i,o,a){var s=0,l=e.length,u=null==n;if("object"===b(n))for(s in i=!0,n)W(e,t,s,n[s],!0,o,a);else if(void 0!==r&&(i=!0,S(r)||(a=!0),u&&(t=a?(t.call(e,r),null):(u=t,function(e,t,n){return u.call(_(e),n)})),t))for(;s<l;s++)t(e[s],n,a?r:r.call(e[s],s,t(e[s],n)));return i?e:u?t.call(e):l?t(e[0],n):o},V=/^-ms-/,F=/-([a-z])/g;function z(e,t){return t.toUpperCase()}function B(e){return e.replace(V,"ms-").replace(F,z)}function q(e){return 1===e.nodeType||9===e.nodeType||!+e.nodeType}function G(){this.expando=_.expando+G.uid++}G.uid=1,G.prototype={cache:function(e){var t=e[this.expando];return t||(t={},q(e)&&(e.nodeType?e[this.expando]=t:Object.defineProperty(e,this.expando,{value:t,configurable:!0}))),t},set:function(e,t,n){var r,i=this.cache(e);if("string"==typeof t)i[B(t)]=n;else for(r in t)i[B(r)]=t[r];return i},get:function(e,t){return void 0===t?this.cache(e):e[this.expando]&&e[this.expando][B(t)]},access:function(e,t,n){return void 0===t||t&&"string"==typeof t&&void 0===n?this.get(e,t):(this.set(e,t,n),void 0!==n?n:t)},remove:function(e,t){var n,r=e[this.expando];if(void 0!==r){if(void 0!==t){n=(t=Array.isArray(t)?t.map(B):(t=B(t))in r?[t]:t.match(P)||[]).length;for(;n--;)delete r[t[n]]}void 0!==t&&!_.isEmptyObject(r)||(e.nodeType?e[this.expando]=void 0:delete e[this.expando])}},hasData:function(e){var t=e[this.expando];return void 0!==t&&!_.isEmptyObject(t)}};var Z=new G,X=new G,$=/^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,J=/[A-Z]/g;function Q(e,t,n){var r,i;if(void 0===n&&1===e.nodeType)if(r="data-"+t.replace(J,"-$&").toLowerCase(),"string"==typeof(n=e.getAttribute(r))){try{n="true"===(i=n)||"false"!==i&&("null"===i?null:i===+i+""?+i:$.test(i)?JSON.parse(i):i)}catch(e){}X.set(e,t,n)}else n=void 0;return n}_.extend({hasData:function(e){return X.hasData(e)||Z.hasData(e)},data:function(e,t,n){return X.access(e,t,n)},removeData:function(e,t){X.remove(e,t)},_data:function(e,t,n){return Z.access(e,t,n)},_removeData:function(e,t){Z.remove(e,t)}}),_.fn.extend({data:function(n,e){var t,r,i,o=this[0],a=o&&o.attributes;if(void 0!==n)return"object"==typeof n?this.each(function(){X.set(this,n)}):W(this,function(e){var t;return o&&void 0===e?void 0!==(t=X.get(o,n))||void 0!==(t=Q(o,n))?t:void 0:void this.each(function(){X.set(this,n,e)})},null,e,1<arguments.length,null,!0);if(this.length&&(i=X.get(o),1===o.nodeType&&!Z.get(o,"hasDataAttrs"))){for(t=a.length;t--;)a[t]&&0===(r=a[t].name).indexOf("data-")&&(r=B(r.slice(5)),Q(o,r,i[r]));Z.set(o,"hasDataAttrs",!0)}return i},removeData:function(e){return this.each(function(){X.remove(this,e)})}}),_.extend({queue:function(e,t,n){var r;if(e)return t=(t||"fx")+"queue",r=Z.get(e,t),n&&(!r||Array.isArray(n)?r=Z.access(e,t,_.makeArray(n)):r.push(n)),r||[]},dequeue:function(e,t){t=t||"fx";var n=_.queue(e,t),r=n.length,i=n.shift(),o=_._queueHooks(e,t);"inprogress"===i&&(i=n.shift(),r--),i&&("fx"===t&&n.unshift("inprogress"),delete o.stop,i.call(e,function(){_.dequeue(e,t)},o)),!r&&o&&o.empty.fire()},_queueHooks:function(e,t){var n=t+"queueHooks";return Z.get(e,n)||Z.access(e,n,{empty:_.Callbacks("once memory").add(function(){Z.remove(e,[t+"queue",n])})})}}),_.fn.extend({queue:function(t,n){var e=2;return"string"!=typeof t&&(n=t,t="fx",e--),arguments.length<e?_.queue(this[0],t):void 0===n?this:this.each(function(){var e=_.queue(this,t,n);_._queueHooks(this,t),"fx"===t&&"inprogress"!==e[0]&&_.dequeue(this,t)})},dequeue:function(e){return this.each(function(){_.dequeue(this,e)})},clearQueue:function(e){return this.queue(e||"fx",[])},promise:function(e,t){function n(){--i||o.resolveWith(a,[a])}var r,i=1,o=_.Deferred(),a=this,s=this.length;for("string"!=typeof e&&(t=e,e=void 0),e=e||"fx";s--;)(r=Z.get(a[s],e+"queueHooks"))&&r.empty&&(i++,r.empty.add(n));return n(),o.promise(t)}});var K=/[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,ee=new RegExp("^(?:([+-])=|)("+K+")([a-z%]*)$","i"),te=["Top","Right","Bottom","Left"],ne=T.documentElement,re=function(e){return _.contains(e.ownerDocument,e)},ie={composed:!0};ne.getRootNode&&(re=function(e){return _.contains(e.ownerDocument,e)||e.getRootNode(ie)===e.ownerDocument});var oe=function(e,t){return"none"===(e=t||e).style.display||""===e.style.display&&re(e)&&"none"===_.css(e,"display")};function ae(e,t,n,r){var i,o,a=20,s=r?function(){return r.cur()}:function(){return _.css(e,t,"")},l=s(),u=n&&n[3]||(_.cssNumber[t]?"":"px"),c=e.nodeType&&(_.cssNumber[t]||"px"!==u&&+l)&&ee.exec(_.css(e,t));if(c&&c[3]!==u){for(l/=2,u=u||c[3],c=+l||1;a--;)_.style(e,t,c+u),(1-o)*(1-(o=s()/l||.5))<=0&&(a=0),c/=o;c*=2,_.style(e,t,c+u),n=n||[]}return n&&(c=+c||+l||0,i=n[1]?c+(n[1]+1)*n[2]:+n[2],r&&(r.unit=u,r.start=c,r.end=i)),i}var se={};function le(e,t){for(var n,r,i,o,a,s,l,u=[],c=0,d=e.length;c<d;c++)(r=e[c]).style&&(n=r.style.display,t?("none"===n&&(u[c]=Z.get(r,"display")||null,u[c]||(r.style.display="")),""===r.style.display&&oe(r)&&(u[c]=(l=a=o=void 0,a=(i=r).ownerDocument,s=i.nodeName,(l=se[s])||(o=a.body.appendChild(a.createElement(s)),l=_.css(o,"display"),o.parentNode.removeChild(o),"none"===l&&(l="block"),se[s]=l)))):"none"!==n&&(u[c]="none",Z.set(r,"display",n)));for(c=0;c<d;c++)null!=u[c]&&(e[c].style.display=u[c]);return e}_.fn.extend({show:function(){return le(this,!0)},hide:function(){return le(this)},toggle:function(e){return"boolean"==typeof e?e?this.show():this.hide():this.each(function(){oe(this)?_(this).show():_(this).hide()})}});var ue,ce,de=/^(?:checkbox|radio)$/i,he=/<([a-z][^\/\0>\x20\t\r\n\f]*)/i,fe=/^$|^module$|\/(?:java|ecma)script/i;ue=T.createDocumentFragment().appendChild(T.createElement("div")),(ce=T.createElement("input")).setAttribute("type","radio"),ce.setAttribute("checked","checked"),ce.setAttribute("name","t"),ue.appendChild(ce),y.checkClone=ue.cloneNode(!0).cloneNode(!0).lastChild.checked,ue.innerHTML="<textarea>x</textarea>",y.noCloneChecked=!!ue.cloneNode(!0).lastChild.defaultValue,ue.innerHTML="<option></option>",y.option=!!ue.lastChild;var pe={thead:[1,"<table>","</table>"],col:[2,"<table><colgroup>","</colgroup></table>"],tr:[2,"<table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],_default:[0,"",""]};function ge(e,t){var n=void 0!==e.getElementsByTagName?e.getElementsByTagName(t||"*"):void 0!==e.querySelectorAll?e.querySelectorAll(t||"*"):[];return void 0===t||t&&C(e,t)?_.merge([e],n):n}function ve(e,t){for(var n=0,r=e.length;n<r;n++)Z.set(e[n],"globalEval",!t||Z.get(t[n],"globalEval"))}pe.tbody=pe.tfoot=pe.colgroup=pe.caption=pe.thead,pe.th=pe.td,y.option||(pe.optgroup=pe.option=[1,"<select multiple='multiple'>","</select>"]);var me=/<|&#?\w+;/;function ye(e,t,n,r,i){for(var o,a,s,l,u,c,d=t.createDocumentFragment(),h=[],f=0,p=e.length;f<p;f++)if((o=e[f])||0===o)if("object"===b(o))_.merge(h,o.nodeType?[o]:o);else if(me.test(o)){for(a=a||d.appendChild(t.createElement("div")),s=(he.exec(o)||["",""])[1].toLowerCase(),l=pe[s]||pe._default,a.innerHTML=l[1]+_.htmlPrefilter(o)+l[2],c=l[0];c--;)a=a.lastChild;_.merge(h,a.childNodes),(a=d.firstChild).textContent=""}else h.push(t.createTextNode(o));for(d.textContent="",f=0;o=h[f++];)if(r&&-1<_.inArray(o,r))i&&i.push(o);else if(u=re(o),a=ge(d.appendChild(o),"script"),u&&ve(a),n)for(c=0;o=a[c++];)fe.test(o.type||"")&&n.push(o);return d}var Se=/^key/,Ee=/^(?:mouse|pointer|contextmenu|drag|drop)|click/,be=/^([^.]*)(?:\.(.+)|)/;function we(){return!0}function De(){return!1}function Te(e,t){return e===function(){try{return T.activeElement}catch(e){}}()==("focus"===t)}function _e(e,t,n,r,i,o){var a,s;if("object"==typeof t){for(s in"string"!=typeof n&&(r=r||n,n=void 0),t)_e(e,s,n,r,t[s],o);return e}if(null==r&&null==i?(i=n,r=n=void 0):null==i&&("string"==typeof n?(i=r,r=void 0):(i=r,r=n,n=void 0)),!1===i)i=De;else if(!i)return e;return 1===o&&(a=i,(i=function(e){return _().off(e),a.apply(this,arguments)}).guid=a.guid||(a.guid=_.guid++)),e.each(function(){_.event.add(this,t,i,r,n)})}function Ce(e,i,o){o?(Z.set(e,i,!1),_.event.add(e,i,{namespace:!1,handler:function(e){var t,n,r=Z.get(this,i);if(1&e.isTrigger&&this[i]){if(r.length)(_.event.special[i]||{}).delegateType&&e.stopPropagation();else if(r=s.call(arguments),Z.set(this,i,r),t=o(this,i),this[i](),r!==(n=Z.get(this,i))||t?Z.set(this,i,!1):n={},r!==n)return e.stopImmediatePropagation(),e.preventDefault(),n.value}else r.length&&(Z.set(this,i,{value:_.event.trigger(_.extend(r[0],_.Event.prototype),r.slice(1),this)}),e.stopImmediatePropagation())}})):void 0===Z.get(e,i)&&_.event.add(e,i,we)}_.event={global:{},add:function(t,e,n,r,i){var o,a,s,l,u,c,d,h,f,p,g,v=Z.get(t);if(q(t))for(n.handler&&(n=(o=n).handler,i=o.selector),i&&_.find.matchesSelector(ne,i),n.guid||(n.guid=_.guid++),(l=v.events)||(l=v.events=Object.create(null)),(a=v.handle)||(a=v.handle=function(e){return void 0!==_&&_.event.triggered!==e.type?_.event.dispatch.apply(t,arguments):void 0}),u=(e=(e||"").match(P)||[""]).length;u--;)f=g=(s=be.exec(e[u])||[])[1],p=(s[2]||"").split(".").sort(),f&&(d=_.event.special[f]||{},f=(i?d.delegateType:d.bindType)||f,d=_.event.special[f]||{},c=_.extend({type:f,origType:g,data:r,handler:n,guid:n.guid,selector:i,needsContext:i&&_.expr.match.needsContext.test(i),namespace:p.join(".")},o),(h=l[f])||((h=l[f]=[]).delegateCount=0,d.setup&&!1!==d.setup.call(t,r,p,a)||t.addEventListener&&t.addEventListener(f,a)),d.add&&(d.add.call(t,c),c.handler.guid||(c.handler.guid=n.guid)),i?h.splice(h.delegateCount++,0,c):h.push(c),_.event.global[f]=!0)},remove:function(e,t,n,r,i){var o,a,s,l,u,c,d,h,f,p,g,v=Z.hasData(e)&&Z.get(e);if(v&&(l=v.events)){for(u=(t=(t||"").match(P)||[""]).length;u--;)if(f=g=(s=be.exec(t[u])||[])[1],p=(s[2]||"").split(".").sort(),f){for(d=_.event.special[f]||{},h=l[f=(r?d.delegateType:d.bindType)||f]||[],s=s[2]&&new RegExp("(^|\\.)"+p.join("\\.(?:.*\\.|)")+"(\\.|$)"),a=o=h.length;o--;)c=h[o],!i&&g!==c.origType||n&&n.guid!==c.guid||s&&!s.test(c.namespace)||r&&r!==c.selector&&("**"!==r||!c.selector)||(h.splice(o,1),c.selector&&h.delegateCount--,d.remove&&d.remove.call(e,c));a&&!h.length&&(d.teardown&&!1!==d.teardown.call(e,p,v.handle)||_.removeEvent(e,f,v.handle),delete l[f])}else for(f in l)_.event.remove(e,f+t[u],n,r,!0);_.isEmptyObject(l)&&Z.remove(e,"handle events")}},dispatch:function(e){var t,n,r,i,o,a,s=new Array(arguments.length),l=_.event.fix(e),u=(Z.get(this,"events")||Object.create(null))[l.type]||[],c=_.event.special[l.type]||{};for(s[0]=l,t=1;t<arguments.length;t++)s[t]=arguments[t];if(l.delegateTarget=this,!c.preDispatch||!1!==c.preDispatch.call(this,l)){for(a=_.event.handlers.call(this,l,u),t=0;(i=a[t++])&&!l.isPropagationStopped();)for(l.currentTarget=i.elem,n=0;(o=i.handlers[n++])&&!l.isImmediatePropagationStopped();)l.rnamespace&&!1!==o.namespace&&!l.rnamespace.test(o.namespace)||(l.handleObj=o,l.data=o.data,void 0!==(r=((_.event.special[o.origType]||{}).handle||o.handler).apply(i.elem,s))&&!1===(l.result=r)&&(l.preventDefault(),l.stopPropagation()));return c.postDispatch&&c.postDispatch.call(this,l),l.result}},handlers:function(e,t){var n,r,i,o,a,s=[],l=t.delegateCount,u=e.target;if(l&&u.nodeType&&!("click"===e.type&&1<=e.button))for(;u!==this;u=u.parentNode||this)if(1===u.nodeType&&("click"!==e.type||!0!==u.disabled)){for(o=[],a={},n=0;n<l;n++)void 0===a[i=(r=t[n]).selector+" "]&&(a[i]=r.needsContext?-1<_(i,this).index(u):_.find(i,this,null,[u]).length),a[i]&&o.push(r);o.length&&s.push({elem:u,handlers:o})}return u=this,l<t.length&&s.push({elem:u,handlers:t.slice(l)}),s},addProp:function(t,e){Object.defineProperty(_.Event.prototype,t,{enumerable:!0,configurable:!0,get:S(e)?function(){if(this.originalEvent)return e(this.originalEvent)}:function(){if(this.originalEvent)return this.originalEvent[t]},set:function(e){Object.defineProperty(this,t,{enumerable:!0,configurable:!0,writable:!0,value:e})}})},fix:function(e){return e[_.expando]?e:new _.Event(e)},special:{load:{noBubble:!0},click:{setup:function(e){var t=this||e;return de.test(t.type)&&t.click&&C(t,"input")&&Ce(t,"click",we),!1},trigger:function(e){var t=this||e;return de.test(t.type)&&t.click&&C(t,"input")&&Ce(t,"click"),!0},_default:function(e){var t=e.target;return de.test(t.type)&&t.click&&C(t,"input")&&Z.get(t,"click")||C(t,"a")}},beforeunload:{postDispatch:function(e){void 0!==e.result&&e.originalEvent&&(e.originalEvent.returnValue=e.result)}}}},_.removeEvent=function(e,t,n){e.removeEventListener&&e.removeEventListener(t,n)},_.Event=function(e,t){if(!(this instanceof _.Event))return new _.Event(e,t);e&&e.type?(this.originalEvent=e,this.type=e.type,this.isDefaultPrevented=e.defaultPrevented||void 0===e.defaultPrevented&&!1===e.returnValue?we:De,this.target=e.target&&3===e.target.nodeType?e.target.parentNode:e.target,this.currentTarget=e.currentTarget,this.relatedTarget=e.relatedTarget):this.type=e,t&&_.extend(this,t),this.timeStamp=e&&e.timeStamp||Date.now(),this[_.expando]=!0},_.Event.prototype={constructor:_.Event,isDefaultPrevented:De,isPropagationStopped:De,isImmediatePropagationStopped:De,isSimulated:!1,preventDefault:function(){var e=this.originalEvent;this.isDefaultPrevented=we,e&&!this.isSimulated&&e.preventDefault()},stopPropagation:function(){var e=this.originalEvent;this.isPropagationStopped=we,e&&!this.isSimulated&&e.stopPropagation()},stopImmediatePropagation:function(){var e=this.originalEvent;this.isImmediatePropagationStopped=we,e&&!this.isSimulated&&e.stopImmediatePropagation(),this.stopPropagation()}},_.each({altKey:!0,bubbles:!0,cancelable:!0,changedTouches:!0,ctrlKey:!0,detail:!0,eventPhase:!0,metaKey:!0,pageX:!0,pageY:!0,shiftKey:!0,view:!0,char:!0,code:!0,charCode:!0,key:!0,keyCode:!0,button:!0,buttons:!0,clientX:!0,clientY:!0,offsetX:!0,offsetY:!0,pointerId:!0,pointerType:!0,screenX:!0,screenY:!0,targetTouches:!0,toElement:!0,touches:!0,which:function(e){var t=e.button;return null==e.which&&Se.test(e.type)?null!=e.charCode?e.charCode:e.keyCode:!e.which&&void 0!==t&&Ee.test(e.type)?1&t?1:2&t?3:4&t?2:0:e.which}},_.event.addProp),_.each({focus:"focusin",blur:"focusout"},function(e,t){_.event.special[e]={setup:function(){return Ce(this,e,Te),!1},trigger:function(){return Ce(this,e),!0},delegateType:t}}),_.each({mouseenter:"mouseover",mouseleave:"mouseout",pointerenter:"pointerover",pointerleave:"pointerout"},function(e,i){_.event.special[e]={delegateType:i,bindType:i,handle:function(e){var t,n=e.relatedTarget,r=e.handleObj;return n&&(n===this||_.contains(this,n))||(e.type=r.origType,t=r.handler.apply(this,arguments),e.type=i),t}}}),_.fn.extend({on:function(e,t,n,r){return _e(this,e,t,n,r)},one:function(e,t,n,r){return _e(this,e,t,n,r,1)},off:function(e,t,n){var r,i;if(e&&e.preventDefault&&e.handleObj)return r=e.handleObj,_(e.delegateTarget).off(r.namespace?r.origType+"."+r.namespace:r.origType,r.selector,r.handler),this;if("object"!=typeof e)return!1!==t&&"function"!=typeof t||(n=t,t=void 0),!1===n&&(n=De),this.each(function(){_.event.remove(this,e,n,t)});for(i in e)this.off(i,t,e[i]);return this}});var xe=/<script|<style|<link/i,Me=/checked\s*(?:[^=]|=\s*.checked.)/i,ke=/^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;function Re(e,t){return C(e,"table")&&C(11!==t.nodeType?t:t.firstChild,"tr")&&_(e).children("tbody")[0]||e}function Ie(e){return e.type=(null!==e.getAttribute("type"))+"/"+e.type,e}function Ne(e){return"true/"===(e.type||"").slice(0,5)?e.type=e.type.slice(5):e.removeAttribute("type"),e}function Oe(e,t){var n,r,i,o,a,s;if(1===t.nodeType){if(Z.hasData(e)&&(s=Z.get(e).events))for(i in Z.remove(t,"handle events"),s)for(n=0,r=s[i].length;n<r;n++)_.event.add(t,i,s[i][n]);X.hasData(e)&&(o=X.access(e),a=_.extend({},o),X.set(t,a))}}function Pe(n,r,i,o){r=v(r);var e,t,a,s,l,u,c=0,d=n.length,h=d-1,f=r[0],p=S(f);if(p||1<d&&"string"==typeof f&&!y.checkClone&&Me.test(f))return n.each(function(e){var t=n.eq(e);p&&(r[0]=f.call(this,e,t.html())),Pe(t,r,i,o)});if(d&&(t=(e=ye(r,n[0].ownerDocument,!1,n,o)).firstChild,1===e.childNodes.length&&(e=t),t||o)){for(s=(a=_.map(ge(e,"script"),Ie)).length;c<d;c++)l=e,c!==h&&(l=_.clone(l,!0,!0),s&&_.merge(a,ge(l,"script"))),i.call(n[c],l,c);if(s)for(u=a[a.length-1].ownerDocument,_.map(a,Ne),c=0;c<s;c++)l=a[c],fe.test(l.type||"")&&!Z.access(l,"globalEval")&&_.contains(u,l)&&(l.src&&"module"!==(l.type||"").toLowerCase()?_._evalUrl&&!l.noModule&&_._evalUrl(l.src,{nonce:l.nonce||l.getAttribute("nonce")},u):E(l.textContent.replace(ke,""),l,u))}return n}function He(e,t,n){for(var r,i=t?_.filter(t,e):e,o=0;null!=(r=i[o]);o++)n||1!==r.nodeType||_.cleanData(ge(r)),r.parentNode&&(n&&re(r)&&ve(ge(r,"script")),r.parentNode.removeChild(r));return e}_.extend({htmlPrefilter:function(e){return e},clone:function(e,t,n){var r,i,o,a,s,l,u,c=e.cloneNode(!0),d=re(e);if(!(y.noCloneChecked||1!==e.nodeType&&11!==e.nodeType||_.isXMLDoc(e)))for(a=ge(c),r=0,i=(o=ge(e)).length;r<i;r++)s=o[r],l=a[r],"input"===(u=l.nodeName.toLowerCase())&&de.test(s.type)?l.checked=s.checked:"input"!==u&&"textarea"!==u||(l.defaultValue=s.defaultValue);if(t)if(n)for(o=o||ge(e),a=a||ge(c),r=0,i=o.length;r<i;r++)Oe(o[r],a[r]);else Oe(e,c);return 0<(a=ge(c,"script")).length&&ve(a,!d&&ge(e,"script")),c},cleanData:function(e){for(var t,n,r,i=_.event.special,o=0;void 0!==(n=e[o]);o++)if(q(n)){if(t=n[Z.expando]){if(t.events)for(r in t.events)i[r]?_.event.remove(n,r):_.removeEvent(n,r,t.handle);n[Z.expando]=void 0}n[X.expando]&&(n[X.expando]=void 0)}}}),_.fn.extend({detach:function(e){return He(this,e,!0)},remove:function(e){return He(this,e)},text:function(e){return W(this,function(e){return void 0===e?_.text(this):this.empty().each(function(){1!==this.nodeType&&11!==this.nodeType&&9!==this.nodeType||(this.textContent=e)})},null,e,arguments.length)},append:function(){return Pe(this,arguments,function(e){1!==this.nodeType&&11!==this.nodeType&&9!==this.nodeType||Re(this,e).appendChild(e)})},prepend:function(){return Pe(this,arguments,function(e){var t;1!==this.nodeType&&11!==this.nodeType&&9!==this.nodeType||(t=Re(this,e)).insertBefore(e,t.firstChild)})},before:function(){return Pe(this,arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this)})},after:function(){return Pe(this,arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this.nextSibling)})},empty:function(){for(var e,t=0;null!=(e=this[t]);t++)1===e.nodeType&&(_.cleanData(ge(e,!1)),e.textContent="");return this},clone:function(e,t){return e=null!=e&&e,t=null==t?e:t,this.map(function(){return _.clone(this,e,t)})},html:function(e){return W(this,function(e){var t=this[0]||{},n=0,r=this.length;if(void 0===e&&1===t.nodeType)return t.innerHTML;if("string"==typeof e&&!xe.test(e)&&!pe[(he.exec(e)||["",""])[1].toLowerCase()]){e=_.htmlPrefilter(e);try{for(;n<r;n++)1===(t=this[n]||{}).nodeType&&(_.cleanData(ge(t,!1)),t.innerHTML=e);t=0}catch(e){}}t&&this.empty().append(e)},null,e,arguments.length)},replaceWith:function(){var n=[];return Pe(this,arguments,function(e){var t=this.parentNode;_.inArray(this,n)<0&&(_.cleanData(ge(this)),t&&t.replaceChild(e,this))},n)}}),_.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(e,a){_.fn[e]=function(e){for(var t,n=[],r=_(e),i=r.length-1,o=0;o<=i;o++)t=o===i?this:this.clone(!0),_(r[o])[a](t),l.apply(n,t.get());return this.pushStack(n)}});function Le(e,t,n){var r,i,o={};for(i in t)o[i]=e.style[i],e.style[i]=t[i];for(i in r=n.call(e),t)e.style[i]=o[i];return r}var Ae,Ye,je,Ue,We,Ve,Fe,ze,Be=new RegExp("^("+K+")(?!px)[a-z%]+$","i"),qe=function(e){var t=e.ownerDocument.defaultView;return t&&t.opener||(t=D),t.getComputedStyle(e)},Ge=new RegExp(te.join("|"),"i");function Ze(){var e;ze&&(Fe.style.cssText="position:absolute;left:-11111px;width:60px;margin-top:1px;padding:0;border:0",ze.style.cssText="position:relative;display:block;box-sizing:border-box;overflow:scroll;margin:auto;border:1px;padding:1px;width:60%;top:1%",ne.appendChild(Fe).appendChild(ze),e=D.getComputedStyle(ze),Ae="1%"!==e.top,Ve=12===Xe(e.marginLeft),ze.style.right="60%",Ue=36===Xe(e.right),Ye=36===Xe(e.width),ze.style.position="absolute",je=12===Xe(ze.offsetWidth/3),ne.removeChild(Fe),ze=null)}function Xe(e){return Math.round(parseFloat(e))}function $e(e,t,n){var r,i,o,a,s=e.style;return(n=n||qe(e))&&(""!==(a=n.getPropertyValue(t)||n[t])||re(e)||(a=_.style(e,t)),!y.pixelBoxStyles()&&Be.test(a)&&Ge.test(t)&&(r=s.width,i=s.minWidth,o=s.maxWidth,s.minWidth=s.maxWidth=s.width=a,a=n.width,s.width=r,s.minWidth=i,s.maxWidth=o)),void 0!==a?a+"":a}function Je(e,t){return{get:function(){if(!e())return(this.get=t).apply(this,arguments);delete this.get}}}Fe=T.createElement("div"),(ze=T.createElement("div")).style&&(ze.style.backgroundClip="content-box",ze.cloneNode(!0).style.backgroundClip="",y.clearCloneStyle="content-box"===ze.style.backgroundClip,_.extend(y,{boxSizingReliable:function(){return Ze(),Ye},pixelBoxStyles:function(){return Ze(),Ue},pixelPosition:function(){return Ze(),Ae},reliableMarginLeft:function(){return Ze(),Ve},scrollboxSize:function(){return Ze(),je},reliableTrDimensions:function(){var e,t,n,r;return null==We&&(e=T.createElement("table"),t=T.createElement("tr"),n=T.createElement("div"),e.style.cssText="position:absolute;left:-11111px",t.style.height="1px",n.style.height="9px",ne.appendChild(e).appendChild(t).appendChild(n),r=D.getComputedStyle(t),We=3<parseInt(r.height),ne.removeChild(e)),We}}));var Qe=["Webkit","Moz","ms"],Ke=T.createElement("div").style,et={};function tt(e){var t=_.cssProps[e]||et[e];return t||(e in Ke?e:et[e]=function(e){for(var t=e[0].toUpperCase()+e.slice(1),n=Qe.length;n--;)if((e=Qe[n]+t)in Ke)return e}(e)||e)}var nt=/^(none|table(?!-c[ea]).+)/,rt=/^--/,it={position:"absolute",visibility:"hidden",display:"block"},ot={letterSpacing:"0",fontWeight:"400"};function at(e,t,n){var r=ee.exec(t);return r?Math.max(0,r[2]-(n||0))+(r[3]||"px"):t}function st(e,t,n,r,i,o){var a="width"===t?1:0,s=0,l=0;if(n===(r?"border":"content"))return 0;for(;a<4;a+=2)"margin"===n&&(l+=_.css(e,n+te[a],!0,i)),r?("content"===n&&(l-=_.css(e,"padding"+te[a],!0,i)),"margin"!==n&&(l-=_.css(e,"border"+te[a]+"Width",!0,i))):(l+=_.css(e,"padding"+te[a],!0,i),"padding"!==n?l+=_.css(e,"border"+te[a]+"Width",!0,i):s+=_.css(e,"border"+te[a]+"Width",!0,i));return!r&&0<=o&&(l+=Math.max(0,Math.ceil(e["offset"+t[0].toUpperCase()+t.slice(1)]-o-l-s-.5))||0),l}function lt(e,t,n){var r=qe(e),i=(!y.boxSizingReliable()||n)&&"border-box"===_.css(e,"boxSizing",!1,r),o=i,a=$e(e,t,r),s="offset"+t[0].toUpperCase()+t.slice(1);if(Be.test(a)){if(!n)return a;a="auto"}return(!y.boxSizingReliable()&&i||!y.reliableTrDimensions()&&C(e,"tr")||"auto"===a||!parseFloat(a)&&"inline"===_.css(e,"display",!1,r))&&e.getClientRects().length&&(i="border-box"===_.css(e,"boxSizing",!1,r),(o=s in e)&&(a=e[s])),(a=parseFloat(a)||0)+st(e,t,n||(i?"border":"content"),o,r,a)+"px"}function ut(e,t,n,r,i){return new ut.prototype.init(e,t,n,r,i)}_.extend({cssHooks:{opacity:{get:function(e,t){if(t){var n=$e(e,"opacity");return""===n?"1":n}}}},cssNumber:{animationIterationCount:!0,columnCount:!0,fillOpacity:!0,flexGrow:!0,flexShrink:!0,fontWeight:!0,gridArea:!0,gridColumn:!0,gridColumnEnd:!0,gridColumnStart:!0,gridRow:!0,gridRowEnd:!0,gridRowStart:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{},style:function(e,t,n,r){if(e&&3!==e.nodeType&&8!==e.nodeType&&e.style){var i,o,a,s=B(t),l=rt.test(t),u=e.style;if(l||(t=tt(s)),a=_.cssHooks[t]||_.cssHooks[s],void 0===n)return a&&"get"in a&&void 0!==(i=a.get(e,!1,r))?i:u[t];"string"===(o=typeof n)&&(i=ee.exec(n))&&i[1]&&(n=ae(e,t,i),o="number"),null!=n&&n==n&&("number"!==o||l||(n+=i&&i[3]||(_.cssNumber[s]?"":"px")),y.clearCloneStyle||""!==n||0!==t.indexOf("background")||(u[t]="inherit"),a&&"set"in a&&void 0===(n=a.set(e,n,r))||(l?u.setProperty(t,n):u[t]=n))}},css:function(e,t,n,r){var i,o,a,s=B(t);return rt.test(t)||(t=tt(s)),(a=_.cssHooks[t]||_.cssHooks[s])&&"get"in a&&(i=a.get(e,!0,n)),void 0===i&&(i=$e(e,t,r)),"normal"===i&&t in ot&&(i=ot[t]),""===n||n?(o=parseFloat(i),!0===n||isFinite(o)?o||0:i):i}}),_.each(["height","width"],function(e,l){_.cssHooks[l]={get:function(e,t,n){if(t)return!nt.test(_.css(e,"display"))||e.getClientRects().length&&e.getBoundingClientRect().width?lt(e,l,n):Le(e,it,function(){return lt(e,l,n)})},set:function(e,t,n){var r,i=qe(e),o=!y.scrollboxSize()&&"absolute"===i.position,a=(o||n)&&"border-box"===_.css(e,"boxSizing",!1,i),s=n?st(e,l,n,a,i):0;return a&&o&&(s-=Math.ceil(e["offset"+l[0].toUpperCase()+l.slice(1)]-parseFloat(i[l])-st(e,l,"border",!1,i)-.5)),s&&(r=ee.exec(t))&&"px"!==(r[3]||"px")&&(e.style[l]=t,t=_.css(e,l)),at(0,t,s)}}}),_.cssHooks.marginLeft=Je(y.reliableMarginLeft,function(e,t){if(t)return(parseFloat($e(e,"marginLeft"))||e.getBoundingClientRect().left-Le(e,{marginLeft:0},function(){return e.getBoundingClientRect().left}))+"px"}),_.each({margin:"",padding:"",border:"Width"},function(i,o){_.cssHooks[i+o]={expand:function(e){for(var t=0,n={},r="string"==typeof e?e.split(" "):[e];t<4;t++)n[i+te[t]+o]=r[t]||r[t-2]||r[0];return n}},"margin"!==i&&(_.cssHooks[i+o].set=at)}),_.fn.extend({css:function(e,t){return W(this,function(e,t,n){var r,i,o={},a=0;if(Array.isArray(t)){for(r=qe(e),i=t.length;a<i;a++)o[t[a]]=_.css(e,t[a],!1,r);return o}return void 0!==n?_.style(e,t,n):_.css(e,t)},e,t,1<arguments.length)}}),(_.Tween=ut).prototype={constructor:ut,init:function(e,t,n,r,i,o){this.elem=e,this.prop=n,this.easing=i||_.easing._default,this.options=t,this.start=this.now=this.cur(),this.end=r,this.unit=o||(_.cssNumber[n]?"":"px")},cur:function(){var e=ut.propHooks[this.prop];return e&&e.get?e.get(this):ut.propHooks._default.get(this)},run:function(e){var t,n=ut.propHooks[this.prop];return this.options.duration?this.pos=t=_.easing[this.easing](e,this.options.duration*e,0,1,this.options.duration):this.pos=t=e,this.now=(this.end-this.start)*t+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),n&&n.set?n.set(this):ut.propHooks._default.set(this),this}},ut.prototype.init.prototype=ut.prototype,ut.propHooks={_default:{get:function(e){var t;return 1!==e.elem.nodeType||null!=e.elem[e.prop]&&null==e.elem.style[e.prop]?e.elem[e.prop]:(t=_.css(e.elem,e.prop,""))&&"auto"!==t?t:0},set:function(e){_.fx.step[e.prop]?_.fx.step[e.prop](e):1!==e.elem.nodeType||!_.cssHooks[e.prop]&&null==e.elem.style[tt(e.prop)]?e.elem[e.prop]=e.now:_.style(e.elem,e.prop,e.now+e.unit)}}},ut.propHooks.scrollTop=ut.propHooks.scrollLeft={set:function(e){e.elem.nodeType&&e.elem.parentNode&&(e.elem[e.prop]=e.now)}},_.easing={linear:function(e){return e},swing:function(e){return.5-Math.cos(e*Math.PI)/2},_default:"swing"},_.fx=ut.prototype.init,_.fx.step={};var ct,dt,ht,ft,pt=/^(?:toggle|show|hide)$/,gt=/queueHooks$/;function vt(){dt&&(!1===T.hidden&&D.requestAnimationFrame?D.requestAnimationFrame(vt):D.setTimeout(vt,_.fx.interval),_.fx.tick())}function mt(){return D.setTimeout(function(){ct=void 0}),ct=Date.now()}function yt(e,t){var n,r=0,i={height:e};for(t=t?1:0;r<4;r+=2-t)i["margin"+(n=te[r])]=i["padding"+n]=e;return t&&(i.opacity=i.width=e),i}function St(e,t,n){for(var r,i=(Et.tweeners[t]||[]).concat(Et.tweeners["*"]),o=0,a=i.length;o<a;o++)if(r=i[o].call(n,t,e))return r}function Et(o,e,t){var n,a,r=0,i=Et.prefilters.length,s=_.Deferred().always(function(){delete l.elem}),l=function(){if(a)return!1;for(var e=ct||mt(),t=Math.max(0,u.startTime+u.duration-e),n=1-(t/u.duration||0),r=0,i=u.tweens.length;r<i;r++)u.tweens[r].run(n);return s.notifyWith(o,[u,n,t]),n<1&&i?t:(i||s.notifyWith(o,[u,1,0]),s.resolveWith(o,[u]),!1)},u=s.promise({elem:o,props:_.extend({},e),opts:_.extend(!0,{specialEasing:{},easing:_.easing._default},t),originalProperties:e,originalOptions:t,startTime:ct||mt(),duration:t.duration,tweens:[],createTween:function(e,t){var n=_.Tween(o,u.opts,e,t,u.opts.specialEasing[e]||u.opts.easing);return u.tweens.push(n),n},stop:function(e){var t=0,n=e?u.tweens.length:0;if(a)return this;for(a=!0;t<n;t++)u.tweens[t].run(1);return e?(s.notifyWith(o,[u,1,0]),s.resolveWith(o,[u,e])):s.rejectWith(o,[u,e]),this}}),c=u.props;for(!function(e,t){var n,r,i,o,a;for(n in e)if(i=t[r=B(n)],o=e[n],Array.isArray(o)&&(i=o[1],o=e[n]=o[0]),n!==r&&(e[r]=o,delete e[n]),(a=_.cssHooks[r])&&"expand"in a)for(n in o=a.expand(o),delete e[r],o)n in e||(e[n]=o[n],t[n]=i);else t[r]=i}(c,u.opts.specialEasing);r<i;r++)if(n=Et.prefilters[r].call(u,o,c,u.opts))return S(n.stop)&&(_._queueHooks(u.elem,u.opts.queue).stop=n.stop.bind(n)),n;return _.map(c,St,u),S(u.opts.start)&&u.opts.start.call(o,u),u.progress(u.opts.progress).done(u.opts.done,u.opts.complete).fail(u.opts.fail).always(u.opts.always),_.fx.timer(_.extend(l,{elem:o,anim:u,queue:u.opts.queue})),u}_.Animation=_.extend(Et,{tweeners:{"*":[function(e,t){var n=this.createTween(e,t);return ae(n.elem,e,ee.exec(t),n),n}]},tweener:function(e,t){for(var n,r=0,i=(e=S(e)?(t=e,["*"]):e.match(P)).length;r<i;r++)n=e[r],Et.tweeners[n]=Et.tweeners[n]||[],Et.tweeners[n].unshift(t)},prefilters:[function(e,t,n){var r,i,o,a,s,l,u,c,d="width"in t||"height"in t,h=this,f={},p=e.style,g=e.nodeType&&oe(e),v=Z.get(e,"fxshow");for(r in n.queue||(null==(a=_._queueHooks(e,"fx")).unqueued&&(a.unqueued=0,s=a.empty.fire,a.empty.fire=function(){a.unqueued||s()}),a.unqueued++,h.always(function(){h.always(function(){a.unqueued--,_.queue(e,"fx").length||a.empty.fire()})})),t)if(i=t[r],pt.test(i)){if(delete t[r],o=o||"toggle"===i,i===(g?"hide":"show")){if("show"!==i||!v||void 0===v[r])continue;g=!0}f[r]=v&&v[r]||_.style(e,r)}if((l=!_.isEmptyObject(t))||!_.isEmptyObject(f))for(r in d&&1===e.nodeType&&(n.overflow=[p.overflow,p.overflowX,p.overflowY],null==(u=v&&v.display)&&(u=Z.get(e,"display")),"none"===(c=_.css(e,"display"))&&(u?c=u:(le([e],!0),u=e.style.display||u,c=_.css(e,"display"),le([e]))),("inline"===c||"inline-block"===c&&null!=u)&&"none"===_.css(e,"float")&&(l||(h.done(function(){p.display=u}),null==u&&(c=p.display,u="none"===c?"":c)),p.display="inline-block")),n.overflow&&(p.overflow="hidden",h.always(function(){p.overflow=n.overflow[0],p.overflowX=n.overflow[1],p.overflowY=n.overflow[2]})),l=!1,f)l||(v?"hidden"in v&&(g=v.hidden):v=Z.access(e,"fxshow",{display:u}),o&&(v.hidden=!g),g&&le([e],!0),h.done(function(){for(r in g||le([e]),Z.remove(e,"fxshow"),f)_.style(e,r,f[r])})),l=St(g?v[r]:0,r,h),r in v||(v[r]=l.start,g&&(l.end=l.start,l.start=0))}],prefilter:function(e,t){t?Et.prefilters.unshift(e):Et.prefilters.push(e)}}),_.speed=function(e,t,n){var r=e&&"object"==typeof e?_.extend({},e):{complete:n||!n&&t||S(e)&&e,duration:e,easing:n&&t||t&&!S(t)&&t};return _.fx.off?r.duration=0:"number"!=typeof r.duration&&(r.duration in _.fx.speeds?r.duration=_.fx.speeds[r.duration]:r.duration=_.fx.speeds._default),null!=r.queue&&!0!==r.queue||(r.queue="fx"),r.old=r.complete,r.complete=function(){S(r.old)&&r.old.call(this),r.queue&&_.dequeue(this,r.queue)},r},_.fn.extend({fadeTo:function(e,t,n,r){return this.filter(oe).css("opacity",0).show().end().animate({opacity:t},e,n,r)},animate:function(t,e,n,r){function i(){var e=Et(this,_.extend({},t),a);(o||Z.get(this,"finish"))&&e.stop(!0)}var o=_.isEmptyObject(t),a=_.speed(e,n,r);return i.finish=i,o||!1===a.queue?this.each(i):this.queue(a.queue,i)},stop:function(i,e,o){function a(e){var t=e.stop;delete e.stop,t(o)}return"string"!=typeof i&&(o=e,e=i,i=void 0),e&&this.queue(i||"fx",[]),this.each(function(){var e=!0,t=null!=i&&i+"queueHooks",n=_.timers,r=Z.get(this);if(t)r[t]&&r[t].stop&&a(r[t]);else for(t in r)r[t]&&r[t].stop&&gt.test(t)&&a(r[t]);for(t=n.length;t--;)n[t].elem!==this||null!=i&&n[t].queue!==i||(n[t].anim.stop(o),e=!1,n.splice(t,1));!e&&o||_.dequeue(this,i)})},finish:function(a){return!1!==a&&(a=a||"fx"),this.each(function(){var e,t=Z.get(this),n=t[a+"queue"],r=t[a+"queueHooks"],i=_.timers,o=n?n.length:0;for(t.finish=!0,_.queue(this,a,[]),r&&r.stop&&r.stop.call(this,!0),e=i.length;e--;)i[e].elem===this&&i[e].queue===a&&(i[e].anim.stop(!0),i.splice(e,1));for(e=0;e<o;e++)n[e]&&n[e].finish&&n[e].finish.call(this);delete t.finish})}}),_.each(["toggle","show","hide"],function(e,r){var i=_.fn[r];_.fn[r]=function(e,t,n){return null==e||"boolean"==typeof e?i.apply(this,arguments):this.animate(yt(r,!0),e,t,n)}}),_.each({slideDown:yt("show"),slideUp:yt("hide"),slideToggle:yt("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(e,r){_.fn[e]=function(e,t,n){return this.animate(r,e,t,n)}}),_.timers=[],_.fx.tick=function(){var e,t=0,n=_.timers;for(ct=Date.now();t<n.length;t++)(e=n[t])()||n[t]!==e||n.splice(t--,1);n.length||_.fx.stop(),ct=void 0},_.fx.timer=function(e){_.timers.push(e),_.fx.start()},_.fx.interval=13,_.fx.start=function(){dt||(dt=!0,vt())},_.fx.stop=function(){dt=null},_.fx.speeds={slow:600,fast:200,_default:400},_.fn.delay=function(r,e){return r=_.fx&&_.fx.speeds[r]||r,e=e||"fx",this.queue(e,function(e,t){var n=D.setTimeout(e,r);t.stop=function(){D.clearTimeout(n)}})},ht=T.createElement("input"),ft=T.createElement("select").appendChild(T.createElement("option")),ht.type="checkbox",y.checkOn=""!==ht.value,y.optSelected=ft.selected,(ht=T.createElement("input")).value="t",ht.type="radio",y.radioValue="t"===ht.value;var bt,wt=_.expr.attrHandle;_.fn.extend({attr:function(e,t){return W(this,_.attr,e,t,1<arguments.length)},removeAttr:function(e){return this.each(function(){_.removeAttr(this,e)})}}),_.extend({attr:function(e,t,n){var r,i,o=e.nodeType;if(3!==o&&8!==o&&2!==o)return void 0===e.getAttribute?_.prop(e,t,n):(1===o&&_.isXMLDoc(e)||(i=_.attrHooks[t.toLowerCase()]||(_.expr.match.bool.test(t)?bt:void 0)),void 0!==n?null===n?void _.removeAttr(e,t):i&&"set"in i&&void 0!==(r=i.set(e,n,t))?r:(e.setAttribute(t,n+""),n):!(i&&"get"in i&&null!==(r=i.get(e,t)))&&null==(r=_.find.attr(e,t))?void 0:r)},attrHooks:{type:{set:function(e,t){if(!y.radioValue&&"radio"===t&&C(e,"input")){var n=e.value;return e.setAttribute("type",t),n&&(e.value=n),t}}}},removeAttr:function(e,t){var n,r=0,i=t&&t.match(P);if(i&&1===e.nodeType)for(;n=i[r++];)e.removeAttribute(n)}}),bt={set:function(e,t,n){return!1===t?_.removeAttr(e,n):e.setAttribute(n,n),n}},_.each(_.expr.match.bool.source.match(/\w+/g),function(e,t){var a=wt[t]||_.find.attr;wt[t]=function(e,t,n){var r,i,o=t.toLowerCase();return n||(i=wt[o],wt[o]=r,r=null!=a(e,t,n)?o:null,wt[o]=i),r}});var Dt=/^(?:input|select|textarea|button)$/i,Tt=/^(?:a|area)$/i;function _t(e){return(e.match(P)||[]).join(" ")}function Ct(e){return e.getAttribute&&e.getAttribute("class")||""}function xt(e){return Array.isArray(e)?e:"string"==typeof e&&e.match(P)||[]}_.fn.extend({prop:function(e,t){return W(this,_.prop,e,t,1<arguments.length)},removeProp:function(e){return this.each(function(){delete this[_.propFix[e]||e]})}}),_.extend({prop:function(e,t,n){var r,i,o=e.nodeType;if(3!==o&&8!==o&&2!==o)return 1===o&&_.isXMLDoc(e)||(t=_.propFix[t]||t,i=_.propHooks[t]),void 0!==n?i&&"set"in i&&void 0!==(r=i.set(e,n,t))?r:e[t]=n:i&&"get"in i&&null!==(r=i.get(e,t))?r:e[t]},propHooks:{tabIndex:{get:function(e){var t=_.find.attr(e,"tabindex");return t?parseInt(t,10):Dt.test(e.nodeName)||Tt.test(e.nodeName)&&e.href?0:-1}}},propFix:{for:"htmlFor",class:"className"}}),y.optSelected||(_.propHooks.selected={get:function(e){var t=e.parentNode;return t&&t.parentNode&&t.parentNode.selectedIndex,null},set:function(e){var t=e.parentNode;t&&(t.selectedIndex,t.parentNode&&t.parentNode.selectedIndex)}}),_.each(["tabIndex","readOnly","maxLength","cellSpacing","cellPadding","rowSpan","colSpan","useMap","frameBorder","contentEditable"],function(){_.propFix[this.toLowerCase()]=this}),_.fn.extend({addClass:function(t){var e,n,r,i,o,a,s,l=0;if(S(t))return this.each(function(e){_(this).addClass(t.call(this,e,Ct(this)))});if((e=xt(t)).length)for(;n=this[l++];)if(i=Ct(n),r=1===n.nodeType&&" "+_t(i)+" "){for(a=0;o=e[a++];)r.indexOf(" "+o+" ")<0&&(r+=o+" ");i!==(s=_t(r))&&n.setAttribute("class",s)}return this},removeClass:function(t){var e,n,r,i,o,a,s,l=0;if(S(t))return this.each(function(e){_(this).removeClass(t.call(this,e,Ct(this)))});if(!arguments.length)return this.attr("class","");if((e=xt(t)).length)for(;n=this[l++];)if(i=Ct(n),r=1===n.nodeType&&" "+_t(i)+" "){for(a=0;o=e[a++];)for(;-1<r.indexOf(" "+o+" ");)r=r.replace(" "+o+" "," ");i!==(s=_t(r))&&n.setAttribute("class",s)}return this},toggleClass:function(i,t){var o=typeof i,a="string"==o||Array.isArray(i);return"boolean"==typeof t&&a?t?this.addClass(i):this.removeClass(i):S(i)?this.each(function(e){_(this).toggleClass(i.call(this,e,Ct(this),t),t)}):this.each(function(){var e,t,n,r;if(a)for(t=0,n=_(this),r=xt(i);e=r[t++];)n.hasClass(e)?n.removeClass(e):n.addClass(e);else void 0!==i&&"boolean"!=o||((e=Ct(this))&&Z.set(this,"__className__",e),this.setAttribute&&this.setAttribute("class",!e&&!1!==i&&Z.get(this,"__className__")||""))})},hasClass:function(e){for(var t,n=0,r=" "+e+" ";t=this[n++];)if(1===t.nodeType&&-1<(" "+_t(Ct(t))+" ").indexOf(r))return!0;return!1}});var Mt=/\r/g;_.fn.extend({val:function(n){var r,e,i,t=this[0];return arguments.length?(i=S(n),this.each(function(e){var t;1===this.nodeType&&(null==(t=i?n.call(this,e,_(this).val()):n)?t="":"number"==typeof t?t+="":Array.isArray(t)&&(t=_.map(t,function(e){return null==e?"":e+""})),(r=_.valHooks[this.type]||_.valHooks[this.nodeName.toLowerCase()])&&"set"in r&&void 0!==r.set(this,t,"value")||(this.value=t))})):t?(r=_.valHooks[t.type]||_.valHooks[t.nodeName.toLowerCase()])&&"get"in r&&void 0!==(e=r.get(t,"value"))?e:"string"==typeof(e=t.value)?e.replace(Mt,""):null==e?"":e:void 0}}),_.extend({valHooks:{option:{get:function(e){var t=_.find.attr(e,"value");return null!=t?t:_t(_.text(e))}},select:{get:function(e){for(var t,n,r=e.options,i=e.selectedIndex,o="select-one"===e.type,a=o?null:[],s=o?i+1:r.length,l=i<0?s:o?i:0;l<s;l++)if(((n=r[l]).selected||l===i)&&!n.disabled&&(!n.parentNode.disabled||!C(n.parentNode,"optgroup"))){if(t=_(n).val(),o)return t;a.push(t)}return a},set:function(e,t){for(var n,r,i=e.options,o=_.makeArray(t),a=i.length;a--;)((r=i[a]).selected=-1<_.inArray(_.valHooks.option.get(r),o))&&(n=!0);return n||(e.selectedIndex=-1),o}}}}),_.each(["radio","checkbox"],function(){_.valHooks[this]={set:function(e,t){if(Array.isArray(t))return e.checked=-1<_.inArray(_(e).val(),t)}},y.checkOn||(_.valHooks[this].get=function(e){return null===e.getAttribute("value")?"on":e.value})}),y.focusin="onfocusin"in D;function kt(e){e.stopPropagation()}var Rt=/^(?:focusinfocus|focusoutblur)$/;_.extend(_.event,{trigger:function(e,t,n,r){var i,o,a,s,l,u,c,d=[n||T],h=m.call(e,"type")?e.type:e,f=m.call(e,"namespace")?e.namespace.split("."):[],p=c=o=n=n||T;if(3!==n.nodeType&&8!==n.nodeType&&!Rt.test(h+_.event.triggered)&&(-1<h.indexOf(".")&&(h=(f=h.split(".")).shift(),f.sort()),s=h.indexOf(":")<0&&"on"+h,(e=e[_.expando]?e:new _.Event(h,"object"==typeof e&&e)).isTrigger=r?2:3,e.namespace=f.join("."),e.rnamespace=e.namespace?new RegExp("(^|\\.)"+f.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,e.result=void 0,e.target||(e.target=n),t=null==t?[e]:_.makeArray(t,[e]),u=_.event.special[h]||{},r||!u.trigger||!1!==u.trigger.apply(n,t))){if(!r&&!u.noBubble&&!g(n)){for(a=u.delegateType||h,Rt.test(a+h)||(p=p.parentNode);p;p=p.parentNode)d.push(p),o=p;o===(n.ownerDocument||T)&&d.push(o.defaultView||o.parentWindow||D)}for(i=0;(p=d[i++])&&!e.isPropagationStopped();)c=p,e.type=1<i?a:u.bindType||h,(l=(Z.get(p,"events")||Object.create(null))[e.type]&&Z.get(p,"handle"))&&l.apply(p,t),(l=s&&p[s])&&l.apply&&q(p)&&(e.result=l.apply(p,t),!1===e.result&&e.preventDefault());return e.type=h,r||e.isDefaultPrevented()||u._default&&!1!==u._default.apply(d.pop(),t)||!q(n)||s&&S(n[h])&&!g(n)&&((o=n[s])&&(n[s]=null),_.event.triggered=h,e.isPropagationStopped()&&c.addEventListener(h,kt),n[h](),e.isPropagationStopped()&&c.removeEventListener(h,kt),_.event.triggered=void 0,o&&(n[s]=o)),e.result}},simulate:function(e,t,n){var r=_.extend(new _.Event,n,{type:e,isSimulated:!0});_.event.trigger(r,null,t)}}),_.fn.extend({trigger:function(e,t){return this.each(function(){_.event.trigger(e,t,this)})},triggerHandler:function(e,t){var n=this[0];if(n)return _.event.trigger(e,t,n,!0)}}),y.focusin||_.each({focus:"focusin",blur:"focusout"},function(n,r){function i(e){_.event.simulate(r,e.target,_.event.fix(e))}_.event.special[r]={setup:function(){var e=this.ownerDocument||this.document||this,t=Z.access(e,r);t||e.addEventListener(n,i,!0),Z.access(e,r,(t||0)+1)},teardown:function(){var e=this.ownerDocument||this.document||this,t=Z.access(e,r)-1;t?Z.access(e,r,t):(e.removeEventListener(n,i,!0),Z.remove(e,r))}}});var It=D.location,Nt={guid:Date.now()},Ot=/\?/;_.parseXML=function(e){var t;if(!e||"string"!=typeof e)return null;try{t=(new D.DOMParser).parseFromString(e,"text/xml")}catch(e){t=void 0}return t&&!t.getElementsByTagName("parsererror").length||_.error("Invalid XML: "+e),t};var Pt=/\[\]$/,Ht=/\r?\n/g,Lt=/^(?:submit|button|image|reset|file)$/i,At=/^(?:input|select|textarea|keygen)/i;_.param=function(e,t){function n(e,t){var n=S(t)?t():t;i[i.length]=encodeURIComponent(e)+"="+encodeURIComponent(null==n?"":n)}var r,i=[];if(null==e)return"";if(Array.isArray(e)||e.jquery&&!_.isPlainObject(e))_.each(e,function(){n(this.name,this.value)});else for(r in e)!function n(r,e,i,o){var t;if(Array.isArray(e))_.each(e,function(e,t){i||Pt.test(r)?o(r,t):n(r+"["+("object"==typeof t&&null!=t?e:"")+"]",t,i,o)});else if(i||"object"!==b(e))o(r,e);else for(t in e)n(r+"["+t+"]",e[t],i,o)}(r,e[r],t,n);return i.join("&")},_.fn.extend({serialize:function(){return _.param(this.serializeArray())},serializeArray:function(){return this.map(function(){var e=_.prop(this,"elements");return e?_.makeArray(e):this}).filter(function(){var e=this.type;return this.name&&!_(this).is(":disabled")&&At.test(this.nodeName)&&!Lt.test(e)&&(this.checked||!de.test(e))}).map(function(e,t){var n=_(this).val();return null==n?null:Array.isArray(n)?_.map(n,function(e){return{name:t.name,value:e.replace(Ht,"\r\n")}}):{name:t.name,value:n.replace(Ht,"\r\n")}}).get()}});var Yt=/%20/g,jt=/#.*$/,Ut=/([?&])_=[^&]*/,Wt=/^(.*?):[ \t]*([^\r\n]*)$/gm,Vt=/^(?:GET|HEAD)$/,Ft=/^\/\//,zt={},Bt={},qt="*/".concat("*"),Gt=T.createElement("a");function Zt(o){return function(e,t){"string"!=typeof e&&(t=e,e="*");var n,r=0,i=e.toLowerCase().match(P)||[];if(S(t))for(;n=i[r++];)"+"===n[0]?(n=n.slice(1)||"*",(o[n]=o[n]||[]).unshift(t)):(o[n]=o[n]||[]).push(t)}}function Xt(t,i,o,a){var s={},l=t===Bt;function u(e){var r;return s[e]=!0,_.each(t[e]||[],function(e,t){var n=t(i,o,a);return"string"!=typeof n||l||s[n]?l?!(r=n):void 0:(i.dataTypes.unshift(n),u(n),!1)}),r}return u(i.dataTypes[0])||!s["*"]&&u("*")}function $t(e,t){var n,r,i=_.ajaxSettings.flatOptions||{};for(n in t)void 0!==t[n]&&((i[n]?e:r=r||{})[n]=t[n]);return r&&_.extend(!0,e,r),e}Gt.href=It.href,_.extend({active:0,lastModified:{},etag:{},ajaxSettings:{url:It.href,type:"GET",isLocal:/^(?:about|app|app-storage|.+-extension|file|res|widget):$/.test(It.protocol),global:!0,processData:!0,async:!0,contentType:"application/x-www-form-urlencoded; charset=UTF-8",accepts:{"*":qt,text:"text/plain",html:"text/html",xml:"application/xml, text/xml",json:"application/json, text/javascript"},contents:{xml:/\bxml\b/,html:/\bhtml/,json:/\bjson\b/},responseFields:{xml:"responseXML",text:"responseText",json:"responseJSON"},converters:{"* text":String,"text html":!0,"text json":JSON.parse,"text xml":_.parseXML},flatOptions:{url:!0,context:!0}},ajaxSetup:function(e,t){return t?$t($t(e,_.ajaxSettings),t):$t(_.ajaxSettings,e)},ajaxPrefilter:Zt(zt),ajaxTransport:Zt(Bt),ajax:function(e,t){"object"==typeof e&&(t=e,e=void 0),t=t||{};var c,d,h,n,f,r,p,g,i,o,v=_.ajaxSetup({},t),m=v.context||v,y=v.context&&(m.nodeType||m.jquery)?_(m):_.event,S=_.Deferred(),E=_.Callbacks("once memory"),b=v.statusCode||{},a={},s={},l="canceled",w={readyState:0,getResponseHeader:function(e){var t;if(p){if(!n)for(n={};t=Wt.exec(h);)n[t[1].toLowerCase()+" "]=(n[t[1].toLowerCase()+" "]||[]).concat(t[2]);t=n[e.toLowerCase()+" "]}return null==t?null:t.join(", ")},getAllResponseHeaders:function(){return p?h:null},setRequestHeader:function(e,t){return null==p&&(e=s[e.toLowerCase()]=s[e.toLowerCase()]||e,a[e]=t),this},overrideMimeType:function(e){return null==p&&(v.mimeType=e),this},statusCode:function(e){var t;if(e)if(p)w.always(e[w.status]);else for(t in e)b[t]=[b[t],e[t]];return this},abort:function(e){var t=e||l;return c&&c.abort(t),u(0,t),this}};if(S.promise(w),v.url=((e||v.url||It.href)+"").replace(Ft,It.protocol+"//"),v.type=t.method||t.type||v.method||v.type,v.dataTypes=(v.dataType||"*").toLowerCase().match(P)||[""],null==v.crossDomain){r=T.createElement("a");try{r.href=v.url,r.href,v.crossDomain=Gt.protocol+"//"+Gt.host!=r.protocol+"//"+r.host}catch(e){v.crossDomain=!0}}if(v.data&&v.processData&&"string"!=typeof v.data&&(v.data=_.param(v.data,v.traditional)),Xt(zt,v,t,w),p)return w;for(i in(g=_.event&&v.global)&&0==_.active++&&_.event.trigger("ajaxStart"),v.type=v.type.toUpperCase(),v.hasContent=!Vt.test(v.type),d=v.url.replace(jt,""),v.hasContent?v.data&&v.processData&&0===(v.contentType||"").indexOf("application/x-www-form-urlencoded")&&(v.data=v.data.replace(Yt,"+")):(o=v.url.slice(d.length),v.data&&(v.processData||"string"==typeof v.data)&&(d+=(Ot.test(d)?"&":"?")+v.data,delete v.data),!1===v.cache&&(d=d.replace(Ut,"$1"),o=(Ot.test(d)?"&":"?")+"_="+Nt.guid+++o),v.url=d+o),v.ifModified&&(_.lastModified[d]&&w.setRequestHeader("If-Modified-Since",_.lastModified[d]),_.etag[d]&&w.setRequestHeader("If-None-Match",_.etag[d])),(v.data&&v.hasContent&&!1!==v.contentType||t.contentType)&&w.setRequestHeader("Content-Type",v.contentType),w.setRequestHeader("Accept",v.dataTypes[0]&&v.accepts[v.dataTypes[0]]?v.accepts[v.dataTypes[0]]+("*"!==v.dataTypes[0]?", "+qt+"; q=0.01":""):v.accepts["*"]),v.headers)w.setRequestHeader(i,v.headers[i]);if(v.beforeSend&&(!1===v.beforeSend.call(m,w,v)||p))return w.abort();if(l="abort",E.add(v.complete),w.done(v.success),w.fail(v.error),c=Xt(Bt,v,t,w)){if(w.readyState=1,g&&y.trigger("ajaxSend",[w,v]),p)return w;v.async&&0<v.timeout&&(f=D.setTimeout(function(){w.abort("timeout")},v.timeout));try{p=!1,c.send(a,u)}catch(e){if(p)throw e;u(-1,e)}}else u(-1,"No Transport");function u(e,t,n,r){var i,o,a,s,l,u=t;p||(p=!0,f&&D.clearTimeout(f),c=void 0,h=r||"",w.readyState=0<e?4:0,i=200<=e&&e<300||304===e,n&&(s=function(e,t,n){for(var r,i,o,a,s=e.contents,l=e.dataTypes;"*"===l[0];)l.shift(),void 0===r&&(r=e.mimeType||t.getResponseHeader("Content-Type"));if(r)for(i in s)if(s[i]&&s[i].test(r)){l.unshift(i);break}if(l[0]in n)o=l[0];else{for(i in n){if(!l[0]||e.converters[i+" "+l[0]]){o=i;break}a=a||i}o=o||a}if(o)return o!==l[0]&&l.unshift(o),n[o]}(v,w,n)),!i&&-1<_.inArray("script",v.dataTypes)&&(v.converters["text script"]=function(){}),s=function(e,t,n,r){var i,o,a,s,l,u={},c=e.dataTypes.slice();if(c[1])for(a in e.converters)u[a.toLowerCase()]=e.converters[a];for(o=c.shift();o;)if(e.responseFields[o]&&(n[e.responseFields[o]]=t),!l&&r&&e.dataFilter&&(t=e.dataFilter(t,e.dataType)),l=o,o=c.shift())if("*"===o)o=l;else if("*"!==l&&l!==o){if(!(a=u[l+" "+o]||u["* "+o]))for(i in u)if((s=i.split(" "))[1]===o&&(a=u[l+" "+s[0]]||u["* "+s[0]])){!0===a?a=u[i]:!0!==u[i]&&(o=s[0],c.unshift(s[1]));break}if(!0!==a)if(a&&e.throws)t=a(t);else try{t=a(t)}catch(e){return{state:"parsererror",error:a?e:"No conversion from "+l+" to "+o}}}return{state:"success",data:t}}(v,s,w,i),i?(v.ifModified&&((l=w.getResponseHeader("Last-Modified"))&&(_.lastModified[d]=l),(l=w.getResponseHeader("etag"))&&(_.etag[d]=l)),204===e||"HEAD"===v.type?u="nocontent":304===e?u="notmodified":(u=s.state,o=s.data,i=!(a=s.error))):(a=u,!e&&u||(u="error",e<0&&(e=0))),w.status=e,w.statusText=(t||u)+"",i?S.resolveWith(m,[o,u,w]):S.rejectWith(m,[w,u,a]),w.statusCode(b),b=void 0,g&&y.trigger(i?"ajaxSuccess":"ajaxError",[w,v,i?o:a]),E.fireWith(m,[w,u]),g&&(y.trigger("ajaxComplete",[w,v]),--_.active||_.event.trigger("ajaxStop")))}return w},getJSON:function(e,t,n){return _.get(e,t,n,"json")},getScript:function(e,t){return _.get(e,void 0,t,"script")}}),_.each(["get","post"],function(e,i){_[i]=function(e,t,n,r){return S(t)&&(r=r||n,n=t,t=void 0),_.ajax(_.extend({url:e,type:i,dataType:r,data:t,success:n},_.isPlainObject(e)&&e))}}),_.ajaxPrefilter(function(e){var t;for(t in e.headers)"content-type"===t.toLowerCase()&&(e.contentType=e.headers[t]||"")}),_._evalUrl=function(e,t,n){return _.ajax({url:e,type:"GET",dataType:"script",cache:!0,async:!1,global:!1,converters:{"text script":function(){}},dataFilter:function(e){_.globalEval(e,t,n)}})},_.fn.extend({wrapAll:function(e){var t;return this[0]&&(S(e)&&(e=e.call(this[0])),t=_(e,this[0].ownerDocument).eq(0).clone(!0),this[0].parentNode&&t.insertBefore(this[0]),t.map(function(){for(var e=this;e.firstElementChild;)e=e.firstElementChild;return e}).append(this)),this},wrapInner:function(n){return S(n)?this.each(function(e){_(this).wrapInner(n.call(this,e))}):this.each(function(){var e=_(this),t=e.contents();t.length?t.wrapAll(n):e.append(n)})},wrap:function(t){var n=S(t);return this.each(function(e){_(this).wrapAll(n?t.call(this,e):t)})},unwrap:function(e){return this.parent(e).not("body").each(function(){_(this).replaceWith(this.childNodes)}),this}}),_.expr.pseudos.hidden=function(e){return!_.expr.pseudos.visible(e)},_.expr.pseudos.visible=function(e){return!!(e.offsetWidth||e.offsetHeight||e.getClientRects().length)},_.ajaxSettings.xhr=function(){try{return new D.XMLHttpRequest}catch(e){}};var Jt={0:200,1223:204},Qt=_.ajaxSettings.xhr();y.cors=!!Qt&&"withCredentials"in Qt,y.ajax=Qt=!!Qt,_.ajaxTransport(function(i){var o,a;if(y.cors||Qt&&!i.crossDomain)return{send:function(e,t){var n,r=i.xhr();if(r.open(i.type,i.url,i.async,i.username,i.password),i.xhrFields)for(n in i.xhrFields)r[n]=i.xhrFields[n];for(n in i.mimeType&&r.overrideMimeType&&r.overrideMimeType(i.mimeType),i.crossDomain||e["X-Requested-With"]||(e["X-Requested-With"]="XMLHttpRequest"),e)r.setRequestHeader(n,e[n]);o=function(e){return function(){o&&(o=a=r.onload=r.onerror=r.onabort=r.ontimeout=r.onreadystatechange=null,"abort"===e?r.abort():"error"===e?"number"!=typeof r.status?t(0,"error"):t(r.status,r.statusText):t(Jt[r.status]||r.status,r.statusText,"text"!==(r.responseType||"text")||"string"!=typeof r.responseText?{binary:r.response}:{text:r.responseText},r.getAllResponseHeaders()))}},r.onload=o(),a=r.onerror=r.ontimeout=o("error"),void 0!==r.onabort?r.onabort=a:r.onreadystatechange=function(){4===r.readyState&&D.setTimeout(function(){o&&a()})},o=o("abort");try{r.send(i.hasContent&&i.data||null)}catch(e){if(o)throw e}},abort:function(){o&&o()}}}),_.ajaxPrefilter(function(e){e.crossDomain&&(e.contents.script=!1)}),_.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/\b(?:java|ecma)script\b/},converters:{"text script":function(e){return _.globalEval(e),e}}}),_.ajaxPrefilter("script",function(e){void 0===e.cache&&(e.cache=!1),e.crossDomain&&(e.type="GET")}),_.ajaxTransport("script",function(n){var r,i;if(n.crossDomain||n.scriptAttrs)return{send:function(e,t){r=_("<script>").attr(n.scriptAttrs||{}).prop({charset:n.scriptCharset,src:n.url}).on("load error",i=function(e){r.remove(),i=null,e&&t("error"===e.type?404:200,e.type)}),T.head.appendChild(r[0])},abort:function(){i&&i()}}});var Kt,en=[],tn=/(=)\?(?=&|$)|\?\?/;_.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var e=en.pop()||_.expando+"_"+Nt.guid++;return this[e]=!0,e}}),_.ajaxPrefilter("json jsonp",function(e,t,n){var r,i,o,a=!1!==e.jsonp&&(tn.test(e.url)?"url":"string"==typeof e.data&&0===(e.contentType||"").indexOf("application/x-www-form-urlencoded")&&tn.test(e.data)&&"data");if(a||"jsonp"===e.dataTypes[0])return r=e.jsonpCallback=S(e.jsonpCallback)?e.jsonpCallback():e.jsonpCallback,a?e[a]=e[a].replace(tn,"$1"+r):!1!==e.jsonp&&(e.url+=(Ot.test(e.url)?"&":"?")+e.jsonp+"="+r),e.converters["script json"]=function(){return o||_.error(r+" was not called"),o[0]},e.dataTypes[0]="json",i=D[r],D[r]=function(){o=arguments},n.always(function(){void 0===i?_(D).removeProp(r):D[r]=i,e[r]&&(e.jsonpCallback=t.jsonpCallback,en.push(r)),o&&S(i)&&i(o[0]),o=i=void 0}),"script"}),y.createHTMLDocument=((Kt=T.implementation.createHTMLDocument("").body).innerHTML="<form></form><form></form>",2===Kt.childNodes.length),_.parseHTML=function(e,t,n){return"string"!=typeof e?[]:("boolean"==typeof t&&(n=t,t=!1),t||(y.createHTMLDocument?((r=(t=T.implementation.createHTMLDocument("")).createElement("base")).href=T.location.href,t.head.appendChild(r)):t=T),o=!n&&[],(i=x.exec(e))?[t.createElement(i[1])]:(i=ye([e],t,o),o&&o.length&&_(o).remove(),_.merge([],i.childNodes)));var r,i,o},_.fn.load=function(e,t,n){var r,i,o,a=this,s=e.indexOf(" ");return-1<s&&(r=_t(e.slice(s)),e=e.slice(0,s)),S(t)?(n=t,t=void 0):t&&"object"==typeof t&&(i="POST"),0<a.length&&_.ajax({url:e,type:i||"GET",dataType:"html",data:t}).done(function(e){o=arguments,a.html(r?_("<div>").append(_.parseHTML(e)).find(r):e)}).always(n&&function(e,t){a.each(function(){n.apply(this,o||[e.responseText,t,e])})}),this},_.expr.pseudos.animated=function(t){return _.grep(_.timers,function(e){return t===e.elem}).length},_.offset={setOffset:function(e,t,n){var r,i,o,a,s,l,u=_.css(e,"position"),c=_(e),d={};"static"===u&&(e.style.position="relative"),s=c.offset(),o=_.css(e,"top"),l=_.css(e,"left"),i=("absolute"===u||"fixed"===u)&&-1<(o+l).indexOf("auto")?(a=(r=c.position()).top,r.left):(a=parseFloat(o)||0,parseFloat(l)||0),S(t)&&(t=t.call(e,n,_.extend({},s))),null!=t.top&&(d.top=t.top-s.top+a),null!=t.left&&(d.left=t.left-s.left+i),"using"in t?t.using.call(e,d):("number"==typeof d.top&&(d.top+="px"),"number"==typeof d.left&&(d.left+="px"),c.css(d))}},_.fn.extend({offset:function(t){if(arguments.length)return void 0===t?this:this.each(function(e){_.offset.setOffset(this,t,e)});var e,n,r=this[0];return r?r.getClientRects().length?(e=r.getBoundingClientRect(),n=r.ownerDocument.defaultView,{top:e.top+n.pageYOffset,left:e.left+n.pageXOffset}):{top:0,left:0}:void 0},position:function(){if(this[0]){var e,t,n,r=this[0],i={top:0,left:0};if("fixed"===_.css(r,"position"))t=r.getBoundingClientRect();else{for(t=this.offset(),n=r.ownerDocument,e=r.offsetParent||n.documentElement;e&&(e===n.body||e===n.documentElement)&&"static"===_.css(e,"position");)e=e.parentNode;e&&e!==r&&1===e.nodeType&&((i=_(e).offset()).top+=_.css(e,"borderTopWidth",!0),i.left+=_.css(e,"borderLeftWidth",!0))}return{top:t.top-i.top-_.css(r,"marginTop",!0),left:t.left-i.left-_.css(r,"marginLeft",!0)}}},offsetParent:function(){return this.map(function(){for(var e=this.offsetParent;e&&"static"===_.css(e,"position");)e=e.offsetParent;return e||ne})}}),_.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(t,i){var o="pageYOffset"===i;_.fn[t]=function(e){return W(this,function(e,t,n){var r;return g(e)?r=e:9===e.nodeType&&(r=e.defaultView),void 0===n?r?r[i]:e[t]:void(r?r.scrollTo(o?r.pageXOffset:n,o?n:r.pageYOffset):e[t]=n)},t,e,arguments.length)}}),_.each(["top","left"],function(e,n){_.cssHooks[n]=Je(y.pixelPosition,function(e,t){if(t)return t=$e(e,n),Be.test(t)?_(e).position()[n]+"px":t})}),_.each({Height:"height",Width:"width"},function(a,s){_.each({padding:"inner"+a,content:s,"":"outer"+a},function(r,o){_.fn[o]=function(e,t){var n=arguments.length&&(r||"boolean"!=typeof e),i=r||(!0===e||!0===t?"margin":"border");return W(this,function(e,t,n){var r;return g(e)?0===o.indexOf("outer")?e["inner"+a]:e.document.documentElement["client"+a]:9===e.nodeType?(r=e.documentElement,Math.max(e.body["scroll"+a],r["scroll"+a],e.body["offset"+a],r["offset"+a],r["client"+a])):void 0===n?_.css(e,t,i):_.style(e,t,n,i)},s,n?e:void 0,n)}})}),_.each(["ajaxStart","ajaxStop","ajaxComplete","ajaxError","ajaxSuccess","ajaxSend"],function(e,t){_.fn[t]=function(e){return this.on(t,e)}}),_.fn.extend({bind:function(e,t,n){return this.on(e,null,t,n)},unbind:function(e,t){return this.off(e,null,t)},delegate:function(e,t,n,r){return this.on(t,e,n,r)},undelegate:function(e,t,n){return 1===arguments.length?this.off(e,"**"):this.off(t,e||"**",n)},hover:function(e,t){return this.mouseenter(e).mouseleave(t||e)}}),_.each("blur focus focusin focusout resize scroll click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup contextmenu".split(" "),function(e,n){_.fn[n]=function(e,t){return 0<arguments.length?this.on(n,null,e,t):this.trigger(n)}});var nn=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;_.proxy=function(e,t){var n,r,i;if("string"==typeof t&&(n=e[t],t=e,e=n),S(e))return r=s.call(arguments,2),(i=function(){return e.apply(t||this,r.concat(s.call(arguments)))}).guid=e.guid=e.guid||_.guid++,i},_.holdReady=function(e){e?_.readyWait++:_.ready(!0)},_.isArray=Array.isArray,_.parseJSON=JSON.parse,_.nodeName=C,_.isFunction=S,_.isWindow=g,_.camelCase=B,_.type=b,_.now=Date.now,_.isNumeric=function(e){var t=_.type(e);return("number"===t||"string"===t)&&!isNaN(e-parseFloat(e))},_.trim=function(e){return null==e?"":(e+"").replace(nn,"")},"function"==typeof define&&define.amd&&define("jquery",[],function(){return _});var rn=D.jQuery,on=D.$;return _.noConflict=function(e){return D.$===_&&(D.$=on),e&&D.jQuery===_&&(D.jQuery=rn),_},void 0===e&&(D.jQuery=D.$=_),_}),function(e,t){"object"==typeof exports&&"undefined"!=typeof module?t(exports):"function"==typeof define&&define.amd?define(["exports"],t):t((e=e||self).FullCalendar={})}(this,function(e){"use strict";var o={className:!0,colSpan:!0,rowSpan:!0},t={"<tr":"tbody","<td":"tr"};function a(e,t,n){var r=document.createElement(e);if(t)for(var i in t)"style"===i?p(r,t[i]):o[i]?r[i]=t[i]:r.setAttribute(i,t[i]);return"string"==typeof n?r.innerHTML=n:null!=n&&b(r,n),r}function E(e){e=e.trim();var t=document.createElement(n(e));return t.innerHTML=e,t.firstChild}function s(e){return Array.prototype.slice.call(function(e){e=e.trim();var t=document.createElement(n(e));return t.innerHTML=e,t.childNodes}(e))}function n(e){return t[e.substr(0,3)]||"div"}function b(e,t){for(var n=l(t),r=0;r<n.length;r++)e.appendChild(n[r])}function m(e,t){for(var n=l(t),r=e.firstChild||null,i=0;i<n.length;i++)e.insertBefore(n[i],r)}function l(e){var t="string"==typeof e?s(e):e instanceof Node?[e]:Array.prototype.slice.call(e);return t}function r(e){e.parentNode&&e.parentNode.removeChild(e)}var i=Element.prototype.matches||Element.prototype.matchesSelector||Element.prototype.msMatchesSelector,u=Element.prototype.closest||function(e){var t=this;if(!document.documentElement.contains(t))return null;do{if(d(t,e))return t;t=t.parentElement||t.parentNode}while(null!==t&&1===t.nodeType);return null};function c(e,t){return u.call(e,t)}function d(e,t){return i.call(e,t)}function h(e,t){for(var n=e instanceof HTMLElement?[e]:e,r=[],i=0;i<n.length;i++)for(var o=n[i].querySelectorAll(t),a=0;a<o.length;a++)r.push(o[a]);return r}var f=/(top|left|right|bottom|width|height)$/i;function p(e,t){for(var n in t)g(e,n,t[n])}function g(e,t,n){null==n?e.style[t]="":"number"==typeof n&&f.test(t)?e.style[t]=n+"px":e.style[t]=n}function v(e,t){var n={left:Math.max(e.left,t.left),right:Math.min(e.right,t.right),top:Math.max(e.top,t.top),bottom:Math.min(e.bottom,t.bottom)};return n.left<n.right&&n.top<n.bottom&&n}var y=null;function S(){return null===y&&(y=function(){var e=a("div",{style:{position:"absolute",top:-1e3,left:0,border:0,padding:0,overflow:"scroll",direction:"rtl"}},"<div></div>");document.body.appendChild(e);var t=e.firstChild.getBoundingClientRect().left>e.getBoundingClientRect().left;return r(e),t}()),y}function w(e){return e=Math.max(0,e),e=Math.round(e)}function D(e,t){void 0===t&&(t=!1);var n=window.getComputedStyle(e),r=parseInt(n.borderLeftWidth,10)||0,i=parseInt(n.borderRightWidth,10)||0,o=parseInt(n.borderTopWidth,10)||0,a=parseInt(n.borderBottomWidth,10)||0,s=w(e.offsetWidth-e.clientWidth-r-i),l={borderLeft:r,borderRight:i,borderTop:o,borderBottom:a,scrollbarBottom:w(e.offsetHeight-e.clientHeight-o-a),scrollbarLeft:0,scrollbarRight:0};return S()&&"rtl"===n.direction?l.scrollbarLeft=s:l.scrollbarRight=s,t&&(l.paddingLeft=parseInt(n.paddingLeft,10)||0,l.paddingRight=parseInt(n.paddingRight,10)||0,l.paddingTop=parseInt(n.paddingTop,10)||0,l.paddingBottom=parseInt(n.paddingBottom,10)||0),l}function T(e,t){void 0===t&&(t=!1);var n=_(e),r=D(e,t),i={left:n.left+r.borderLeft+r.scrollbarLeft,right:n.right-r.borderRight-r.scrollbarRight,top:n.top+r.borderTop,bottom:n.bottom-r.borderBottom-r.scrollbarBottom};return t&&(i.left+=r.paddingLeft,i.right-=r.paddingRight,i.top+=r.paddingTop,i.bottom-=r.paddingBottom),i}function _(e){var t=e.getBoundingClientRect();return{left:t.left+window.pageXOffset,top:t.top+window.pageYOffset,right:t.right+window.pageXOffset,bottom:t.bottom+window.pageYOffset}}function C(e){return e.getBoundingClientRect().height+x(e)}function x(e){var t=window.getComputedStyle(e);return parseInt(t.marginTop,10)+parseInt(t.marginBottom,10)}function M(e){for(var t=[];e instanceof HTMLElement;){var n=window.getComputedStyle(e);if("fixed"===n.position)break;/(auto|scroll)/.test(n.overflow+n.overflowY+n.overflowX)&&t.push(e),e=e.parentNode}return t}function k(e){e.preventDefault()}function R(e,t,n,r){function i(e){var t=c(e.target,n);t&&r.call(t,e,t)}return e.addEventListener(t,i),function(){e.removeEventListener(t,i)}}var I=["webkitTransitionEnd","otransitionend","oTransitionEnd","msTransitionEnd","transitionend"];var N=["sun","mon","tue","wed","thu","fri","sat"];function O(e,t){var n=F(e);return n[2]+=t,z(n)}function P(e,t){var n=F(e);return n[6]+=t,z(n)}function H(e,t){return(t.valueOf()-e.valueOf())/864e5}function L(e,t){var n=j(e),r=j(t);return{years:0,months:0,days:Math.round(H(n,r)),milliseconds:t.valueOf()-r.valueOf()-(e.valueOf()-n.valueOf())}}function A(e,t){var n=Y(e,t);return null!==n&&n%7==0?n/7:null}function Y(e,t){return q(e)===q(t)?Math.round(H(e,t)):null}function j(e){return z([e.getUTCFullYear(),e.getUTCMonth(),e.getUTCDate()])}function U(e,t,n,r){var i,o,a=z([t,0,1+(-(7+z([t,0,o=7+(i=n)-r]).getUTCDay()-i)%7+o-1)]),s=j(e),l=Math.round(H(a,s));return Math.floor(l/7)+1}function W(e){return[e.getFullYear(),e.getMonth(),e.getDate(),e.getHours(),e.getMinutes(),e.getSeconds(),e.getMilliseconds()]}function V(e){return new Date(e[0],e[1]||0,null==e[2]?1:e[2],e[3]||0,e[4]||0,e[5]||0)}function F(e){return[e.getUTCFullYear(),e.getUTCMonth(),e.getUTCDate(),e.getUTCHours(),e.getUTCMinutes(),e.getUTCSeconds(),e.getUTCMilliseconds()]}function z(e){return 1===e.length&&(e=e.concat([0])),new Date(Date.UTC.apply(Date,e))}function B(e){return!isNaN(e.valueOf())}function q(e){return 1e3*e.getUTCHours()*60*60+1e3*e.getUTCMinutes()*60+1e3*e.getUTCSeconds()+e.getUTCMilliseconds()}var G=["years","months","days","milliseconds"],Z=/^(-?)(?:(\d+)\.)?(\d+):(\d\d)(?::(\d\d)(?:\.(\d\d\d))?)?/;function X(e,t){var n;return"string"==typeof e?function(e){var t=Z.exec(e);if(t){var n=t[1]?-1:1;return{years:0,months:0,days:n*(t[2]?parseInt(t[2],10):0),milliseconds:n*(60*(t[3]?parseInt(t[3],10):0)*60*1e3+60*(t[4]?parseInt(t[4],10):0)*1e3+1e3*(t[5]?parseInt(t[5],10):0)+(t[6]?parseInt(t[6],10):0))}}return null}(e):"object"==typeof e&&e?$(e):"number"==typeof e?$(((n={})[t||"milliseconds"]=e,n)):null}function $(e){return{years:e.years||e.year||0,months:e.months||e.month||0,days:(e.days||e.day||0)+7*J(e),milliseconds:60*(e.hours||e.hour||0)*60*1e3+60*(e.minutes||e.minute||0)*1e3+1e3*(e.seconds||e.second||0)+(e.milliseconds||e.millisecond||e.ms||0)}}function J(e){return e.weeks||e.week||0}function Q(e,t){return e.years===t.years&&e.months===t.months&&e.days===t.days&&e.milliseconds===t.milliseconds}function K(e){return ee(e)/864e5}function ee(e){return 31536e6*e.years+2592e6*e.months+864e5*e.days+e.milliseconds}function te(e,t){var n=e.milliseconds;if(n){if(n%1e3!=0)return{unit:"millisecond",value:n};if(n%6e4!=0)return{unit:"second",value:n/1e3};if(n%36e5!=0)return{unit:"minute",value:n/6e4};if(n)return{unit:"hour",value:n/36e5}}return e.days?t||e.days%7!=0?{unit:"day",value:e.days}:{unit:"week",value:e.days/7}:e.months?{unit:"month",value:e.months}:e.years?{unit:"year",value:e.years}:{unit:"millisecond",value:0}}function ne(e){e.forEach(function(e){e.style.height=""})}function re(e){var t,n,r=[],i=[];for("string"==typeof e?i=e.split(/\s*,\s*/):"function"==typeof e?i=[e]:Array.isArray(e)&&(i=e),t=0;t<i.length;t++)"string"==typeof(n=i[t])?r.push("-"===n.charAt(0)?{field:n.substring(1),order:-1}:{field:n,order:1}):"function"==typeof n&&r.push({func:n});return r}function ie(e,t,n){for(var r,i=0;i<n.length;i++)if(r=oe(e,t,n[i]))return r;return 0}function oe(e,t,n){return n.func?n.func(e,t):ae(e[n.field],t[n.field])*(n.order||1)}function ae(e,t){return e||t?null==t?-1:null==e?1:"string"==typeof e||"string"==typeof t?String(e).localeCompare(String(t)):e-t:0}function se(e){return e.charAt(0).toUpperCase()+e.slice(1)}function le(e,t){var n=String(e);return"000".substr(0,t-n.length)+n}function ue(e){return e%1==0}function ce(e,t,n){if("function"==typeof e&&(e=[e]),e){for(var r=void 0,i=void 0,r=0;r<e.length;r++)i=e[r].apply(t,n)||i;return i}}function de(){for(var e=[],t=0;t<arguments.length;t++)e[t]=arguments[t];for(var n=0;n<e.length;n++)if(void 0!==e[n])return e[n]}function he(t,n){var r,i,o,a,s,l=function(){var e=(new Date).valueOf()-a;e<n?r=setTimeout(l,n-e):(r=null,s=t.apply(o,i),o=i=null)};return function(){return o=this,i=arguments,a=(new Date).valueOf(),r=r||setTimeout(l,n),s}}function fe(e,t,n,r){void 0===n&&(n={});var i={};for(var o in t){var a=t[o];void 0!==e[o]?a===Function?i[o]="function"==typeof e[o]?e[o]:null:i[o]=a?a(e[o]):e[o]:void 0!==n[o]?i[o]=n[o]:a===String?i[o]="":a&&a!==Number&&a!==Boolean&&a!==Function?i[o]=a(null):i[o]=null}if(r)for(var o in e)void 0===t[o]&&(r[o]=e[o]);return i}function pe(e){var t=Math.floor(H(e.start,e.end))||1,n=j(e.start);return{start:n,end:O(n,t)}}function ge(e,t){void 0===t&&(t=X(0));var n,r=null,i=null;return e.end&&(i=j(e.end),(n=e.end.valueOf()-i.valueOf())&&n>=ee(t)&&(i=O(i,1))),e.start&&(r=j(e.start),i&&i<=r&&(i=O(r,1))),{start:r,end:i}}function ve(e,t,n,r){return"year"===r?X(n.diffWholeYears(e,t),"year"):"month"===r?X(n.diffWholeMonths(e,t),"month"):L(e,t)}var me=function(e,t){return(me=Object.setPrototypeOf||{__proto__:[]}instanceof Array&&function(e,t){e.__proto__=t}||function(e,t){for(var n in t)t.hasOwnProperty(n)&&(e[n]=t[n])})(e,t)};function ye(e,t){function n(){this.constructor=e}me(e,t),e.prototype=null===t?Object.create(t):(n.prototype=t.prototype,new n)}var Se=function(){return(Se=Object.assign||function(e){for(var t,n=1,r=arguments.length;n<r;n++)for(var i in t=arguments[n])Object.prototype.hasOwnProperty.call(t,i)&&(e[i]=t[i]);return e}).apply(this,arguments)};var Ee=Object.prototype.hasOwnProperty;function be(e,t){var n,r,i,o,a,s,l={};if(t)for(n=0;n<t.length;n++){for(r=t[n],i=[],o=e.length-1;0<=o;o--)if("object"==typeof(a=e[o][r])&&a)i.unshift(a);else if(void 0!==a){l[r]=a;break}i.length&&(l[r]=be(i))}for(n=e.length-1;0<=n;n--)for(r in s=e[n])r in l||(l[r]=s[r]);return l}function we(e,t){var n={};for(var r in e)t(e[r],r)&&(n[r]=e[r]);return n}function De(e,t){var n={};for(var r in e)n[r]=t(e[r],r);return n}function Te(e){for(var t={},n=0,r=e;n<r.length;n++){t[r[n]]=!0}return t}function _e(e){var t=[];for(var n in e)t.push(e[n]);return t}function Ce(e,t){for(var n in e)if(Ee.call(e,n)&&!(n in t))return!1;for(var n in t)if(Ee.call(t,n)&&e[n]!==t[n])return!1;return!0}function xe(e,t,n,r){for(var i=Ne(),o=0,a=e;o<a.length;o++){var s=Wt(a[o],t,n,r);s&&Me(s,i)}return i}function Me(e,t){return void 0===t&&(t=Ne()),t.defs[e.def.defId]=e.def,e.instance&&(t.instances[e.instance.instanceId]=e.instance),t}function ke(e,t,n){var r,i,o,a,s,l,u=n.dateEnv,c=e.defs,d=we(d=e.instances,function(e){return!c[e.defId].recurringDef});for(var h in c){var f=c[h];if(f.recurringDef)for(var p=(p=f.recurringDef.duration)||(f.allDay?n.defaultAllDayEventDuration:n.defaultTimedEventDuration),g=0,v=(r=f,i=p,o=t,a=n.dateEnv,s=n.pluginSystem.hooks.recurringTypes,l=void 0,l=s[r.recurringDef.typeId].expand(r.recurringDef.typeData,{start:a.subtract(o.start,i),end:o.end},a),r.allDay&&(l=l.map(j)),l);g<v.length;g++){var m=v[g],y=Ft(h,{start:m,end:u.add(m,p)});d[y.instanceId]=y}}return{defs:c,instances:d}}function Re(e,t){var n=e.instances[t];if(n){var r=e.defs[n.defId],i=Pe(e,function(e){return t=r,n=e,Boolean(t.groupId&&t.groupId===n.groupId);var t,n});return i.defs[r.defId]=r,i.instances[n.instanceId]=n,i}return Ne()}function Ie(e,t){var n;if(t){n=[];for(var r=0,i=e;r<i.length;r++){var o=i[r],a=t(o);a?n.push(a):null==a&&n.push(o)}}else n=e;return n}function Ne(){return{defs:{},instances:{}}}function Oe(e,t){return{defs:Se({},e.defs,t.defs),instances:Se({},e.instances,t.instances)}}function Pe(e,t){var n=we(e.defs,t),r=we(e.instances,function(e){return n[e.defId]});return{defs:n,instances:r}}function He(e,t){var n,r,i=[],o=t.start;for(e.sort(Le),n=0;n<e.length;n++)(r=e[n]).start>o&&i.push({start:o,end:r.start}),r.end>o&&(o=r.end);return o<t.end&&i.push({start:o,end:t.end}),i}function Le(e,t){return e.start.valueOf()-t.start.valueOf()}function Ae(e,t){var n=e.start,r=e.end,i=null;return null!==t.start&&(n=null===n?t.start:new Date(Math.max(n.valueOf(),t.start.valueOf()))),null!=t.end&&(r=null===r?t.end:new Date(Math.min(r.valueOf(),t.end.valueOf()))),(null===n||null===r||n<r)&&(i={start:n,end:r}),i}function Ye(e,t){return(null===e.start?null:e.start.valueOf())===(null===t.start?null:t.start.valueOf())&&(null===e.end?null:e.end.valueOf())===(null===t.end?null:t.end.valueOf())}function je(e,t){return(null===e.end||null===t.start||e.end>t.start)&&(null===e.start||null===t.end||e.start<t.end)}function Ue(e,t){return(null===e.start||null!==t.start&&t.start>=e.start)&&(null===e.end||null!==t.end&&t.end<=e.end)}function We(e,t){return(null===e.start||t>=e.start)&&(null===e.end||t<e.end)}function Ve(e,t){var n,r=e.length;if(r!==t.length)return!1;for(n=0;n<r;n++)if(e[n]!==t[n])return!1;return!0}function Fe(e){var t,n;return function(){return t&&Ve(t,arguments)||(t=arguments,n=e.apply(this,arguments)),n}}function ze(t,n){var r=null;return function(){var e=t.apply(this,arguments);return null!==r&&(r===e||n(r,e))||(r=e),r}}var Be={week:3,separator:0,omitZeroMinute:0,meridiem:0,omitCommas:0},qe={timeZoneName:7,era:6,year:5,month:4,day:2,weekday:2,hour:1,minute:1,second:1},Ge=/\s*([ap])\.?m\.?/i,Ze=/,/g,Xe=/\s+/g,$e=/\u200e/g,Je=/UTC|GMT/,Qe=(Ke.prototype.format=function(e,t){return this.buildFormattingFunc(this.standardDateProps,this.extendedSettings,t)(e)},Ke.prototype.formatRange=function(e,t,n){var r,i,o,a=this.standardDateProps,s=this.extendedSettings,l=(r=e.marker,i=t.marker,(o=n.calendarSystem).getMarkerYear(r)===o.getMarkerYear(i)?o.getMarkerMonth(r)===o.getMarkerMonth(i)?o.getMarkerDay(r)===o.getMarkerDay(i)?q(r)===q(i)?0:1:2:4:5);if(!l)return this.format(e,n);var u=l;!(1<u)||"numeric"!==a.year&&"2-digit"!==a.year||"numeric"!==a.month&&"2-digit"!==a.month||"numeric"!==a.day&&"2-digit"!==a.day||(u=1);var c=this.format(e,n),d=this.format(t,n);if(c===d)return c;var h=et(function(e,t){var n={};for(var r in e)r in qe&&!(qe[r]<=t)||(n[r]=e[r]);return n}(a,u),s,n),f=h(e),p=h(t),g=function(e,t,n,r){for(var i=0;i<e.length;){var o=e.indexOf(t,i);if(-1===o)break;var a=e.substr(0,o);i=o+t.length;for(var s=e.substr(i),l=0;l<n.length;){var u=n.indexOf(r,l);if(-1===u)break;var c=n.substr(0,u);l=u+r.length;var d=n.substr(l);if(a===c&&s===d)return{before:a,after:s}}}return null}(c,f,d,p),v=s.separator||"";return g?g.before+f+v+p+g.after:c+v+d},Ke.prototype.getLargestUnit=function(){switch(this.severity){case 7:case 6:case 5:return"year";case 4:return"month";case 3:return"week";default:return"day"}},Ke);function Ke(e){var t={},n={},r=0;for(var i in e)i in Be?(n[i]=e[i],r=Math.max(Be[i],r)):(t[i]=e[i],i in qe&&(r=Math.max(qe[i],r)));this.standardDateProps=t,this.extendedSettings=n,this.severity=r,this.buildFormattingFunc=Fe(et)}function et(e,t,n){var r=Object.keys(e).length;return 1===r&&"short"===e.timeZoneName?function(e){return at(e.timeZoneOffset)}:0===r&&t.week?function(e){return function(e,t,n,r){var i=[];"narrow"===r?i.push(t):"short"===r&&i.push(t," ");i.push(n.simpleNumberFormat.format(e)),n.options.isRtl&&i.reverse();return i.join("")}(n.computeWeekNumber(e.marker),n.weekLabel,n.locale,t.week)}:function(r,i,o){r=Se({},r),i=Se({},i),function(e,t){e.timeZoneName&&(e.hour||(e.hour="2-digit"),e.minute||(e.minute="2-digit"));"long"===e.timeZoneName&&(e.timeZoneName="short");t.omitZeroMinute&&(e.second||e.millisecond)&&delete t.omitZeroMinute}(r,i),r.timeZone="UTC";var a,s=new Intl.DateTimeFormat(o.locale.codes,r);{var e;i.omitZeroMinute&&(delete(e=Se({},r)).minute,a=new Intl.DateTimeFormat(o.locale.codes,e))}return function(e){var t=e.marker,n=a&&!t.getUTCMinutes()?a:s;return function(e,t,n,r,i){e=e.replace($e,""),"short"===n.timeZoneName&&(e=function(e,t){var n=!1;e=e.replace(Je,function(){return n=!0,t}),n||(e+=" "+t);return e}(e,"UTC"===i.timeZone||null==t.timeZoneOffset?"UTC":at(t.timeZoneOffset)));r.omitCommas&&(e=e.replace(Ze,"").trim());r.omitZeroMinute&&(e=e.replace(":00",""));!1===r.meridiem?e=e.replace(Ge,"").trim():"narrow"===r.meridiem?e=e.replace(Ge,function(e,t){return t.toLocaleLowerCase()}):"short"===r.meridiem?e=e.replace(Ge,function(e,t){return t.toLocaleLowerCase()+"m"}):"lowercase"===r.meridiem&&(e=e.replace(Ge,function(e){return e.toLocaleLowerCase()}));return e=(e=e.replace(Xe," ")).trim()}(n.format(t),e,r,i,o)}}(e,t,n)}var tt=(nt.prototype.format=function(e,t){return t.cmdFormatter(this.cmdStr,st(e,null,t,this.separator))},nt.prototype.formatRange=function(e,t,n){return n.cmdFormatter(this.cmdStr,st(e,t,n,this.separator))},nt);function nt(e,t){this.cmdStr=e,this.separator=t}var rt=(it.prototype.format=function(e,t){return this.func(st(e,null,t))},it.prototype.formatRange=function(e,t,n){return this.func(st(e,t,n))},it);function it(e){this.func=e}function ot(e,t){return"object"==typeof e&&e?("string"==typeof t&&(e=Se({separator:t},e)),new Qe(e)):"string"==typeof e?new tt(e,t):"function"==typeof e?new rt(e):void 0}function at(e,t){void 0===t&&(t=!1);var n=e<0?"-":"+",r=Math.abs(e),i=Math.floor(r/60),o=Math.round(r%60);return t?n+le(i,2)+":"+le(o,2):"GMT"+n+i+(o?":"+le(o,2):"")}function st(e,t,n,r){var i=lt(e,n.calendarSystem);return{date:i,start:i,end:t?lt(t,n.calendarSystem):null,timeZone:n.timeZone,localeCodes:n.locale.codes,separator:r}}function lt(e,t){var n=t.markerToArray(e.marker);return{marker:e.marker,timeZoneOffset:e.timeZoneOffset,array:n,year:n[0],month:n[1],day:n[2],hour:n[3],minute:n[4],second:n[5],millisecond:n[6]}}var ut=(ct.prototype.remove=function(){this.calendar.dispatch({type:"REMOVE_EVENT_SOURCE",sourceId:this.internalEventSource.sourceId})},ct.prototype.refetch=function(){this.calendar.dispatch({type:"FETCH_EVENT_SOURCES",sourceIds:[this.internalEventSource.sourceId]})},Object.defineProperty(ct.prototype,"id",{get:function(){return this.internalEventSource.publicId},enumerable:!0,configurable:!0}),Object.defineProperty(ct.prototype,"url",{get:function(){return this.internalEventSource.meta.url},enumerable:!0,configurable:!0}),ct);function ct(e,t){this.calendar=e,this.internalEventSource=t}var dt=(ht.prototype.setProp=function(e,t){var n,r,i;e in jt||(e in Yt?("function"==typeof Yt[e]&&(t=Yt[e](t)),this.mutate({standardProps:((n={})[e]=t,n)})):e in Nt&&(i=void 0,"function"==typeof Nt[e]&&(t=Nt[e](t)),i="color"===e?{backgroundColor:t,borderColor:t}:"editable"===e?{startEditable:t,durationEditable:t}:((r={})[e]=t,r),this.mutate({standardProps:{ui:i}})))},ht.prototype.setExtendedProp=function(e,t){var n;this.mutate({extendedProps:((n={})[e]=t,n)})},ht.prototype.setStart=function(e,t){void 0===t&&(t={});var n,r=this._calendar.dateEnv,i=r.createMarker(e);i&&this._instance&&(n=ve(this._instance.range.start,i,r,t.granularity),t.maintainDuration?this.mutate({datesDelta:n}):this.mutate({startDelta:n}))},ht.prototype.setEnd=function(e,t){void 0===t&&(t={});var n,r,i=this._calendar.dateEnv;(null==e||(n=i.createMarker(e)))&&this._instance&&(n?(r=ve(this._instance.range.end,n,i,t.granularity),this.mutate({endDelta:r})):this.mutate({standardProps:{hasEnd:!1}}))},ht.prototype.setDates=function(e,t,n){void 0===n&&(n={});var r,i,o,a,s=this._calendar.dateEnv,l={allDay:n.allDay},u=s.createMarker(e);u&&(null==t||(r=s.createMarker(t)))&&this._instance&&(i=this._instance.range,!0===n.allDay&&(i=pe(i)),o=ve(i.start,u,s,n.granularity),r?Q(o,a=ve(i.end,r,s,n.granularity))?this.mutate({datesDelta:o,standardProps:l}):this.mutate({startDelta:o,endDelta:a,standardProps:l}):(l.hasEnd=!1,this.mutate({datesDelta:o,standardProps:l})))},ht.prototype.moveStart=function(e){var t=X(e);t&&this.mutate({startDelta:t})},ht.prototype.moveEnd=function(e){var t=X(e);t&&this.mutate({endDelta:t})},ht.prototype.moveDates=function(e){var t=X(e);t&&this.mutate({datesDelta:t})},ht.prototype.setAllDay=function(e,t){void 0===t&&(t={});var n={allDay:e},r=t.maintainDuration;null==r&&(r=this._calendar.opt("allDayMaintainDuration")),this._def.allDay!==e&&(n.hasEnd=r),this.mutate({standardProps:n})},ht.prototype.formatRange=function(e){var t=this._calendar.dateEnv,n=this._instance,r=ot(e,this._calendar.opt("defaultRangeSeparator"));return this._def.hasEnd?t.formatRange(n.range.start,n.range.end,r,{forcedStartTzo:n.forcedStartTzo,forcedEndTzo:n.forcedEndTzo}):t.format(n.range.start,r,{forcedTzo:n.forcedStartTzo})},ht.prototype.mutate=function(e){var t,n=this._def,r=this._instance;r&&(this._calendar.dispatch({type:"MUTATE_EVENTS",instanceId:r.instanceId,mutation:e,fromApi:!0}),t=this._calendar.state.eventStore,this._def=t.defs[n.defId],this._instance=t.instances[r.instanceId])},ht.prototype.remove=function(){this._calendar.dispatch({type:"REMOVE_EVENT_DEF",defId:this._def.defId})},Object.defineProperty(ht.prototype,"source",{get:function(){var e=this._def.sourceId;return e?new ut(this._calendar,this._calendar.state.eventSources[e]):null},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"start",{get:function(){return this._instance?this._calendar.dateEnv.toDate(this._instance.range.start):null},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"end",{get:function(){return this._instance&&this._def.hasEnd?this._calendar.dateEnv.toDate(this._instance.range.end):null},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"id",{get:function(){return this._def.publicId},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"groupId",{get:function(){return this._def.groupId},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"allDay",{get:function(){return this._def.allDay},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"title",{get:function(){return this._def.title},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"url",{get:function(){return this._def.url},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"rendering",{get:function(){return this._def.rendering},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"startEditable",{get:function(){return this._def.ui.startEditable},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"durationEditable",{get:function(){return this._def.ui.durationEditable},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"constraint",{get:function(){return this._def.ui.constraints[0]||null},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"overlap",{get:function(){return this._def.ui.overlap},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"allow",{get:function(){return this._def.ui.allows[0]||null},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"backgroundColor",{get:function(){return this._def.ui.backgroundColor},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"borderColor",{get:function(){return this._def.ui.borderColor},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"textColor",{get:function(){return this._def.ui.textColor},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"classNames",{get:function(){return this._def.ui.classNames},enumerable:!0,configurable:!0}),Object.defineProperty(ht.prototype,"extendedProps",{get:function(){return this._def.extendedProps},enumerable:!0,configurable:!0}),ht);function ht(e,t,n){this._calendar=e,this._def=t,this._instance=n||null}function ft(e,t,n,r){var i={},o={},a={},s=[],l=[],u=vt(e.defs,t);for(var c in e.defs){"inverse-background"===(E=e.defs[c]).rendering&&(E.groupId?(i[E.groupId]=[],a[E.groupId]||(a[E.groupId]=E)):o[c]=[])}for(var d in e.instances){var h=e.instances[d],f=u[(E=e.defs[h.defId]).defId],p=h.range,g=!E.allDay&&r?ge(p,r):p,v=Ae(g,n);v&&("inverse-background"===E.rendering?E.groupId?i[E.groupId].push(v):o[h.defId].push(v):("background"===E.rendering?s:l).push({def:E,ui:f,instance:h,range:v,isStart:g.start&&g.start.valueOf()===v.start.valueOf(),isEnd:g.end&&g.end.valueOf()===v.end.valueOf()}))}for(var m in i)for(var y=0,S=He(i[m],n);y<S.length;y++){var E,b=S[y],f=u[(E=a[m]).defId];s.push({def:E,ui:f,instance:null,range:b,isStart:!1,isEnd:!1})}for(var c in o)for(var w=0,D=He(o[c],n);w<D.length;w++){b=D[w];s.push({def:e.defs[c],ui:u[c],instance:null,range:b,isStart:!1,isEnd:!1})}return{bg:s,fg:l}}function pt(e,t,n){var r=e.calendar,i=e.view;r.hasPublicHandlers("eventRender")&&(t=t.filter(function(e){var t=r.publiclyTrigger("eventRender",[{event:new dt(r,e.eventRange.def,e.eventRange.instance),isMirror:n,isStart:e.isStart,isEnd:e.isEnd,el:e.el,view:i}]);return!1!==t&&(t&&!0!==t&&(e.el=t),!0)}));for(var o,a,s=0,l=t;s<l.length;s++){var u=l[s];o=u.el,a=u,o.fcSeg=a}return t}function gt(e){return e.fcSeg||null}function vt(e,t){return De(e,function(e){return mt(e,t)})}function mt(e,t){var n=[];return t[""]&&n.push(t[""]),t[e.defId]&&n.push(t[e.defId]),n.push(e.ui),Lt(n)}function yt(e,t,n){var r=e.calendar,i=e.view;if(r.hasPublicHandlers("eventPositioned"))for(var o=0,a=t;o<a.length;o++){var s=a[o];r.publiclyTriggerAfterSizing("eventPositioned",[{event:new dt(r,s.eventRange.def,s.eventRange.instance),isMirror:n,isStart:s.isStart,isEnd:s.isEnd,el:s.el,view:i}])}r.state.eventSourceLoadingLevel||(r.afterSizingTriggers._eventsPositioned=[null])}function St(e,t,n){for(var r=e.calendar,i=e.view,o=0,a=t;o<a.length;o++){var s=a[o];r.trigger("eventElRemove",s.el)}if(r.hasPublicHandlers("eventDestroy"))for(var l=0,u=t;l<u.length;l++){s=u[l];r.publiclyTrigger("eventDestroy",[{event:new dt(r,s.eventRange.def,s.eventRange.instance),isMirror:n,el:s.el,view:i}])}}function Et(e,t,n,r){var i=vt(e.defs,t),o=Ne();for(var a in e.defs){var s=e.defs[a];o.defs[a]=function(e,t,n,r,i){var o=n.standardProps||{};null==o.hasEnd&&t.durationEditable&&(n.startDelta||n.endDelta)&&(o.hasEnd=!0);var a=Se({},e,o,{ui:Se({},e.ui,o.ui)});n.extendedProps&&(a.extendedProps=Se({},a.extendedProps,n.extendedProps));for(var s=0,l=r;s<l.length;s++){(0,l[s])(a,n,i)}!a.hasEnd&&i.opt("forceEventDuration")&&(a.hasEnd=!0);return a}(s,i[a],n,r.pluginSystem.hooks.eventDefMutationAppliers,r)}for(var l in e.instances){var u=e.instances[l],s=o.defs[u.defId];o.instances[l]=function(e,t,n,r,i){var o=i.dateEnv,a=r.standardProps&&!0===r.standardProps.allDay,s=r.standardProps&&!1===r.standardProps.hasEnd,l=Se({},e);a&&(l.range=pe(l.range));r.datesDelta&&n.startEditable&&(l.range={start:o.add(l.range.start,r.datesDelta),end:o.add(l.range.end,r.datesDelta)});r.startDelta&&n.durationEditable&&(l.range={start:o.add(l.range.start,r.startDelta),end:l.range.end});r.endDelta&&n.durationEditable&&(l.range={start:l.range.start,end:o.add(l.range.end,r.endDelta)});s&&(l.range={start:l.range.start,end:i.getDefaultEventEnd(t.allDay,l.range.start)});t.allDay&&(l.range={start:j(l.range.start),end:j(l.range.end)});l.range.end<l.range.start&&(l.range.end=i.getDefaultEventEnd(t.allDay,l.range.start));return l}(u,s,i[u.defId],n,r)}return o}function bt(e,t,n,r,i){switch(t.type){case"RECEIVE_EVENTS":return function(e,t,n,r,i,o){if(t&&n===t.latestFetchId){var a=xe(function(e,t,n){var r=n.opt("eventDataTransform"),i=t?t.eventDataTransform:null;return i&&(e=Ie(e,i)),r&&(e=Ie(e,r)),e}(i,t,o),t.sourceId,o);return r&&(a=ke(a,r,o)),Oe(wt(e,t.sourceId),a)}return e}(e,n[t.sourceId],t.fetchId,t.fetchRange,t.rawEvents,i);case"ADD_EVENTS":return function(e,t,n,r){n&&(t=ke(t,n,r));return Oe(e,t)}(e,t.eventStore,r?r.activeRange:null,i);case"MERGE_EVENTS":return Oe(e,t.eventStore);case"PREV":case"NEXT":case"SET_DATE":case"SET_VIEW_TYPE":return r?ke(e,r.activeRange,i):e;case"CHANGE_TIMEZONE":return h=e,f=t.oldDateEnv,p=i.dateEnv,g=h.defs,v=De(h.instances,function(e){var t=g[e.defId];return t.allDay||t.recurringDef?e:Se({},e,{range:{start:p.createMarker(f.toDate(e.range.start,e.forcedStartTzo)),end:p.createMarker(f.toDate(e.range.end,e.forcedEndTzo))},forcedStartTzo:p.canComputeOffset?null:e.forcedStartTzo,forcedEndTzo:p.canComputeOffset?null:e.forcedEndTzo})}),{defs:g,instances:v};case"MUTATE_EVENTS":return o=e,a=t.instanceId,s=t.mutation,l=t.fromApi,u=i,c=Re(o,a),d=l?{"":{startEditable:!0,durationEditable:!0,constraints:[],overlap:null,allows:[],backgroundColor:"",borderColor:"",textColor:"",classNames:[]}}:u.eventUiBases,c=Et(c,d,s,u),Oe(o,c);case"REMOVE_EVENT_INSTANCES":return Dt(e,t.instances);case"REMOVE_EVENT_DEF":return Pe(e,function(e){return e.defId!==t.defId});case"REMOVE_EVENT_SOURCE":return wt(e,t.sourceId);case"REMOVE_ALL_EVENT_SOURCES":return Pe(e,function(e){return!e.sourceId});case"REMOVE_ALL_EVENTS":return Ne();case"RESET_EVENTS":return{defs:e.defs,instances:e.instances};default:return e}var o,a,s,l,u,c,d,h,f,p,g,v}function wt(e,t){return Pe(e,function(e){return e.sourceId!==t})}function Dt(e,t){return{defs:e.defs,instances:we(e.instances,function(e){return!t[e.instanceId]})}}function Tt(e,t){return _t({eventDrag:e},t)}function _t(e,t){var n=t.view,r=Se({businessHours:n?n.props.businessHours:Ne(),dateSelection:"",eventStore:t.state.eventStore,eventUiBases:t.eventUiBases,eventSelection:"",eventDrag:null,eventResize:null},e);return(t.pluginSystem.hooks.isPropsValid||Ct)(r,t)}function Ct(e,t,n,r){return void 0===n&&(n={}),!(e.eventDrag&&!function(e,t,n,r){var i=e.eventDrag,o=i.mutatedEvents,a=o.defs,s=o.instances,l=vt(a,i.isEvent?e.eventUiBases:{"":t.selectionConfig});r&&(l=De(l,r));var u=Dt(e.eventStore,i.affectedEvents.instances),c=u.defs,d=u.instances,h=vt(c,e.eventUiBases);for(var f in s){var p=s[f],g=p.range,v=l[p.defId],m=a[p.defId];if(!xt(v.constraints,g,u,e.businessHours,t))return!1;var y=t.opt("eventOverlap");for(var S in"function"!=typeof y&&(y=null),d){var E=d[S];if(je(g,E.range)){if(!1===h[E.defId].overlap&&i.isEvent)return!1;if(!1===v.overlap)return!1;if(y&&!y(new dt(t,c[E.defId],E),new dt(t,m,p)))return!1}}for(var b=t.state.eventStore,w=0,D=v.allows;w<D.length;w++){var T=D[w],_=Se({},n,{range:p.range,allDay:m.allDay}),C=b.defs[m.defId],x=b.instances[f],M=void 0;if(M=C?new dt(t,C,x):new dt(t,m),!T(t.buildDateSpanApi(_),M))return!1}}return!0}(e,t,n,r))&&!(e.dateSelection&&!function(e,t,n,r){var i=e.eventStore,o=i.defs,a=i.instances,s=e.dateSelection,l=s.range,u=t.selectionConfig;r&&(u=r(u));if(!xt(u.constraints,l,i,e.businessHours,t))return!1;var c=t.opt("selectOverlap");"function"!=typeof c&&(c=null);for(var d in a){var h=a[d];if(je(l,h.range)){if(!1===u.overlap)return!1;if(c&&!c(new dt(t,o[h.defId],h)))return!1}}for(var f=0,p=u.allows;f<p.length;f++){var g=p[f],v=Se({},n,s);if(!g(t.buildDateSpanApi(v),null))return!1}return!0}(e,t,n,r))}function xt(e,t,n,r,i){for(var o=0,a=e;o<a.length;o++){if(!function(e,t){for(var n=0,r=e;n<r.length;n++){if(Ue(r[n],t))return!0}return!1}(function(t,e,n,r,i){{if("businessHours"===t)return Mt(ke(r,e,i));if("string"==typeof t)return Mt(Pe(n,function(e){return e.groupId===t}));if("object"==typeof t&&t)return Mt(ke(t,e,i))}return[]}(a[o],t,n,r,i),t))return}return 1}function Mt(e){var t=e.instances,n=[];for(var r in t)n.push(t[r].range);return n}function kt(e){return(e+"").replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/'/g,"&#039;").replace(/"/g,"&quot;").replace(/\n/g,"<br />")}function Rt(e){var t=[];for(var n in e){var r=e[n];null!=r&&""!==r&&t.push(n+":"+r)}return t.join(";")}function It(e){return Array.isArray(e)?e:"string"==typeof e?e.split(/\s+/):[]}var Nt={editable:Boolean,startEditable:Boolean,durationEditable:Boolean,constraint:null,overlap:null,allow:null,className:It,classNames:It,color:String,backgroundColor:String,borderColor:String,textColor:String};function Ot(e,t,n){var r,i,o=fe(e,Nt,{},n),a=(r=o.constraint,i=t,Array.isArray(r)?xe(r,"",i,!0):"object"==typeof r&&r?xe([r],"",i,!0):null!=r?String(r):null);return{startEditable:null!=o.startEditable?o.startEditable:o.editable,durationEditable:null!=o.durationEditable?o.durationEditable:o.editable,constraints:null!=a?[a]:[],overlap:o.overlap,allows:null!=o.allow?[o.allow]:[],backgroundColor:o.backgroundColor||o.color,borderColor:o.borderColor||o.color,textColor:o.textColor,classNames:o.classNames.concat(o.className)}}function Pt(e,t,n,r){var i={},o={};for(var a in Nt){var s=e+se(a);i[a]=t[s],o[s]=!0}if("event"===e&&(i.editable=t.editable),r)for(var a in t)o[a]||(r[a]=t[a]);return Ot(i,n)}var Ht={startEditable:null,durationEditable:null,constraints:[],overlap:null,allows:[],backgroundColor:"",borderColor:"",textColor:"",classNames:[]};function Lt(e){return e.reduce(At,Ht)}function At(e,t){return{startEditable:null!=t.startEditable?t.startEditable:e.startEditable,durationEditable:null!=t.durationEditable?t.durationEditable:e.durationEditable,constraints:e.constraints.concat(t.constraints),overlap:"boolean"==typeof t.overlap?t.overlap:e.overlap,allows:e.allows.concat(t.allows),backgroundColor:t.backgroundColor||e.backgroundColor,borderColor:t.borderColor||e.borderColor,textColor:t.textColor||e.textColor,classNames:e.classNames.concat(t.classNames)}}var Yt={id:String,groupId:String,title:String,url:String,rendering:String,extendedProps:null},jt={start:null,date:null,end:null,allDay:null},Ut=0;function Wt(e,t,n,r){var i=function(e,t){var n=null;{var r;e&&(r=t.state.eventSources[e],n=r.allDayDefault)}null==n&&(n=t.opt("allDayDefault"));return n}(t,n),o={},a=function(e,t,n,r,i){for(var o=0;o<r.length;o++){var a={},s=r[o].parse(e,a,n);if(s){var l=a.allDay;return delete a.allDay,null==l&&null==(l=t)&&null==(l=s.allDayGuess)&&(l=!1),Se(i,a),{allDay:l,duration:s.duration,typeData:s.typeData,typeId:o}}}return null}(e,i,n.dateEnv,n.pluginSystem.hooks.recurringTypes,o);if(a)return(s=Vt(o,t,a.allDay,Boolean(a.duration),n)).recurringDef={typeId:a.typeId,typeData:a.typeData,duration:a.duration},{def:s,instance:null};var s,l={},u=function(e,t,n,r,i){var o,a,s=function(e,t){var n=fe(e,jt,{},t);return n.start=null!==n.start?n.start:n.date,delete n.date,n}(e,r),l=s.allDay,u=null,c=!1,d=null;if(o=n.dateEnv.createMarkerMeta(s.start))u=o.marker;else if(!i)return null;null!=s.end&&(a=n.dateEnv.createMarkerMeta(s.end));null==l&&(l=null!=t?t:(!o||o.isTimeUnspecified)&&(!a||a.isTimeUnspecified));l&&u&&(u=j(u));a&&(d=a.marker,l&&(d=j(d)),u&&d<=u&&(d=null));d?c=!0:i||(c=n.opt("forceEventDuration")||!1,d=n.dateEnv.add(u,l?n.defaultAllDayEventDuration:n.defaultTimedEventDuration));return{allDay:l,hasEnd:c,range:{start:u,end:d},forcedStartTzo:o?o.forcedTzo:null,forcedEndTzo:a?a.forcedTzo:null}}(e,i,n,l,r);return u?{def:s=Vt(l,t,u.allDay,u.hasEnd,n),instance:Ft(s.defId,u.range,u.forcedStartTzo,u.forcedEndTzo)}:null}function Vt(e,t,n,r,i){var o,a,s,l,u,c={},d=(o=i,a=c,l=fe(e,Yt,{},s={}),u=Ot(s,o,a),l.publicId=l.id,delete l.id,l.ui=u,l);d.defId=String(Ut++),d.sourceId=t,d.allDay=n,d.hasEnd=r;for(var h=0,f=i.pluginSystem.hooks.eventDefParsers;h<f.length;h++){var p={};(0,f[h])(d,c,p),c=p}return d.extendedProps=Se(c,d.extendedProps||{}),Object.freeze(d.ui.classNames),Object.freeze(d.extendedProps),d}function Ft(e,t,n,r){return{instanceId:String(Ut++),defId:e,range:t,forcedStartTzo:null==n?null:n,forcedEndTzo:null==r?null:r}}var zt={startTime:"09:00",endTime:"17:00",daysOfWeek:[1,2,3,4,5],rendering:"inverse-background",classNames:"fc-nonbusiness",groupId:"_businessHours"};function Bt(e,t){return xe(function(e){var t;t=!0===e?[{}]:Array.isArray(e)?e.filter(function(e){return e.daysOfWeek}):"object"==typeof e&&e?[e]:[];return t=t.map(function(e){return Se({},zt,e)})}(e),"",t)}function qt(e,n,t){void 0===t&&(t=[]);var r,i,o=[];function a(){if(i){for(var e=0,t=o;e<t.length;e++){t[e].unrender()}n&&n.apply(r,i),i=null}}function s(){i&&Ve(i,arguments)||(a(),r=this,i=arguments,e.apply(this,arguments))}s.dependents=o,s.unrender=a;for(var l=0,u=t;l<u.length;l++){u[l].dependents.push(s)}return s}var Gt=Ne(),Zt=(Xt.prototype.splitProps=function(e){var n=this,t=this.getKeyInfo(e),r=this.getKeysForEventDefs(e.eventStore),i=this.splitDateSelection(e.dateSelection),o=this.splitIndividualUi(e.eventUiBases,r),a=this.splitEventStore(e.eventStore,r),s=this.splitEventDrag(e.eventDrag),l=this.splitEventResize(e.eventResize),u={};for(var c in this.eventUiBuilders=De(t,function(e,t){return n.eventUiBuilders[t]||Fe($t)}),t){var d=t[c],h=a[c]||Gt,f=this.eventUiBuilders[c];u[c]={businessHours:d.businessHours||e.businessHours,dateSelection:i[c]||null,eventStore:h,eventUiBases:f(e.eventUiBases[""],d.ui,o[c]),eventSelection:h.instances[e.eventSelection]?e.eventSelection:"",eventDrag:s[c]||null,eventResize:l[c]||null}}return u},Xt.prototype._splitDateSpan=function(e){var t={};if(e)for(var n=0,r=this.getKeysForDateSpan(e);n<r.length;n++)t[r[n]]=e;return t},Xt.prototype._getKeysForEventDefs=function(e){var t=this;return De(e.defs,function(e){return t.getKeysForEventDef(e)})},Xt.prototype._splitEventStore=function(e,t){var n=e.defs,r=e.instances,i={};for(var o in n)for(var a=0,s=t[o];a<s.length;a++)i[u=s[a]]||(i[u]=Ne()),i[u].defs[o]=n[o];for(var l in r)for(var u,c=r[l],d=0,h=t[c.defId];d<h.length;d++)i[u=h[d]]&&(i[u].instances[l]=c);return i},Xt.prototype._splitIndividualUi=function(e,t){var n={};for(var r in e)if(r)for(var i=0,o=t[r];i<o.length;i++){var a=o[i];n[a]||(n[a]={}),n[a][r]=e[r]}return n},Xt.prototype._splitInteraction=function(t){var n={};if(t){var r=this._splitEventStore(t.affectedEvents,this._getKeysForEventDefs(t.affectedEvents)),e=this._getKeysForEventDefs(t.mutatedEvents),i=this._splitEventStore(t.mutatedEvents,e),o=function(e){n[e]||(n[e]={affectedEvents:r[e]||Gt,mutatedEvents:i[e]||Gt,isEvent:t.isEvent,origSeg:t.origSeg})};for(var a in r)o(a);for(var a in i)o(a)}return n},Xt);function Xt(){this.getKeysForEventDefs=Fe(this._getKeysForEventDefs),this.splitDateSelection=Fe(this._splitDateSpan),this.splitEventStore=Fe(this._splitEventStore),this.splitIndividualUi=Fe(this._splitIndividualUi),this.splitEventDrag=Fe(this._splitInteraction),this.splitEventResize=Fe(this._splitInteraction),this.eventUiBuilders={}}function $t(e,t,n){var r=[];e&&r.push(e),t&&r.push(t);var i={"":Lt(r)};return n&&Se(i,n),i}function Jt(e,t,n,r,i){var o,a,s,l;return n instanceof Date?o=n:(o=n.date,a=n.type,s=n.forceOff),l={date:t.formatIso(o,{omitTime:!0}),type:a||"day"},"string"==typeof r&&(i=r,r=null),r=r?" "+function(e){var t=[];for(var n in e){var r=e[n];null!=r&&t.push(n+'="'+kt(r)+'"')}return t.join(" ")}(r):"",i=i||"",!s&&e.navLinks?"<a"+r+' data-goto="'+kt(JSON.stringify(l))+'">'+i+"</a>":"<span"+r+">"+i+"</span>"}function Qt(e,t,n,r){var i,o,a=n.calendar,s=n.options,l=n.theme,u=n.dateEnv,c=[];return We(t.activeRange,e)?(c.push("fc-"+N[e.getUTCDay()]),s.monthMode&&u.getMonth(e)!==u.getMonth(t.currentRange.start)&&c.push("fc-other-month"),o=O(i=j(a.getNow()),1),e<i?c.push("fc-past"):o<=e?c.push("fc-future"):(c.push("fc-today"),!0!==r&&c.push(l.getClass("today")))):c.push("fc-disabled-day"),c}function Kt(e,t,n){function r(){o||(o=!0,t.apply(this,arguments))}function i(){o||(o=!0,n&&n.apply(this,arguments))}var o=!1,a=e(r,i);a&&"function"==typeof a.then&&a.then(r,i)}var en=(tn.mixInto=function(e){this.mixIntoObj(e.prototype)},tn.mixIntoObj=function(t){var n=this;Object.getOwnPropertyNames(this.prototype).forEach(function(e){t[e]||(t[e]=n.prototype[e])})},tn.mixOver=function(t){var n=this;Object.getOwnPropertyNames(this.prototype).forEach(function(e){t.prototype[e]=n.prototype[e]})},tn);function tn(){}var nn,rn=(ye(on,nn=en),on.prototype.on=function(e,t){return an(this._handlers||(this._handlers={}),e,t),this},on.prototype.one=function(e,t){return an(this._oneHandlers||(this._oneHandlers={}),e,t),this},on.prototype.off=function(e,t){return this._handlers&&sn(this._handlers,e,t),this._oneHandlers&&sn(this._oneHandlers,e,t),this},on.prototype.trigger=function(e){for(var t=[],n=1;n<arguments.length;n++)t[n-1]=arguments[n];return this.triggerWith(e,this,t),this},on.prototype.triggerWith=function(e,t,n){return this._handlers&&ce(this._handlers[e],t,n),this._oneHandlers&&(ce(this._oneHandlers[e],t,n),delete this._oneHandlers[e]),this},on.prototype.hasHandlers=function(e){return this._handlers&&this._handlers[e]&&this._handlers[e].length||this._oneHandlers&&this._oneHandlers[e]&&this._oneHandlers[e].length},on);function on(){return null!==nn&&nn.apply(this,arguments)||this}function an(e,t,n){(e[t]||(e[t]=[])).push(n)}function sn(e,t,n){n?e[t]&&(e[t]=e[t].filter(function(e){return e!==n})):delete e[t]}var ln=(un.prototype.build=function(){var e=this.originEl,t=this.originClientRect=e.getBoundingClientRect();this.isHorizontal&&this.buildElHorizontals(t.left),this.isVertical&&this.buildElVerticals(t.top)},un.prototype.buildElHorizontals=function(e){for(var t=[],n=[],r=0,i=this.els;r<i.length;r++){var o=i[r].getBoundingClientRect();t.push(o.left-e),n.push(o.right-e)}this.lefts=t,this.rights=n},un.prototype.buildElVerticals=function(e){for(var t=[],n=[],r=0,i=this.els;r<i.length;r++){var o=i[r].getBoundingClientRect();t.push(o.top-e),n.push(o.bottom-e)}this.tops=t,this.bottoms=n},un.prototype.leftToIndex=function(e){for(var t=this.lefts,n=this.rights,r=t.length,i=0;i<r;i++)if(e>=t[i]&&e<n[i])return i},un.prototype.topToIndex=function(e){for(var t=this.tops,n=this.bottoms,r=t.length,i=0;i<r;i++)if(e>=t[i]&&e<n[i])return i},un.prototype.getWidth=function(e){return this.rights[e]-this.lefts[e]},un.prototype.getHeight=function(e){return this.bottoms[e]-this.tops[e]},un);function un(e,t,n,r){this.originEl=e,this.els=t,this.isHorizontal=n,this.isVertical=r}var cn=(dn.prototype.getMaxScrollTop=function(){return this.getScrollHeight()-this.getClientHeight()},dn.prototype.getMaxScrollLeft=function(){return this.getScrollWidth()-this.getClientWidth()},dn.prototype.canScrollVertically=function(){return 0<this.getMaxScrollTop()},dn.prototype.canScrollHorizontally=function(){return 0<this.getMaxScrollLeft()},dn.prototype.canScrollUp=function(){return 0<this.getScrollTop()},dn.prototype.canScrollDown=function(){return this.getScrollTop()<this.getMaxScrollTop()},dn.prototype.canScrollLeft=function(){return 0<this.getScrollLeft()},dn.prototype.canScrollRight=function(){return this.getScrollLeft()<this.getMaxScrollLeft()},dn);function dn(){}var hn,fn=(ye(pn,hn=cn),pn.prototype.getScrollTop=function(){return this.el.scrollTop},pn.prototype.getScrollLeft=function(){return this.el.scrollLeft},pn.prototype.setScrollTop=function(e){this.el.scrollTop=e},pn.prototype.setScrollLeft=function(e){this.el.scrollLeft=e},pn.prototype.getScrollWidth=function(){return this.el.scrollWidth},pn.prototype.getScrollHeight=function(){return this.el.scrollHeight},pn.prototype.getClientHeight=function(){return this.el.clientHeight},pn.prototype.getClientWidth=function(){return this.el.clientWidth},pn);function pn(e){var t=hn.call(this)||this;return t.el=e,t}var gn,vn=(ye(mn,gn=cn),mn.prototype.getScrollTop=function(){return window.pageYOffset},mn.prototype.getScrollLeft=function(){return window.pageXOffset},mn.prototype.setScrollTop=function(e){window.scroll(window.pageXOffset,e)},mn.prototype.setScrollLeft=function(e){window.scroll(e,window.pageYOffset)},mn.prototype.getScrollWidth=function(){return document.documentElement.scrollWidth},mn.prototype.getScrollHeight=function(){return document.documentElement.scrollHeight},mn.prototype.getClientHeight=function(){return document.documentElement.clientHeight},mn.prototype.getClientWidth=function(){return document.documentElement.clientWidth},mn);function mn(){return null!==gn&&gn.apply(this,arguments)||this}var yn,Sn=(ye(En,yn=fn),En.prototype.clear=function(){this.setHeight("auto"),this.applyOverflow()},En.prototype.destroy=function(){r(this.el)},En.prototype.applyOverflow=function(){p(this.el,{overflowX:this.overflowX,overflowY:this.overflowY})},En.prototype.lockOverflow=function(e){var t=this.overflowX,n=this.overflowY;e=e||this.getScrollbarWidths(),"auto"===t&&(t=e.bottom||this.canScrollHorizontally()?"scroll":"hidden"),"auto"===n&&(n=e.left||e.right||this.canScrollVertically()?"scroll":"hidden"),p(this.el,{overflowX:t,overflowY:n})},En.prototype.setHeight=function(e){g(this.el,"height",e)},En.prototype.getScrollbarWidths=function(){var e=D(this.el);return{left:e.scrollbarLeft,right:e.scrollbarRight,bottom:e.scrollbarBottom}},En);function En(e,t){var n=yn.call(this,a("div",{className:"fc-scroller"}))||this;return n.overflowX=e,n.overflowY=t,n.applyOverflow(),n}var bn=(wn.prototype.processIconOverride=function(){this.iconOverrideOption&&this.setIconOverride(this.calendarOptions[this.iconOverrideOption])},wn.prototype.setIconOverride=function(e){var t,n;if("object"==typeof e&&e){for(n in t=Se({},this.iconClasses),e)t[n]=this.applyIconOverridePrefix(e[n]);this.iconClasses=t}else!1===e&&(this.iconClasses={})},wn.prototype.applyIconOverridePrefix=function(e){var t=this.iconOverridePrefix;return t&&0!==e.indexOf(t)&&(e=t+e),e},wn.prototype.getClass=function(e){return this.classes[e]||""},wn.prototype.getIconClass=function(e){var t=this.iconClasses[e];return t?this.baseIconClass+" "+t:""},wn.prototype.getCustomButtonIconClass=function(e){var t;return this.iconOverrideCustomButtonOption&&(t=e[this.iconOverrideCustomButtonOption])?this.baseIconClass+" "+this.applyIconOverridePrefix(t):""},wn);function wn(e){this.calendarOptions=e,this.processIconOverride()}bn.prototype.classes={},bn.prototype.iconClasses={},bn.prototype.baseIconClass="",bn.prototype.iconOverridePrefix="";var Dn=0,Tn=(_n.prototype.extend=function(e,t){return new _n(this.calendar,this.theme,this.dateEnv,e||this.options,t||this.view)},_n);function _n(e,t,n,r,i){this.calendar=e,this.theme=t,this.dateEnv=n,this.options=r,this.view=i,this.isRtl="rtl"===r.dir,this.eventOrderSpecs=re(r.eventOrder),this.nextDayThreshold=X(r.nextDayThreshold)}var Cn=(xn.addEqualityFuncs=function(e){this.prototype.equalityFuncs=Se({},this.prototype.equalityFuncs,e)},xn.prototype.receiveProps=function(e,t){this.receiveContext(t);var n=function(e,t,n){var r={},i=!1;for(var o in t)o in e&&(e[o]===t[o]||n[o]&&n[o](e[o],t[o]))?r[o]=e[o]:(r[o]=t[o],i=!0);for(var o in e)if(!(o in t)){i=!0;break}return{anyChanges:i,comboProps:r}}(this.props||{},e,this.equalityFuncs),r=n.anyChanges,i=n.comboProps;this.props=i,r&&(this.everRendered&&this.beforeUpdate(),this.render(i,t),this.everRendered&&this.afterUpdate()),this.everRendered=!0},xn.prototype.receiveContext=function(e){var t=this.context;this.context=e,t||this.firstContext(e)},xn.prototype.render=function(e,t){},xn.prototype.firstContext=function(e){},xn.prototype.beforeUpdate=function(){},xn.prototype.afterUpdate=function(){},xn.prototype.destroy=function(){},xn);function xn(){this.everRendered=!1,this.uid=String(Dn++)}Cn.prototype.equalityFuncs={};var Mn,kn=(ye(Rn,Mn=Cn),Rn.prototype.destroy=function(){Mn.prototype.destroy.call(this),r(this.el)},Rn.prototype.buildPositionCaches=function(){},Rn.prototype.queryHit=function(e,t,n,r){return null},Rn.prototype.isInteractionValid=function(e){var t=this.context.calendar,n=this.props.dateProfile,r=e.mutatedEvents.instances;if(n)for(var i in r)if(!Ue(n.validRange,r[i].range))return!1;return Tt(e,t)},Rn.prototype.isDateSelectionValid=function(e){var t=this.context.calendar,n=this.props.dateProfile;return!(n&&!Ue(n.validRange,e.range))&&_t({dateSelection:e},t)},Rn.prototype.isValidSegDownEl=function(e){return!this.props.eventDrag&&!this.props.eventResize&&!c(e,".fc-mirror")&&(this.isPopover()||!this.isInPopover(e))},Rn.prototype.isValidDateDownEl=function(e){var t=c(e,this.fgSegSelector);return(!t||t.classList.contains("fc-mirror"))&&!c(e,".fc-more")&&!c(e,"a[data-goto]")&&!this.isInPopover(e)},Rn.prototype.isPopover=function(){return this.el.classList.contains("fc-popover")},Rn.prototype.isInPopover=function(e){return Boolean(c(e,".fc-popover"))},Rn);function Rn(e){var t=Mn.call(this)||this;return t.el=e,t}kn.prototype.fgSegSelector=".fc-event-container > *",kn.prototype.bgSegSelector=".fc-bgevent:not(.fc-nonbusiness)";var In=0;function Nn(e){return{id:String(In++),deps:e.deps||[],reducers:e.reducers||[],eventDefParsers:e.eventDefParsers||[],isDraggableTransformers:e.isDraggableTransformers||[],eventDragMutationMassagers:e.eventDragMutationMassagers||[],eventDefMutationAppliers:e.eventDefMutationAppliers||[],dateSelectionTransformers:e.dateSelectionTransformers||[],datePointTransforms:e.datePointTransforms||[],dateSpanTransforms:e.dateSpanTransforms||[],views:e.views||{},viewPropsTransformers:e.viewPropsTransformers||[],isPropsValid:e.isPropsValid||null,externalDefTransforms:e.externalDefTransforms||[],eventResizeJoinTransforms:e.eventResizeJoinTransforms||[],viewContainerModifiers:e.viewContainerModifiers||[],eventDropTransformers:e.eventDropTransformers||[],componentInteractions:e.componentInteractions||[],calendarInteractions:e.calendarInteractions||[],themeClasses:e.themeClasses||{},eventSourceDefs:e.eventSourceDefs||[],cmdFormatter:e.cmdFormatter,recurringTypes:e.recurringTypes||[],namedTimeZonedImpl:e.namedTimeZonedImpl,defaultView:e.defaultView||"",elementDraggingImpl:e.elementDraggingImpl,optionChangeHandlers:e.optionChangeHandlers||{}}}var On=(Pn.prototype.add=function(e){if(!this.addedHash[e.id]){this.addedHash[e.id]=!0;for(var t=0,n=e.deps;t<n.length;t++){var r=n[t];this.add(r)}this.hooks=(i=this.hooks,o=e,{reducers:i.reducers.concat(o.reducers),eventDefParsers:i.eventDefParsers.concat(o.eventDefParsers),isDraggableTransformers:i.isDraggableTransformers.concat(o.isDraggableTransformers),eventDragMutationMassagers:i.eventDragMutationMassagers.concat(o.eventDragMutationMassagers),eventDefMutationAppliers:i.eventDefMutationAppliers.concat(o.eventDefMutationAppliers),dateSelectionTransformers:i.dateSelectionTransformers.concat(o.dateSelectionTransformers),datePointTransforms:i.datePointTransforms.concat(o.datePointTransforms),dateSpanTransforms:i.dateSpanTransforms.concat(o.dateSpanTransforms),views:Se({},i.views,o.views),viewPropsTransformers:i.viewPropsTransformers.concat(o.viewPropsTransformers),isPropsValid:o.isPropsValid||i.isPropsValid,externalDefTransforms:i.externalDefTransforms.concat(o.externalDefTransforms),eventResizeJoinTransforms:i.eventResizeJoinTransforms.concat(o.eventResizeJoinTransforms),viewContainerModifiers:i.viewContainerModifiers.concat(o.viewContainerModifiers),eventDropTransformers:i.eventDropTransformers.concat(o.eventDropTransformers),calendarInteractions:i.calendarInteractions.concat(o.calendarInteractions),componentInteractions:i.componentInteractions.concat(o.componentInteractions),themeClasses:Se({},i.themeClasses,o.themeClasses),eventSourceDefs:i.eventSourceDefs.concat(o.eventSourceDefs),cmdFormatter:o.cmdFormatter||i.cmdFormatter,recurringTypes:i.recurringTypes.concat(o.recurringTypes),namedTimeZonedImpl:o.namedTimeZonedImpl||i.namedTimeZonedImpl,defaultView:i.defaultView||o.defaultView,elementDraggingImpl:i.elementDraggingImpl||o.elementDraggingImpl,optionChangeHandlers:Se({},i.optionChangeHandlers,o.optionChangeHandlers)})}var i,o},Pn);function Pn(){this.hooks={reducers:[],eventDefParsers:[],isDraggableTransformers:[],eventDragMutationMassagers:[],eventDefMutationAppliers:[],dateSelectionTransformers:[],datePointTransforms:[],dateSpanTransforms:[],views:{},viewPropsTransformers:[],isPropsValid:null,externalDefTransforms:[],eventResizeJoinTransforms:[],viewContainerModifiers:[],eventDropTransformers:[],componentInteractions:[],calendarInteractions:[],themeClasses:{},eventSourceDefs:[],cmdFormatter:null,recurringTypes:[],namedTimeZonedImpl:null,defaultView:"",elementDraggingImpl:null,optionChangeHandlers:{}},this.addedHash={}}var Hn=Nn({eventSourceDefs:[{ignoreRange:!0,parseMeta:function(e){return Array.isArray(e)?e:Array.isArray(e.events)?e.events:null},fetch:function(e,t){t({rawEvents:e.eventSource.meta})}}]}),Ln=Nn({eventSourceDefs:[{parseMeta:function(e){return"function"==typeof e?e:"function"==typeof e.events?e.events:null},fetch:function(e,t,n){var r=e.calendar.dateEnv;Kt(e.eventSource.meta.bind(null,{start:r.toDate(e.range.start),end:r.toDate(e.range.end),startStr:r.formatIso(e.range.start),endStr:r.formatIso(e.range.end),timeZone:r.timeZone}),function(e){t({rawEvents:e})},n)}}]});function An(e,t,n,r,i){var o,a,s=null;"GET"===(e=e.toUpperCase())?(a=n,t=(o=t)+(-1===o.indexOf("?")?"?":"&")+Yn(a)):s=Yn(n);var l=new XMLHttpRequest;l.open(e,t,!0),"GET"!==e&&l.setRequestHeader("Content-Type","application/x-www-form-urlencoded"),l.onload=function(){if(200<=l.status&&l.status<400)try{var e=JSON.parse(l.responseText);r(e,l)}catch(e){i("Failure parsing JSON",l)}else i("Request failed",l)},l.onerror=function(){i("Request failed",l)},l.send(s)}function Yn(e){var t=[];for(var n in e)t.push(encodeURIComponent(n)+"="+encodeURIComponent(e[n]));return t.join("&")}var jn=Nn({eventSourceDefs:[{parseMeta:function(e){if("string"==typeof e)e={url:e};else if(!e||"object"!=typeof e||!e.url)return null;return{url:e.url,method:(e.method||"GET").toUpperCase(),extraParams:e.extraParams,startParam:e.startParam,endParam:e.endParam,timeZoneParam:e.timeZoneParam}},fetch:function(e,n,r){var t=e.eventSource.meta,i=function(e,t,n){var r,i,o,a,s=n.dateEnv,l={};null==(r=e.startParam)&&(r=n.opt("startParam"));null==(i=e.endParam)&&(i=n.opt("endParam"));null==(o=e.timeZoneParam)&&(o=n.opt("timeZoneParam"));a="function"==typeof e.extraParams?e.extraParams():e.extraParams||{};Se(l,a),l[r]=s.formatIso(t.start),l[i]=s.formatIso(t.end),"local"!==s.timeZone&&(l[o]=s.timeZone);return l}(t,e.range,e.calendar);An(t.method,t.url,i,function(e,t){n({rawEvents:e,xhr:t})},function(e,t){r({message:e,xhr:t})})}}]});var Un=Nn({recurringTypes:[{parse:function(e,t,n){var r,i,o=n.createMarker.bind(n),a=fe(e,{daysOfWeek:null,startTime:X,endTime:X,startRecur:o,endRecur:o},{},t),s=!1;for(var l in a)if(null!=a[l]){s=!0;break}if(s){var u=null;return"duration"in t&&(u=X(t.duration),delete t.duration),!u&&a.startTime&&a.endTime&&(r=a.endTime,i=a.startTime,u={years:r.years-i.years,months:r.months-i.months,days:r.days-i.days,milliseconds:r.milliseconds-i.milliseconds}),{allDayGuess:Boolean(!a.startTime&&!a.endTime),duration:u,typeData:a}}return null},expand:function(e,t,n){var r=Ae(t,{start:e.startRecur,end:e.endRecur});return r?function(e,t,n,r){var i=e?Te(e):null,o=j(n.start),a=n.end,s=[];for(;o<a;){var l=void 0;i&&!i[o.getUTCDay()]||(l=t?r.add(o,t):o,s.push(l)),o=O(o,1)}return s}(e.daysOfWeek,e.startTime,r,n):[]}}]});var Wn=Nn({optionChangeHandlers:{events:function(e,t,n){Vn([e],t,n)},eventSources:Vn,plugins:function(e,t){t.addPluginInputs(e)}}});function Vn(e,t,n){for(var r=_e(t.state.eventSources),i=[],o=0,a=e;o<a.length;o++){for(var s=a[o],l=!1,u=0;u<r.length;u++)if(n(r[u]._raw,s)){r.splice(u,1),l=!0;break}l||i.push(s)}for(var c=0,d=r;c<d.length;c++){var h=d[c];t.dispatch({type:"REMOVE_EVENT_SOURCE",sourceId:h.sourceId})}for(var f=0,p=i;f<p.length;f++){var g=p[f];t.addEventSource(g)}}var Fn={defaultRangeSeparator:" - ",titleRangeSeparator:" – ",defaultTimedEventDuration:"01:00:00",defaultAllDayEventDuration:{day:1},forceEventDuration:!1,nextDayThreshold:"00:00:00",columnHeader:!0,defaultView:"",aspectRatio:1.35,header:{left:"title",center:"",right:"today prev,next"},weekends:!0,weekNumbers:!1,weekNumberCalculation:"local",editable:!1,scrollTime:"06:00:00",minTime:"00:00:00",maxTime:"24:00:00",showNonCurrentDates:!0,lazyFetching:!0,startParam:"start",endParam:"end",timeZoneParam:"timeZone",timeZone:"local",locales:[],locale:"",timeGridEventMinHeight:0,themeSystem:"standard",dragRevertDuration:500,dragScroll:!0,allDayMaintainDuration:!1,unselectAuto:!0,dropAccept:"*",eventOrder:"start,-duration,allDay,title",eventLimit:!1,eventLimitClick:"popover",dayPopoverFormat:{month:"long",day:"numeric",year:"numeric"},handleWindowResize:!0,windowResizeDelay:100,longPressDelay:1e3,eventDragMinDistance:5},zn={header:{left:"next,prev today",center:"",right:"title"},buttonIcons:{prev:"fc-icon-chevron-right",next:"fc-icon-chevron-left",prevYear:"fc-icon-chevrons-right",nextYear:"fc-icon-chevrons-left"}},Bn=["header","footer","buttonText","buttonIcons"];var qn=[Hn,Ln,jn,Un,Wn];var Gn={code:"en",week:{dow:0,doy:4},dir:"ltr",buttonText:{prev:"prev",next:"next",prevYear:"prev year",nextYear:"next year",year:"year",today:"today",month:"month",week:"week",day:"day",list:"list"},weekLabel:"W",allDayText:"all-day",eventLimitText:"more",noEventsMessage:"No events to display"};function Zn(e){for(var t=0<e.length?e[0].code:"en",n=window.FullCalendarLocalesAll||[],r=window.FullCalendarLocales||{},i=n.concat(_e(r),e),o={en:Gn},a=0,s=i;a<s.length;a++){var l=s[a];o[l.code]=l}return{map:o,defaultCode:t}}function Xn(e,t){return"object"!=typeof e||Array.isArray(e)?(r=t,i=[].concat((n=e)||[]),o=function(e,t){for(var n=0;n<e.length;n++)for(var r=e[n].toLocaleLowerCase().split("-"),i=r.length;0<i;i--){var o=r.slice(0,i).join("-");if(t[o])return t[o]}return null}(i,r)||Gn,$n(n,i,o)):$n(e.code,[e.code],e);var n,r,i,o}function $n(e,t,n){var r=be([Gn,n],["buttonText"]);delete r.code;var i=r.week;return delete r.week,{codeArg:e,codes:t,week:i,simpleNumberFormat:new Intl.NumberFormat(e),options:r}}var Jn=(Qn.prototype.mutate=function(e,t,n){if(Object.keys(e).length||t.length){var r=n?this.dynamicOverrides:this.overrides;Se(r,e);for(var i=0,o=t;i<o.length;i++)delete r[o[i]];this.compute()}},Qn.prototype.compute=function(){var e=de(this.dynamicOverrides.locales,this.overrides.locales,Fn.locales),t=de(this.dynamicOverrides.locale,this.overrides.locale,Fn.locale),n=Zn(e),r=Xn(t||n.defaultCode,n.map).options,i="rtl"===de(this.dynamicOverrides.dir,this.overrides.dir,r.dir)?zn:{};this.dirDefaults=i,this.localeDefaults=r,this.computed=be([Fn,i,r,this.overrides,this.dynamicOverrides],Bn)},Qn);function Qn(e){this.overrides=Se({},e),this.dynamicOverrides={},this.compute()}var Kn={};var er,tr=(nr.prototype.getMarkerYear=function(e){return e.getUTCFullYear()},nr.prototype.getMarkerMonth=function(e){return e.getUTCMonth()},nr.prototype.getMarkerDay=function(e){return e.getUTCDate()},nr.prototype.arrayToMarker=z,nr.prototype.markerToArray=F,nr);function nr(){}er=tr,Kn["gregory"]=er;var rr=/^\s*(\d{4})(-(\d{2})(-(\d{2})([T ](\d{2}):(\d{2})(:(\d{2})(\.(\d+))?)?(Z|(([-+])(\d{2})(:?(\d{2}))?))?)?)?)?$/;function ir(e){var t=rr.exec(e);if(t){var n=new Date(Date.UTC(Number(t[1]),t[3]?Number(t[3])-1:0,Number(t[5]||1),Number(t[7]||0),Number(t[8]||0),Number(t[10]||0),t[12]?1e3*Number("0."+t[12]):0));if(B(n)){var r=null;return t[13]&&(r=("-"===t[15]?-1:1)*(60*Number(t[16]||0)+Number(t[18]||0))),{marker:n,isTimeUnspecified:!t[6],timeZoneOffset:r}}}return null}var or=(ar.prototype.createMarker=function(e){var t=this.createMarkerMeta(e);return null===t?null:t.marker},ar.prototype.createNowMarker=function(){return this.canComputeOffset?this.timestampToMarker((new Date).valueOf()):z(W(new Date))},ar.prototype.createMarkerMeta=function(e){if("string"==typeof e)return this.parse(e);var t=null;return"number"==typeof e?t=this.timestampToMarker(e):e instanceof Date?(e=e.valueOf(),isNaN(e)||(t=this.timestampToMarker(e))):Array.isArray(e)&&(t=z(e)),null!==t&&B(t)?{marker:t,isTimeUnspecified:!1,forcedTzo:null}:null},ar.prototype.parse=function(e){var t=ir(e);if(null===t)return null;var n=t.marker,r=null;return null!==t.timeZoneOffset&&(this.canComputeOffset?n=this.timestampToMarker(n.valueOf()-60*t.timeZoneOffset*1e3):r=t.timeZoneOffset),{marker:n,isTimeUnspecified:t.isTimeUnspecified,forcedTzo:r}},ar.prototype.getYear=function(e){return this.calendarSystem.getMarkerYear(e)},ar.prototype.getMonth=function(e){return this.calendarSystem.getMarkerMonth(e)},ar.prototype.add=function(e,t){var n=this.calendarSystem.markerToArray(e);return n[0]+=t.years,n[1]+=t.months,n[2]+=t.days,n[6]+=t.milliseconds,this.calendarSystem.arrayToMarker(n)},ar.prototype.subtract=function(e,t){var n=this.calendarSystem.markerToArray(e);return n[0]-=t.years,n[1]-=t.months,n[2]-=t.days,n[6]-=t.milliseconds,this.calendarSystem.arrayToMarker(n)},ar.prototype.addYears=function(e,t){var n=this.calendarSystem.markerToArray(e);return n[0]+=t,this.calendarSystem.arrayToMarker(n)},ar.prototype.addMonths=function(e,t){var n=this.calendarSystem.markerToArray(e);return n[1]+=t,this.calendarSystem.arrayToMarker(n)},ar.prototype.diffWholeYears=function(e,t){var n=this.calendarSystem;return q(e)===q(t)&&n.getMarkerDay(e)===n.getMarkerDay(t)&&n.getMarkerMonth(e)===n.getMarkerMonth(t)?n.getMarkerYear(t)-n.getMarkerYear(e):null},ar.prototype.diffWholeMonths=function(e,t){var n=this.calendarSystem;return q(e)===q(t)&&n.getMarkerDay(e)===n.getMarkerDay(t)?n.getMarkerMonth(t)-n.getMarkerMonth(e)+12*(n.getMarkerYear(t)-n.getMarkerYear(e)):null},ar.prototype.greatestWholeUnit=function(e,t){var n,r,i,o=this.diffWholeYears(e,t);return null!==o?{unit:"year",value:o}:null!==(o=this.diffWholeMonths(e,t))?{unit:"month",value:o}:null!==(o=A(e,t))?{unit:"week",value:o}:null!==(o=Y(e,t))?{unit:"day",value:o}:(n=e,ue(o=(t.valueOf()-n.valueOf())/36e5)?{unit:"hour",value:o}:(r=e,ue(o=(t.valueOf()-r.valueOf())/6e4)?{unit:"minute",value:o}:(i=e,ue(o=(t.valueOf()-i.valueOf())/1e3)?{unit:"second",value:o}:{unit:"millisecond",value:t.valueOf()-e.valueOf()})))},ar.prototype.countDurationsBetween=function(e,t,n){var r;return n.years&&null!==(r=this.diffWholeYears(e,t))?r/(K(n)/365):n.months&&null!==(r=this.diffWholeMonths(e,t))?r/(K(n)/30):n.days&&null!==(r=Y(e,t))?r/K(n):(t.valueOf()-e.valueOf())/ee(n)},ar.prototype.startOf=function(e,t){return"year"===t?this.startOfYear(e):"month"===t?this.startOfMonth(e):"week"===t?this.startOfWeek(e):"day"===t?j(e):"hour"===t?z([(i=e).getUTCFullYear(),i.getUTCMonth(),i.getUTCDate(),i.getUTCHours()]):"minute"===t?z([(r=e).getUTCFullYear(),r.getUTCMonth(),r.getUTCDate(),r.getUTCHours(),r.getUTCMinutes()]):"second"===t?z([(n=e).getUTCFullYear(),n.getUTCMonth(),n.getUTCDate(),n.getUTCHours(),n.getUTCMinutes(),n.getUTCSeconds()]):void 0;var n,r,i},ar.prototype.startOfYear=function(e){return this.calendarSystem.arrayToMarker([this.calendarSystem.getMarkerYear(e)])},ar.prototype.startOfMonth=function(e){return this.calendarSystem.arrayToMarker([this.calendarSystem.getMarkerYear(e),this.calendarSystem.getMarkerMonth(e)])},ar.prototype.startOfWeek=function(e){return this.calendarSystem.arrayToMarker([this.calendarSystem.getMarkerYear(e),this.calendarSystem.getMarkerMonth(e),e.getUTCDate()-(e.getUTCDay()-this.weekDow+7)%7])},ar.prototype.computeWeekNumber=function(e){return this.weekNumberFunc?this.weekNumberFunc(this.toDate(e)):function(e,t,n){var r=e.getUTCFullYear(),i=U(e,r,t,n);if(i<1)return U(e,r-1,t,n);var o=U(e,r+1,t,n);return 1<=o?Math.min(i,o):i}(e,this.weekDow,this.weekDoy)},ar.prototype.format=function(e,t,n){return void 0===n&&(n={}),t.format({marker:e,timeZoneOffset:null!=n.forcedTzo?n.forcedTzo:this.offsetForMarker(e)},this)},ar.prototype.formatRange=function(e,t,n,r){return void 0===r&&(r={}),r.isEndExclusive&&(t=P(t,-1)),n.formatRange({marker:e,timeZoneOffset:null!=r.forcedStartTzo?r.forcedStartTzo:this.offsetForMarker(e)},{marker:t,timeZoneOffset:null!=r.forcedEndTzo?r.forcedEndTzo:this.offsetForMarker(t)},this)},ar.prototype.formatIso=function(e,t){void 0===t&&(t={});var n=null;return t.omitTimeZoneOffset||(n=null!=t.forcedTzo?t.forcedTzo:this.offsetForMarker(e)),function(e,t,n){void 0===n&&(n=!1);var r=(r=e.toISOString()).replace(".000","");return n&&(r=r.replace("T00:00:00Z","")),10<r.length&&(null==t?r=r.replace("Z",""):0!==t&&(r=r.replace("Z",at(t,!0)))),r}(e,n,t.omitTime)},ar.prototype.timestampToMarker=function(e){return"local"===this.timeZone?z(W(new Date(e))):"UTC"!==this.timeZone&&this.namedTimeZoneImpl?z(this.namedTimeZoneImpl.timestampToArray(e)):new Date(e)},ar.prototype.offsetForMarker=function(e){return"local"===this.timeZone?-V(F(e)).getTimezoneOffset():"UTC"===this.timeZone?0:this.namedTimeZoneImpl?this.namedTimeZoneImpl.offsetForArray(F(e)):null},ar.prototype.toDate=function(e,t){return"local"===this.timeZone?V(F(e)):"UTC"===this.timeZone?new Date(e.valueOf()):this.namedTimeZoneImpl?new Date(e.valueOf()-1e3*this.namedTimeZoneImpl.offsetForArray(F(e))*60):new Date(e.valueOf()-(t||0))},ar);function ar(e){var t,n=this.timeZone=e.timeZone,r="local"!==n&&"UTC"!==n;e.namedTimeZoneImpl&&r&&(this.namedTimeZoneImpl=new e.namedTimeZoneImpl(n)),this.canComputeOffset=Boolean(!r||this.namedTimeZoneImpl),this.calendarSystem=(t=e.calendarSystem,new Kn[t]),this.locale=e.locale,this.weekDow=e.locale.week.dow,this.weekDoy=e.locale.week.doy,"ISO"===e.weekNumberCalculation&&(this.weekDow=1,this.weekDoy=4),"number"==typeof e.firstDay&&(this.weekDow=e.firstDay),"function"==typeof e.weekNumberCalculation&&(this.weekNumberFunc=e.weekNumberCalculation),this.weekLabel=null!=e.weekLabel?e.weekLabel:e.locale.options.weekLabel,this.cmdFormatter=e.cmdFormatter}var sr={id:String,allDayDefault:Boolean,eventDataTransform:Function,success:Function,failure:Function},lr=0;function ur(e,t){return!t.pluginSystem.hooks.eventSourceDefs[e.sourceDefId].ignoreRange}function cr(e,t){for(var n,r,i,o,a,s,l,u,c=t.pluginSystem.hooks.eventSourceDefs,d=c.length-1;0<=d;d--){var h=c[d].parseMeta(e);if(h){var f=(r=h,i=d,o=t,s=void 0,s=fe(n="object"==typeof e?e:{},sr,{},a={}),u=Ot(a,o,l={}),s.isFetching=!1,s.latestFetchId="",s.fetchRange=null,s.publicId=String(n.id||""),s.sourceId=String(lr++),s.sourceDefId=i,s.meta=r,s.ui=u,s.extendedProps=l,s);return f._raw=e,f}}return null}function dr(e,t,n,r){switch(t.type){case"ADD_EVENT_SOURCES":return function(e,t,n,r){for(var i={},o=0,a=t;o<a.length;o++){var s=a[o];i[s.sourceId]=s}n&&(i=fr(i,n,r));return Se({},e,i)}(e,t.sources,n?n.activeRange:null,r);case"REMOVE_EVENT_SOURCE":return o=e,a=t.sourceId,we(o,function(e){return e.sourceId!==a});case"PREV":case"NEXT":case"SET_DATE":case"SET_VIEW_TYPE":return n?fr(e,n.activeRange,r):e;case"FETCH_EVENT_SOURCES":case"CHANGE_TIMEZONE":return pr(e,t.sourceIds?Te(t.sourceIds):(i=r,we(e,function(e){return ur(e,i)})),n?n.activeRange:null,r);case"RECEIVE_EVENTS":case"RECEIVE_EVENT_ERROR":return function(e,t,n,r){var i,o=e[t];if(o&&n===o.latestFetchId)return Se({},e,((i={})[t]=Se({},o,{isFetching:!1,fetchRange:r}),i));return e}(e,t.sourceId,t.fetchId,t.fetchRange);case"REMOVE_ALL_EVENT_SOURCES":return{};default:return e}var i,o,a}var hr=0;function fr(e,i,o){return pr(e,we(e,function(e){return n=i,ur(t=e,r=o)?!r.opt("lazyFetching")||!t.fetchRange||t.isFetching||n.start<t.fetchRange.start||n.end>t.fetchRange.end:!t.latestFetchId;var t,n,r}),i,o)}function pr(e,t,n,r){var i={};for(var o in e){var a=e[o];t[o]?i[o]=function(o,a,s){var e=s.pluginSystem.hooks.eventSourceDefs[o.sourceDefId],l=String(hr++);return e.fetch({eventSource:o,calendar:s,range:a},function(e){var t,n,r=e.rawEvents,i=s.opt("eventSourceSuccess");o.success&&(n=o.success(r,e.xhr)),i&&(t=i(r,e.xhr)),r=n||t||r,s.dispatch({type:"RECEIVE_EVENTS",sourceId:o.sourceId,fetchId:l,fetchRange:a,rawEvents:r})},function(e){var t=s.opt("eventSourceFailure");console.warn(e.message,e),o.failure&&o.failure(e),t&&t(e),s.dispatch({type:"RECEIVE_EVENT_ERROR",sourceId:o.sourceId,fetchId:l,fetchRange:a,error:e})}),Se({},o,{isFetching:!0,latestFetchId:l})}(a,n,r):i[o]=a}return i}var gr=(vr.prototype.buildPrev=function(e,t){var n=this.dateEnv,r=n.subtract(n.startOf(t,e.currentRangeUnit),e.dateIncrement);return this.build(r,-1)},vr.prototype.buildNext=function(e,t){var n=this.dateEnv,r=n.add(n.startOf(t,e.currentRangeUnit),e.dateIncrement);return this.build(r,1)},vr.prototype.build=function(e,t,n){void 0===n&&(n=!1);var r,i,o,a,s,l,u,c,d,h=this.buildValidRange();return h=this.trimHiddenDays(h),n&&(c=e,e=null!=(d=h).start&&c<d.start?d.start:null!=d.end&&c>=d.end?new Date(d.end.valueOf()-1):c),o=this.buildCurrentRangeInfo(e,t),a=/^(year|month|week|day)$/.test(o.unit),s=this.buildRenderRange(this.trimHiddenDays(o.range),o.unit,a),l=s=this.trimHiddenDays(s),this.options.showNonCurrentDates||(l=Ae(l,o.range)),r=X(this.options.minTime),i=X(this.options.maxTime),l=Ae(l=this.adjustActiveRange(l,r,i),h),u=je(o.range,h),{validRange:h,currentRange:o.range,currentRangeUnit:o.unit,isRangeAllDay:a,activeRange:l,renderRange:s,minTime:r,maxTime:i,isValid:u,dateIncrement:this.buildDateIncrement(o.duration)}},vr.prototype.buildValidRange=function(){return this.getRangeOption("validRange",this.calendar.getNow())||{start:null,end:null}},vr.prototype.buildCurrentRangeInfo=function(e,t){var n,r=this.viewSpec,i=this.dateEnv,o=null,a=null,s=null;return r.duration?(o=r.duration,a=r.durationUnit,s=this.buildRangeFromDuration(e,t,o,a)):(n=this.options.dayCount)?(a="day",s=this.buildRangeFromDayCount(e,t,n)):(s=this.buildCustomVisibleRange(e))?a=i.greatestWholeUnit(s.start,s.end).unit:(a=te(o=this.getFallbackDuration()).unit,s=this.buildRangeFromDuration(e,t,o,a)),{duration:o,unit:a,range:s}},vr.prototype.getFallbackDuration=function(){return X({day:1})},vr.prototype.adjustActiveRange=function(e,t,n){var r=this.dateEnv,i=e.start,o=e.end;return this.viewSpec.class.prototype.usesMinMaxTime&&(K(t)<0&&(i=j(i),i=r.add(i,t)),1<K(n)&&(o=O(o=j(o),-1),o=r.add(o,n))),{start:i,end:o}},vr.prototype.buildRangeFromDuration=function(e,t,n,r){var i,o,a,s,l,u=this.dateEnv,c=this.options.dateAlignment;function d(){a=u.startOf(e,c),s=u.add(a,n),l={start:a,end:s}}return c||(i=this.options.dateIncrement,c=i&&ee(o=X(i))<ee(n)?te(o,!J(i)).unit:r),K(n)<=1&&this.isHiddenDay(a)&&(a=j(a=this.skipHiddenDays(a,t))),d(),this.trimHiddenDays(l)||(e=this.skipHiddenDays(e,t),d()),l},vr.prototype.buildRangeFromDayCount=function(e,t,n){var r,i=this.dateEnv,o=this.options.dateAlignment,a=0,s=e;for(o&&(s=i.startOf(s,o)),s=j(s),r=s=this.skipHiddenDays(s,t);r=O(r,1),this.isHiddenDay(r)||a++,a<n;);return{start:s,end:r}},vr.prototype.buildCustomVisibleRange=function(e){var t=this.dateEnv,n=this.getRangeOption("visibleRange",t.toDate(e));return!n||null!=n.start&&null!=n.end?n:null},vr.prototype.buildRenderRange=function(e,t,n){return e},vr.prototype.buildDateIncrement=function(e){var t,n=this.options.dateIncrement;return n?X(n):(t=this.options.dateAlignment)?X(1,t):e||X({days:1})},vr.prototype.getRangeOption=function(e){for(var t=[],n=1;n<arguments.length;n++)t[n-1]=arguments[n];var r,i,o,a,s=this.options[e];return"function"==typeof s&&(s=s.apply(null,t)),s&&(r=s,i=this.dateEnv,a=o=null,r.start&&(o=i.createMarker(r.start)),r.end&&(a=i.createMarker(r.end)),s=!o&&!a||o&&a&&a<o?null:{start:o,end:a}),s=s&&ge(s)},vr.prototype.initHiddenDays=function(){var e,t=this.options.hiddenDays||[],n=[],r=0;for(!1===this.options.weekends&&t.push(0,6),e=0;e<7;e++)(n[e]=-1!==t.indexOf(e))||r++;if(!r)throw new Error("invalid hiddenDays");this.isHiddenDayHash=n},vr.prototype.trimHiddenDays=function(e){var t=e.start,n=e.end,t=t&&this.skipHiddenDays(t),n=n&&this.skipHiddenDays(n,-1,!0);return null==t||null==n||t<n?{start:t,end:n}:null},vr.prototype.isHiddenDay=function(e){return e instanceof Date&&(e=e.getUTCDay()),this.isHiddenDayHash[e]},vr.prototype.skipHiddenDays=function(e,t,n){for(void 0===t&&(t=1),void 0===n&&(n=!1);this.isHiddenDayHash[(e.getUTCDay()+(n?t:0)+7)%7];)e=O(e,t);return e},vr);function vr(e,t){this.viewSpec=e,this.options=e.options,this.dateEnv=t.dateEnv,this.calendar=t,this.initHiddenDays()}function mr(e,t,n){for(var r=function(e,t){switch(t.type){case"SET_VIEW_TYPE":return t.viewType;default:return e}}(e.viewType,t),i=function(e,t,n,r,i){var o;switch(t.type){case"PREV":o=i.dateProfileGenerators[r].buildPrev(e,n);break;case"NEXT":o=i.dateProfileGenerators[r].buildNext(e,n);break;case"SET_DATE":e.activeRange&&We(e.currentRange,t.dateMarker)||(o=i.dateProfileGenerators[r].build(t.dateMarker,void 0,!0));break;case"SET_VIEW_TYPE":var a=i.dateProfileGenerators[r];if(!a)throw new Error(r?'The FullCalendar view "'+r+'" does not exist. Make sure your plugins are loaded correctly.':"No available FullCalendar view plugins.");o=a.build(t.dateMarker||n,void 0,!0)}return!o||!o.isValid||e&&function(e,t){return Ye(e.validRange,t.validRange)&&Ye(e.activeRange,t.activeRange)&&Ye(e.renderRange,t.renderRange)&&Q(e.minTime,t.minTime)&&Q(e.maxTime,t.maxTime)}(e,o)?e:o}(e.dateProfile,t,e.currentDate,r,n),o=dr(e.eventSources,t,i,n),a=Se({},e,{viewType:r,dateProfile:i,currentDate:function(e,t,n){switch(t.type){case"PREV":case"NEXT":return We(n.currentRange,e)?e:n.currentRange.start;case"SET_DATE":case"SET_VIEW_TYPE":var r=t.dateMarker||e;return n.activeRange&&!We(n.activeRange,r)?n.currentRange.start:r;default:return e}}(e.currentDate,t,i),eventSources:o,eventStore:bt(e.eventStore,t,o,i,n),dateSelection:function(e,t){switch(t.type){case"SELECT_DATES":return t.selection;case"UNSELECT_DATES":return null;default:return e}}(e.dateSelection,t),eventSelection:function(e,t){switch(t.type){case"SELECT_EVENT":return t.eventInstanceId;case"UNSELECT_EVENT":return"";default:return e}}(e.eventSelection,t),eventDrag:function(e,t){switch(t.type){case"SET_EVENT_DRAG":var n=t.state;return{affectedEvents:n.affectedEvents,mutatedEvents:n.mutatedEvents,isEvent:n.isEvent,origSeg:n.origSeg};case"UNSET_EVENT_DRAG":return null;default:return e}}(e.eventDrag,t),eventResize:function(e,t){switch(t.type){case"SET_EVENT_RESIZE":var n=t.state;return{affectedEvents:n.affectedEvents,mutatedEvents:n.mutatedEvents,isEvent:n.isEvent,origSeg:n.origSeg};case"UNSET_EVENT_RESIZE":return null;default:return e}}(e.eventResize,t),eventSourceLoadingLevel:yr(o),loadingLevel:yr(o)}),s=0,l=n.pluginSystem.hooks.reducers;s<l.length;s++)a=(0,l[s])(a,t,n);return a}function yr(e){var t=0;for(var n in e)e[n].isFetching&&t++;return t}var Sr={start:null,end:null,allDay:Boolean};function Er(e,t,n){var r=function(e,t){var n={},r=fe(e,Sr,{},n),i=r.start?t.createMarkerMeta(r.start):null,o=r.end?t.createMarkerMeta(r.end):null,a=r.allDay;null==a&&(a=i&&i.isTimeUnspecified&&(!o||o.isTimeUnspecified));return n.range={start:i?i.marker:null,end:o?o.marker:null},n.allDay=a,n}(e,t),i=r.range;if(!i.start)return null;if(!i.end){if(null==n)return null;i.end=t.add(i.start,n)}return r}function br(e,t,n,r){if(t[e])return t[e];var i=function(e,t,n,r){function i(e){return o&&null!==o[e]?o[e]:a&&null!==a[e]?a[e]:null}var o=n[e],a=r[e],s=i("class"),l=i("superType");!l&&s&&(l=wr(s,r)||wr(s,n));var u=null;if(l){if(l===e)throw new Error("Can't have a custom view type that references itself");u=br(l,t,n,r)}!s&&u&&(s=u.class);return s?{type:e,class:s,defaults:Se({},u?u.defaults:{},o?o.options:{}),overrides:Se({},u?u.overrides:{},a?a.options:{})}:null}(e,t,n,r);return i&&(t[e]=i),i}function wr(e,t){var n=Object.getPrototypeOf(e.prototype);for(var r in t){var i=t[r];if(i.class&&i.class.prototype===n)return r}return""}function Dr(e){return De(e,_r)}var Tr={type:String,class:null};function _r(e){"function"==typeof e&&(e={class:e});var t={},n=fe(e,Tr,{},t);return{superType:n.type,class:n.class,options:t}}function Cr(e,t){var n=Dr(e),r=Dr(t.overrides.views);return De(function(e,t){var n,r={};for(n in e)br(n,r,e,t);for(n in t)br(n,r,e,t);return r}(n,r),function(e){return function(r,e,t){var n=r.overrides.duration||r.defaults.duration||t.dynamicOverrides.duration||t.overrides.duration,i=null,o="",a="",s={};{var l;n&&(i=X(n))&&(l=te(i,!J(n)),o=l.unit,1===l.value&&(s=e[a=o]?e[o].options:{}))}function u(e){var t=e.buttonText||{},n=r.defaults.buttonTextKey;return null!=n&&null!=t[n]?t[n]:null!=t[r.type]?t[r.type]:null!=t[a]?t[a]:void 0}return{type:r.type,class:r.class,duration:i,durationUnit:o,singleUnit:a,options:Se({},Fn,r.defaults,t.dirDefaults,t.localeDefaults,t.overrides,s,r.overrides,t.dynamicOverrides),buttonTextOverride:u(t.dynamicOverrides)||u(t.overrides)||r.overrides.buttonText,buttonTextDefault:u(t.localeDefaults)||u(t.dirDefaults)||r.defaults.buttonText||u(Fn)||r.type}}(e,r,t)})}var xr,Mr=(ye(kr,xr=Cn),kr.prototype.destroy=function(){xr.prototype.destroy.call(this),this._renderLayout.unrender(),r(this.el)},kr.prototype.render=function(e){this._renderLayout(e.layout),this._updateTitle(e.title),this._updateActiveButton(e.activeButton),this._updateToday(e.isTodayEnabled),this._updatePrev(e.isPrevEnabled),this._updateNext(e.isNextEnabled)},kr.prototype.renderLayout=function(e){var t=this.el;this.viewsWithButtons=[],b(t,this.renderSection("left",e.left)),b(t,this.renderSection("center",e.center)),b(t,this.renderSection("right",e.right))},kr.prototype.unrenderLayout=function(){this.el.innerHTML=""},kr.prototype.renderSection=function(e,t){var f=this,n=this.context,p=n.theme,g=n.calendar,r=g.optionsManager,v=g.viewSpecs,i=a("div",{className:"fc-"+e}),m=r.computed.customButtons||{},y=r.overrides.buttonText||{},S=r.computed.buttonText||{};return t&&t.split(" ").forEach(function(e,t){var n,r,d=[],h=!0;e.split(",").forEach(function(e,t){var n,r,i,o,a,s,l,u,c;"title"===e?(d.push(E("<h2>&nbsp;</h2>")),h=!1):((n=m[e])?(i=function(e){n.click&&n.click.call(u,e)},(o=p.getCustomButtonIconClass(n))||(o=p.getIconClass(e))||(a=n.text)):(r=v[e])?(f.viewsWithButtons.push(e),i=function(){g.changeView(e)},(a=r.buttonTextOverride)||(o=p.getIconClass(e))||(a=r.buttonTextDefault)):g[e]&&(i=function(){g[e]()},(a=y[e])||(o=p.getIconClass(e))||(a=S[e])),i&&(l=["fc-"+e+"-button",p.getClass("button")],a?(s=kt(a),c=""):o&&(s="<span class='"+o+"'></span>",c=' aria-label="'+e+'"'),(u=E('<button type="button" class="'+l.join(" ")+'"'+c+">"+s+"</button>")).addEventListener("click",i),d.push(u)))}),1<d.length?(n=document.createElement("div"),r=p.getClass("buttonGroup"),h&&r&&n.classList.add(r),b(n,d),i.appendChild(n)):b(i,d)}),i},kr.prototype.updateToday=function(e){this.toggleButtonEnabled("today",e)},kr.prototype.updatePrev=function(e){this.toggleButtonEnabled("prev",e)},kr.prototype.updateNext=function(e){this.toggleButtonEnabled("next",e)},kr.prototype.updateTitle=function(t){h(this.el,"h2").forEach(function(e){e.innerText=t})},kr.prototype.updateActiveButton=function(t){var n=this.context.theme.getClass("buttonActive");h(this.el,"button").forEach(function(e){t&&e.classList.contains("fc-"+t+"-button")?e.classList.add(n):e.classList.remove(n)})},kr.prototype.toggleButtonEnabled=function(e,t){h(this.el,".fc-"+e+"-button").forEach(function(e){e.disabled=!t})},kr);function kr(e){var t=xr.call(this)||this;return t._renderLayout=qt(t.renderLayout,t.unrenderLayout),t._updateTitle=qt(t.updateTitle,null,[t._renderLayout]),t._updateActiveButton=qt(t.updateActiveButton,null,[t._renderLayout]),t._updateToday=qt(t.updateToday,null,[t._renderLayout]),t._updatePrev=qt(t.updatePrev,null,[t._renderLayout]),t._updateNext=qt(t.updateNext,null,[t._renderLayout]),t.el=a("div",{className:"fc-toolbar "+e}),t}var Rr,Ir=(ye(Nr,Rr=Cn),Nr.prototype.render=function(e,t){this.freezeHeight();var n=this.computeTitle(e.dateProfile,e.viewSpec.options);this.renderSkeleton(t),this.renderToolbars(e.viewSpec,e.dateProfile,e.currentDate,n),this.renderView(e,n),this.updateSize(),this.thawHeight()},Nr.prototype.destroy=function(){this.header&&this.header.destroy(),this.footer&&this.footer.destroy(),this.renderSkeleton.unrender(),Rr.prototype.destroy.call(this)},Nr.prototype._renderSkeleton=function(e){this.updateElClassNames(e),m(this.el,this.contentEl=a("div",{className:"fc-view-container"}));for(var t=e.calendar,n=0,r=t.pluginSystem.hooks.viewContainerModifiers;n<r.length;n++)(0,r[n])(this.contentEl,t)},Nr.prototype._unrenderSkeleton=function(){this.view&&(this.savedScroll=this.view.queryScroll(),this.view.destroy(),this.view=null),r(this.contentEl),this.removeElClassNames()},Nr.prototype.removeElClassNames=function(){for(var e=this.el.classList,t=0,n=this.elClassNames;t<n.length;t++){var r=n[t];e.remove(r)}this.elClassNames=[]},Nr.prototype.updateElClassNames=function(e){this.removeElClassNames();var t=e.theme,n=e.options;this.elClassNames=["fc","fc-"+n.dir,t.getClass("widget")];for(var r=this.el.classList,i=0,o=this.elClassNames;i<o.length;i++){var a=o[i];r.add(a)}},Nr.prototype._renderToolbars=function(e,t,n,r){var i=this.context,o=this.header,a=this.footer,s=i.options,l=i.calendar,u=s.header,c=s.footer,d=this.props.dateProfileGenerator,h=l.getNow(),f=d.build(h),p=d.buildPrev(t,n),g=d.buildNext(t,n),v={title:r,activeButton:e.type,isTodayEnabled:f.isValid&&!We(t.currentRange,h),isPrevEnabled:p.isValid,isNextEnabled:g.isValid};u?(o||(o=this.header=new Mr("fc-header-toolbar"),m(this.el,o.el)),o.receiveProps(Se({layout:u},v),i)):o&&(o.destroy(),o=this.header=null),c?(a||(a=this.footer=new Mr("fc-footer-toolbar"),b(this.el,a.el)),a.receiveProps(Se({layout:c},v),i)):a&&(a.destroy(),a=this.footer=null)},Nr.prototype._unrenderToolbars=function(){this.header&&(this.header.destroy(),this.header=null),this.footer&&(this.footer.destroy(),this.footer=null)},Nr.prototype.renderView=function(e,t){var n=this.view,r=this.context,i=r.calendar,o=r.options,a=e.viewSpec,s=e.dateProfileGenerator;n&&n.viewSpec===a||(n&&n.destroy(),n=this.view=new a.class(a,this.contentEl),this.savedScroll&&(n.addScroll(this.savedScroll,!0),this.savedScroll=null)),n.title=t;for(var l={dateProfileGenerator:s,dateProfile:e.dateProfile,businessHours:this.parseBusinessHours(a.options.businessHours),eventStore:e.eventStore,eventUiBases:e.eventUiBases,dateSelection:e.dateSelection,eventSelection:e.eventSelection,eventDrag:e.eventDrag,eventResize:e.eventResize},u=0,c=this.buildViewPropTransformers(i.pluginSystem.hooks.viewPropsTransformers);u<c.length;u++){var d=c[u];Se(l,d.transform(l,a,e,o))}n.receiveProps(l,this.buildComponentContext(this.context,a,n))},Nr.prototype.updateSize=function(e){void 0===e&&(e=!1);var t=this.view;t&&(!e&&null!=this.isHeightAuto||this.computeHeightVars(),t.updateSize(e,this.viewHeight,this.isHeightAuto),t.updateNowIndicator(),t.popScroll(e))},Nr.prototype.computeHeightVars=function(){var e,t=this.context.calendar,n=t.opt("height"),r=t.opt("contentHeight");this.isHeightAuto="auto"===n||"auto"===r,"number"==typeof r?this.viewHeight=r:"function"==typeof r?this.viewHeight=r():"number"==typeof n?this.viewHeight=n-this.queryToolbarsHeight():"function"==typeof n?this.viewHeight=n()-this.queryToolbarsHeight():"parent"===n?(e=this.el.parentNode,this.viewHeight=e.getBoundingClientRect().height-this.queryToolbarsHeight()):this.viewHeight=Math.round(this.contentEl.getBoundingClientRect().width/Math.max(t.opt("aspectRatio"),.5))},Nr.prototype.queryToolbarsHeight=function(){var e=0;return this.header&&(e+=C(this.header.el)),this.footer&&(e+=C(this.footer.el)),e},Nr.prototype.freezeHeight=function(){p(this.el,{height:this.el.getBoundingClientRect().height,overflow:"hidden"})},Nr.prototype.thawHeight=function(){p(this.el,{height:"",overflow:""})},Nr);function Nr(e){var t=Rr.call(this)||this;return t.elClassNames=[],t.renderSkeleton=qt(t._renderSkeleton,t._unrenderSkeleton),t.renderToolbars=qt(t._renderToolbars,t._unrenderToolbars,[t.renderSkeleton]),t.buildComponentContext=Fe(Pr),t.buildViewPropTransformers=Fe(Hr),t.el=e,t.computeTitle=Fe(Or),t.parseBusinessHours=Fe(function(e){return Bt(e,t.context.calendar)}),t}function Or(e,t){var n=/^(year|month)$/.test(e.currentRangeUnit)?e.currentRange:e.activeRange;return this.context.dateEnv.formatRange(n.start,n.end,ot(t.titleFormat||function(e){var t=e.currentRangeUnit;{if("year"===t)return{year:"numeric"};if("month"===t)return{year:"numeric",month:"long"};var n=Y(e.currentRange.start,e.currentRange.end);return null!==n&&1<n?{year:"numeric",month:"short",day:"numeric"}:{year:"numeric",month:"long",day:"numeric"}}}(e),t.titleRangeSeparator),{isEndExclusive:e.isRangeAllDay})}function Pr(e,t,n){return e.extend(t.options,n)}function Hr(e){return e.map(function(e){return new e})}var Lr=(Ar.prototype.destroy=function(){},Ar);function Ar(e){this.component=e.component}var Yr,jr={},Ur=(ye(Wr,Yr=Lr),Wr);function Wr(e){var u=Yr.call(this,e)||this;u.handleSegClick=function(e,t){var n,r,i=u.component,o=i.context,a=o.calendar,s=o.view,l=gt(t);l&&i.isValidSegDownEl(e.target)&&(r=(n=c(e.target,".fc-has-url"))?n.querySelector("a[href]").href:"",a.publiclyTrigger("eventClick",[{el:t,event:new dt(i.context.calendar,l.eventRange.def,l.eventRange.instance),jsEvent:e,view:s}]),r&&!e.defaultPrevented&&(window.location.href=r))};var t=e.component;return u.destroy=R(t.el,"click",t.fgSegSelector+","+t.bgSegSelector,u.handleSegClick),u}var Vr,Fr=(ye(zr,Vr=Lr),zr.prototype.destroy=function(){this.removeHoverListeners(),this.component.context.calendar.off("eventElRemove",this.handleEventElRemove)},zr.prototype.triggerEvent=function(e,t,n){var r=this.component,i=r.context,o=i.calendar,a=i.view,s=gt(n);t&&!r.isValidSegDownEl(t.target)||o.publiclyTrigger(e,[{el:n,event:new dt(o,s.eventRange.def,s.eventRange.instance),jsEvent:t,view:a}])},zr);function zr(e){var n=Vr.call(this,e)||this;n.handleEventElRemove=function(e){e===n.currentSegEl&&n.handleSegLeave(null,n.currentSegEl)},n.handleSegEnter=function(e,t){gt(t)&&(t.classList.add("fc-allow-mouse-resize"),n.currentSegEl=t,n.triggerEvent("eventMouseEnter",e,t))},n.handleSegLeave=function(e,t){n.currentSegEl&&(t.classList.remove("fc-allow-mouse-resize"),n.currentSegEl=null,n.triggerEvent("eventMouseLeave",e,t))};var t,r,i,o,a,s=e.component;return n.removeHoverListeners=(t=s.el,r=s.fgSegSelector+","+s.bgSegSelector,i=n.handleSegEnter,o=n.handleSegLeave,R(t,"mouseover",r,function(e,t){var n;t!==a&&(i(e,a=t),n=function(e){a=null,o(e,t),t.removeEventListener("mouseleave",n)},t.addEventListener("mouseleave",n))})),s.context.calendar.on("eventElRemove",n.handleEventElRemove),n}var Br,qr=(ye(Gr,Br=bn),Gr);function Gr(){return null!==Br&&Br.apply(this,arguments)||this}qr.prototype.classes={widget:"fc-unthemed",widgetHeader:"fc-widget-header",widgetContent:"fc-widget-content",buttonGroup:"fc-button-group",button:"fc-button fc-button-primary",buttonActive:"fc-button-active",popoverHeader:"fc-widget-header",popoverContent:"fc-widget-content",headerRow:"fc-widget-header",dayRow:"fc-widget-content",listView:"fc-widget-content"},qr.prototype.baseIconClass="fc-icon",qr.prototype.iconClasses={close:"fc-icon-x",prev:"fc-icon-chevron-left",next:"fc-icon-chevron-right",prevYear:"fc-icon-chevrons-left",nextYear:"fc-icon-chevrons-right"},qr.prototype.iconOverrideOption="buttonIcons",qr.prototype.iconOverrideCustomButtonOption="icon",qr.prototype.iconOverridePrefix="fc-icon-";var Zr=(Xr.prototype.addPluginInputs=function(e){for(var t=0,n=function(e){for(var t=[],n=0,r=e;n<r.length;n++){var i,o=r[n];"string"==typeof o?(i="FullCalendar"+se(o),window[i]?t.push(window[i].default):console.warn("Plugin file not loaded for "+o)):t.push(o)}return qn.concat(t)}(e);t<n.length;t++){var r=n[t];this.pluginSystem.add(r)}},Object.defineProperty(Xr.prototype,"view",{get:function(){return this.component?this.component.view:null},enumerable:!0,configurable:!0}),Xr.prototype.render=function(){this.component?this.requestRerender():(this.component=new Ir(this.el),this.renderableEventStore=Ne(),this.bindHandlers(),this.executeRender())},Xr.prototype.destroy=function(){if(this.component){this.unbindHandlers(),this.component.destroy(),this.component=null;for(var e=0,t=this.calendarInteractions;e<t.length;e++)t[e].destroy();this.publiclyTrigger("_destroyed")}},Xr.prototype.bindHandlers=function(){var s=this;this.removeNavLinkListener=R(this.el,"click","a[data-goto]",function(e,t){var n=(n=t.getAttribute("data-goto"))?JSON.parse(n):{},r=s.dateEnv,i=r.createMarker(n.date),o=n.type,a=s.viewOpt("navLink"+se(o)+"Click");"function"==typeof a?a(r.toDate(i),e):("string"==typeof a&&(o=a),s.zoomTo(i,o))}),this.opt("handleWindowResize")&&window.addEventListener("resize",this.windowResizeProxy=he(this.windowResize.bind(this),this.opt("windowResizeDelay")))},Xr.prototype.unbindHandlers=function(){this.removeNavLinkListener(),this.windowResizeProxy&&(window.removeEventListener("resize",this.windowResizeProxy),this.windowResizeProxy=null)},Xr.prototype.hydrate=function(){var e=this;this.state=this.buildInitialState();var t=this.opt("eventSources")||[],n=this.opt("events"),r=[];n&&t.unshift(n);for(var i=0,o=t;i<o.length;i++){var a=cr(o[i],this);a&&r.push(a)}this.batchRendering(function(){e.dispatch({type:"INIT"}),e.dispatch({type:"ADD_EVENT_SOURCES",sources:r}),e.dispatch({type:"SET_VIEW_TYPE",viewType:e.opt("defaultView")||e.pluginSystem.hooks.defaultView})})},Xr.prototype.buildInitialState=function(){return{viewType:null,loadingLevel:0,eventSourceLoadingLevel:0,currentDate:this.getInitialDate(),dateProfile:null,eventSources:{},eventStore:Ne(),dateSelection:null,eventSelection:"",eventDrag:null,eventResize:null}},Xr.prototype.dispatch=function(e){if(this.actionQueue.push(e),!this.isReducing){this.isReducing=!0;for(var t=this.state;this.actionQueue.length;)this.state=this.reduce(this.state,this.actionQueue.shift(),this);var n=this.state;this.isReducing=!1,!t.loadingLevel&&n.loadingLevel?this.publiclyTrigger("loading",[!0]):t.loadingLevel&&!n.loadingLevel&&this.publiclyTrigger("loading",[!1]);var r=this.component&&this.component.view;t.eventStore!==n.eventStore&&t.eventStore&&(this.isEventsUpdated=!0),t.dateProfile!==n.dateProfile&&(t.dateProfile&&r&&this.publiclyTrigger("datesDestroy",[{view:r,el:r.el}]),this.isDatesUpdated=!0),t.viewType!==n.viewType&&(t.viewType&&r&&this.publiclyTrigger("viewSkeletonDestroy",[{view:r,el:r.el}]),this.isViewUpdated=!0),this.requestRerender()}},Xr.prototype.reduce=mr,Xr.prototype.requestRerender=function(){this.needsRerender=!0,this.delayedRerender()},Xr.prototype.tryRerender=function(){this.component&&this.needsRerender&&!this.renderingPauseDepth&&!this.isRendering&&this.executeRender()},Xr.prototype.batchRendering=function(e){this.renderingPauseDepth++,e(),this.renderingPauseDepth--,this.needsRerender&&this.requestRerender()},Xr.prototype.executeRender=function(){this.needsRerender=!1,this.isRendering=!0,this.renderComponent(),this.isRendering=!1,this.needsRerender&&this.delayedRerender()},Xr.prototype.renderComponent=function(){var e=this.state,t=this.component,n=e.viewType,r=this.viewSpecs[n];if(!r)throw new Error('View type "'+n+'" is not valid');var i=this.renderableEventStore=e.eventSourceLoadingLevel&&!this.opt("progressiveEventRendering")?this.renderableEventStore:e.eventStore,o=this.buildEventUiSingleBase(r.options),a=this.buildEventUiBySource(e.eventSources),s=this.eventUiBases=this.buildEventUiBases(i.defs,o,a);t.receiveProps(Se({},e,{viewSpec:r,dateProfileGenerator:this.dateProfileGenerators[n],dateProfile:e.dateProfile,eventStore:i,eventUiBases:s,dateSelection:e.dateSelection,eventSelection:e.eventSelection,eventDrag:e.eventDrag,eventResize:e.eventResize}),this.buildComponentContext(this.theme,this.dateEnv,this.optionsManager.computed)),this.isViewUpdated&&(this.isViewUpdated=!1,this.publiclyTrigger("viewSkeletonRender",[{view:t.view,el:t.view.el}])),this.isDatesUpdated&&(this.isDatesUpdated=!1,this.publiclyTrigger("datesRender",[{view:t.view,el:t.view.el}])),this.isEventsUpdated&&(this.isEventsUpdated=!1),this.releaseAfterSizingTriggers()},Xr.prototype.setOption=function(e,t){var n;this.mutateOptions(((n={})[e]=t,n),[],!0)},Xr.prototype.getOption=function(e){return this.optionsManager.computed[e]},Xr.prototype.opt=function(e){return this.optionsManager.computed[e]},Xr.prototype.viewOpt=function(e){return this.viewOpts()[e]},Xr.prototype.viewOpts=function(){return this.viewSpecs[this.state.viewType].options},Xr.prototype.mutateOptions=function(e,t,n,r){var i=this,o=this.pluginSystem.hooks.optionChangeHandlers,a={},s={},l=this.dateEnv,u=!1,c=!1,d=Boolean(t.length);for(var h in e)o[h]?s[h]=e[h]:a[h]=e[h];for(var f in a)/^(height|contentHeight|aspectRatio)$/.test(f)?c=!0:/^(defaultDate|defaultView)$/.test(f)||(d=!0,"timeZone"===f&&(u=!0));this.optionsManager.mutate(a,t,n),d&&this.handleOptions(this.optionsManager.computed),this.batchRendering(function(){if(d?(u&&i.dispatch({type:"CHANGE_TIMEZONE",oldDateEnv:l}),i.dispatch({type:"SET_VIEW_TYPE",viewType:i.state.viewType})):c&&i.updateSize(),r)for(var e in s)o[e](s[e],i,r)})},Xr.prototype.handleOptions=function(e){var t=this,n=this.pluginSystem.hooks;this.defaultAllDayEventDuration=X(e.defaultAllDayEventDuration),this.defaultTimedEventDuration=X(e.defaultTimedEventDuration),this.delayedRerender=this.buildDelayedRerender(e.rerenderDelay),this.theme=this.buildTheme(e);var r=this.parseRawLocales(e.locales);this.availableRawLocales=r.map;var i=this.buildLocale(e.locale||r.defaultCode,r.map);this.dateEnv=this.buildDateEnv(i,e.timeZone,n.namedTimeZonedImpl,e.firstDay,e.weekNumberCalculation,e.weekLabel,n.cmdFormatter),this.selectionConfig=this.buildSelectionConfig(e),this.viewSpecs=Cr(n.views,this.optionsManager),this.dateProfileGenerators=De(this.viewSpecs,function(e){return new e.class.prototype.dateProfileGeneratorClass(e,t)})},Xr.prototype.getAvailableLocaleCodes=function(){return Object.keys(this.availableRawLocales)},Xr.prototype._buildSelectionConfig=function(e){return Pt("select",e,this)},Xr.prototype._buildEventUiSingleBase=function(e){return e.editable&&(e=Se({},e,{eventEditable:!0})),Pt("event",e,this)},Xr.prototype.hasPublicHandlers=function(e){return this.hasHandlers(e)||this.opt(e)},Xr.prototype.publiclyTrigger=function(e,t){var n=this.opt(e);if(this.triggerWith(e,this,t),n)return n.apply(this,t)},Xr.prototype.publiclyTriggerAfterSizing=function(e,t){var n=this.afterSizingTriggers;(n[e]||(n[e]=[])).push(t)},Xr.prototype.releaseAfterSizingTriggers=function(){var e=this.afterSizingTriggers;for(var t in e)for(var n=0,r=e[t];n<r.length;n++){var i=r[n];this.publiclyTrigger(t,i)}this.afterSizingTriggers={}},Xr.prototype.isValidViewType=function(e){return Boolean(this.viewSpecs[e])},Xr.prototype.changeView=function(e,t){var n=null;t&&(t.start&&t.end?(this.optionsManager.mutate({visibleRange:t},[]),this.handleOptions(this.optionsManager.computed)):n=this.dateEnv.createMarker(t)),this.unselect(),this.dispatch({type:"SET_VIEW_TYPE",viewType:e,dateMarker:n})},Xr.prototype.zoomTo=function(e,t){var n;t=t||"day",n=this.viewSpecs[t]||this.getUnitViewSpec(t),this.unselect(),n?this.dispatch({type:"SET_VIEW_TYPE",viewType:n.type,dateMarker:e}):this.dispatch({type:"SET_DATE",dateMarker:e})},Xr.prototype.getUnitViewSpec=function(e){var t,n,r=this.component,i=[];for(var o in r.header&&i.push.apply(i,r.header.viewsWithButtons),r.footer&&i.push.apply(i,r.footer.viewsWithButtons),this.viewSpecs)i.push(o);for(t=0;t<i.length;t++)if((n=this.viewSpecs[i[t]])&&n.singleUnit===e)return n},Xr.prototype.getInitialDate=function(){var e=this.opt("defaultDate");return null!=e?this.dateEnv.createMarker(e):this.getNow()},Xr.prototype.prev=function(){this.unselect(),this.dispatch({type:"PREV"})},Xr.prototype.next=function(){this.unselect(),this.dispatch({type:"NEXT"})},Xr.prototype.prevYear=function(){this.unselect(),this.dispatch({type:"SET_DATE",dateMarker:this.dateEnv.addYears(this.state.currentDate,-1)})},Xr.prototype.nextYear=function(){this.unselect(),this.dispatch({type:"SET_DATE",dateMarker:this.dateEnv.addYears(this.state.currentDate,1)})},Xr.prototype.today=function(){this.unselect(),this.dispatch({type:"SET_DATE",dateMarker:this.getNow()})},Xr.prototype.gotoDate=function(e){this.unselect(),this.dispatch({type:"SET_DATE",dateMarker:this.dateEnv.createMarker(e)})},Xr.prototype.incrementDate=function(e){var t=X(e);t&&(this.unselect(),this.dispatch({type:"SET_DATE",dateMarker:this.dateEnv.add(this.state.currentDate,t)}))},Xr.prototype.getDate=function(){return this.dateEnv.toDate(this.state.currentDate)},Xr.prototype.formatDate=function(e,t){var n=this.dateEnv;return n.format(n.createMarker(e),ot(t))},Xr.prototype.formatRange=function(e,t,n){var r=this.dateEnv;return r.formatRange(r.createMarker(e),r.createMarker(t),ot(n,this.opt("defaultRangeSeparator")),n)},Xr.prototype.formatIso=function(e,t){var n=this.dateEnv;return n.formatIso(n.createMarker(e),{omitTime:t})},Xr.prototype.windowResize=function(e){!this.isHandlingWindowResize&&this.component&&e.target===window&&(this.isHandlingWindowResize=!0,this.updateSize(),this.publiclyTrigger("windowResize",[this.view]),this.isHandlingWindowResize=!1)},Xr.prototype.updateSize=function(){this.component&&this.component.updateSize(!0)},Xr.prototype.registerInteractiveComponent=function(e,t){var n,r={component:e,el:(n=t).el,useEventCenter:null==n.useEventCenter||n.useEventCenter},i=[Ur,Fr].concat(this.pluginSystem.hooks.componentInteractions).map(function(e){return new e(r)});this.interactionsStore[e.uid]=i,jr[e.uid]=r},Xr.prototype.unregisterInteractiveComponent=function(e){for(var t=0,n=this.interactionsStore[e.uid];t<n.length;t++)n[t].destroy();delete this.interactionsStore[e.uid],delete jr[e.uid]},Xr.prototype.select=function(e,t){var n=null==t?null!=e.start?e:{start:e,end:null}:{start:e,end:t},r=Er(n,this.dateEnv,X({days:1}));r&&(this.dispatch({type:"SELECT_DATES",selection:r}),this.triggerDateSelect(r))},Xr.prototype.unselect=function(e){this.state.dateSelection&&(this.dispatch({type:"UNSELECT_DATES"}),this.triggerDateUnselect(e))},Xr.prototype.triggerDateSelect=function(e,t){var n=Se({},this.buildDateSpanApi(e),{jsEvent:t?t.origEvent:null,view:this.view});this.publiclyTrigger("select",[n])},Xr.prototype.triggerDateUnselect=function(e){this.publiclyTrigger("unselect",[{jsEvent:e?e.origEvent:null,view:this.view}])},Xr.prototype.triggerDateClick=function(e,t,n,r){var i=Se({},this.buildDatePointApi(e),{dayEl:t,jsEvent:r,view:n});this.publiclyTrigger("dateClick",[i])},Xr.prototype.buildDatePointApi=function(e){for(var t,n,r={},i=0,o=this.pluginSystem.hooks.datePointTransforms;i<o.length;i++){var a=o[i];Se(r,a(e,this))}return Se(r,(t=e,{date:(n=this.dateEnv).toDate(t.range.start),dateStr:n.formatIso(t.range.start,{omitTime:t.allDay}),allDay:t.allDay})),r},Xr.prototype.buildDateSpanApi=function(e){for(var t,n,r={},i=0,o=this.pluginSystem.hooks.dateSpanTransforms;i<o.length;i++){var a=o[i];Se(r,a(e,this))}return Se(r,(t=e,{start:(n=this.dateEnv).toDate(t.range.start),end:n.toDate(t.range.end),startStr:n.formatIso(t.range.start,{omitTime:t.allDay}),endStr:n.formatIso(t.range.end,{omitTime:t.allDay}),allDay:t.allDay})),r},Xr.prototype.getNow=function(){var e=this.opt("now");return"function"==typeof e&&(e=e()),null==e?this.dateEnv.createNowMarker():this.dateEnv.createMarker(e)},Xr.prototype.getDefaultEventEnd=function(e,t){var n=t;return n=e?(n=j(n),this.dateEnv.add(n,this.defaultAllDayEventDuration)):this.dateEnv.add(n,this.defaultTimedEventDuration)},Xr.prototype.addEvent=function(e,t){if(e instanceof dt){var n=e._def,r=e._instance;return this.state.eventStore.defs[n.defId]||this.dispatch({type:"ADD_EVENTS",eventStore:Me({def:n,instance:r})}),e}var i;if(t instanceof ut)i=t.internalEventSource.sourceId;else if(null!=t){var o=this.getEventSourceById(t);if(!o)return console.warn('Could not find an event source with ID "'+t+'"'),null;i=o.internalEventSource.sourceId}var a=Wt(e,i,this);return a?(this.dispatch({type:"ADD_EVENTS",eventStore:Me(a)}),new dt(this,a.def,a.def.recurringDef?null:a.instance)):null},Xr.prototype.getEventById=function(e){var t=this.state.eventStore,n=t.defs,r=t.instances;for(var i in e=String(e),n){var o=n[i];if(o.publicId===e){if(o.recurringDef)return new dt(this,o,null);for(var a in r){var s=r[a];if(s.defId===o.defId)return new dt(this,o,s)}}}return null},Xr.prototype.getEvents=function(){var e=this.state.eventStore,t=e.defs,n=e.instances,r=[];for(var i in n){var o=n[i],a=t[o.defId];r.push(new dt(this,a,o))}return r},Xr.prototype.removeAllEvents=function(){this.dispatch({type:"REMOVE_ALL_EVENTS"})},Xr.prototype.rerenderEvents=function(){this.dispatch({type:"RESET_EVENTS"})},Xr.prototype.getEventSources=function(){var e=this.state.eventSources,t=[];for(var n in e)t.push(new ut(this,e[n]));return t},Xr.prototype.getEventSourceById=function(e){var t=this.state.eventSources;for(var n in e=String(e),t)if(t[n].publicId===e)return new ut(this,t[n]);return null},Xr.prototype.addEventSource=function(e){if(e instanceof ut)return this.state.eventSources[e.internalEventSource.sourceId]||this.dispatch({type:"ADD_EVENT_SOURCES",sources:[e.internalEventSource]}),e;var t=cr(e,this);return t?(this.dispatch({type:"ADD_EVENT_SOURCES",sources:[t]}),new ut(this,t)):null},Xr.prototype.removeAllEventSources=function(){this.dispatch({type:"REMOVE_ALL_EVENT_SOURCES"})},Xr.prototype.refetchEvents=function(){this.dispatch({type:"FETCH_EVENT_SOURCES"})},Xr.prototype.scrollToTime=function(e){var t=X(e);t&&this.component.view.scrollToDuration(t)},Xr);function Xr(e,t){var n=this;this.buildComponentContext=Fe($r),this.parseRawLocales=Fe(Zn),this.buildLocale=Fe(Xn),this.buildDateEnv=Fe(Jr),this.buildTheme=Fe(Qr),this.buildEventUiSingleBase=Fe(this._buildEventUiSingleBase),this.buildSelectionConfig=Fe(this._buildSelectionConfig),this.buildEventUiBySource=ze(ei,Ce),this.buildEventUiBases=Fe(ti),this.interactionsStore={},this.actionQueue=[],this.isReducing=!1,this.needsRerender=!1,this.isRendering=!1,this.renderingPauseDepth=0,this.buildDelayedRerender=Fe(Kr),this.afterSizingTriggers={},this.isViewUpdated=!1,this.isDatesUpdated=!1,this.isEventsUpdated=!1,this.el=e,this.optionsManager=new Jn(t||{}),this.pluginSystem=new On,this.addPluginInputs(this.optionsManager.computed.plugins||[]),this.handleOptions(this.optionsManager.computed),this.publiclyTrigger("_init"),this.hydrate(),this.calendarInteractions=this.pluginSystem.hooks.calendarInteractions.map(function(e){return new e(n)})}function $r(e,t,n){return new Tn(this,e,t,n,null)}function Jr(e,t,n,r,i,o,a){return new or({calendarSystem:"gregory",timeZone:t,namedTimeZoneImpl:n,locale:e,weekNumberCalculation:i,firstDay:r,weekLabel:o,cmdFormatter:a})}function Qr(e){return new(this.pluginSystem.hooks.themeClasses[e.themeSystem]||qr)(e)}function Kr(e){var t=this.tryRerender.bind(this);return null!=e&&(t=he(t,e)),t}function ei(e){return De(e,function(e){return e.ui})}function ti(e,t,n){var r={"":t};for(var i in e){var o=e[i];o.sourceId&&n[o.sourceId]&&(r[i]=n[o.sourceId])}return r}rn.mixInto(Zr);var ni,ri=(ye(ii,ni=kn),ii.prototype.initialize=function(){},Object.defineProperty(ii.prototype,"activeStart",{get:function(){return this.context.dateEnv.toDate(this.props.dateProfile.activeRange.start)},enumerable:!0,configurable:!0}),Object.defineProperty(ii.prototype,"activeEnd",{get:function(){return this.context.dateEnv.toDate(this.props.dateProfile.activeRange.end)},enumerable:!0,configurable:!0}),Object.defineProperty(ii.prototype,"currentStart",{get:function(){return this.context.dateEnv.toDate(this.props.dateProfile.currentRange.start)},enumerable:!0,configurable:!0}),Object.defineProperty(ii.prototype,"currentEnd",{get:function(){return this.context.dateEnv.toDate(this.props.dateProfile.currentRange.end)},enumerable:!0,configurable:!0}),ii.prototype.render=function(e,t){this.renderDatesMem(e.dateProfile),this.renderBusinessHoursMem(e.businessHours),this.renderDateSelectionMem(e.dateSelection),this.renderEventsMem(e.eventStore),this.renderEventSelectionMem(e.eventSelection),this.renderEventDragMem(e.eventDrag),this.renderEventResizeMem(e.eventResize)},ii.prototype.beforeUpdate=function(){this.addScroll(this.queryScroll())},ii.prototype.destroy=function(){ni.prototype.destroy.call(this),this.renderDatesMem.unrender()},ii.prototype.updateSize=function(e,t,n){var r=this.context.calendar;e&&this.addScroll(this.queryScroll()),(e||r.isViewUpdated||r.isDatesUpdated||r.isEventsUpdated)&&this.updateBaseSize(e,t,n)},ii.prototype.updateBaseSize=function(e,t,n){},ii.prototype.renderDatesWrap=function(e){this.renderDates(e),this.addScroll({duration:X(this.context.options.scrollTime)})},ii.prototype.unrenderDatesWrap=function(){this.stopNowIndicator(),this.unrenderDates()},ii.prototype.renderDates=function(e){},ii.prototype.unrenderDates=function(){},ii.prototype.renderBusinessHours=function(e){},ii.prototype.unrenderBusinessHours=function(){},ii.prototype.renderDateSelectionWrap=function(e){e&&this.renderDateSelection(e)},ii.prototype.unrenderDateSelectionWrap=function(e){e&&this.unrenderDateSelection(e)},ii.prototype.renderDateSelection=function(e){},ii.prototype.unrenderDateSelection=function(e){},ii.prototype.renderEvents=function(e){},ii.prototype.unrenderEvents=function(){},ii.prototype.sliceEvents=function(e,t){var n=this.props;return ft(e,n.eventUiBases,n.dateProfile.activeRange,t?this.context.nextDayThreshold:null).fg},ii.prototype.renderEventSelectionWrap=function(e){e&&this.renderEventSelection(e)},ii.prototype.unrenderEventSelectionWrap=function(e){e&&this.unrenderEventSelection(e)},ii.prototype.renderEventSelection=function(e){},ii.prototype.unrenderEventSelection=function(e){},ii.prototype.renderEventDragWrap=function(e){e&&this.renderEventDrag(e)},ii.prototype.unrenderEventDragWrap=function(e){e&&this.unrenderEventDrag(e)},ii.prototype.renderEventDrag=function(e){},ii.prototype.unrenderEventDrag=function(e){},ii.prototype.renderEventResizeWrap=function(e){e&&this.renderEventResize(e)},ii.prototype.unrenderEventResizeWrap=function(e){e&&this.unrenderEventResize(e)},ii.prototype.renderEventResize=function(e){},ii.prototype.unrenderEventResize=function(e){},ii.prototype.startNowIndicator=function(e,t){var n,r,i,o=this,a=this.context,s=a.calendar,l=a.dateEnv;a.options.nowIndicator&&!this.initialNowDate&&(n=this.getNowIndicatorUnit(e,t))&&(r=this.updateNowIndicator.bind(this),this.initialNowDate=s.getNow(),this.initialNowQueriedMs=(new Date).valueOf(),i=l.add(l.startOf(this.initialNowDate,n),X(1,n)).valueOf()-this.initialNowDate.valueOf(),this.nowIndicatorTimeoutID=setTimeout(function(){o.nowIndicatorTimeoutID=null,r(),i="second"===n?1e3:6e4,o.nowIndicatorIntervalID=setInterval(r,i)},i))},ii.prototype.updateNowIndicator=function(){this.props.dateProfile&&this.initialNowDate&&(this.unrenderNowIndicator(),this.renderNowIndicator(P(this.initialNowDate,(new Date).valueOf()-this.initialNowQueriedMs)),this.isNowIndicatorRendered=!0)},ii.prototype.stopNowIndicator=function(){this.nowIndicatorTimeoutID&&(clearTimeout(this.nowIndicatorTimeoutID),this.nowIndicatorTimeoutID=null),this.nowIndicatorIntervalID&&(clearInterval(this.nowIndicatorIntervalID),this.nowIndicatorIntervalID=null),this.isNowIndicatorRendered&&(this.unrenderNowIndicator(),this.isNowIndicatorRendered=!1)},ii.prototype.getNowIndicatorUnit=function(e,t){},ii.prototype.renderNowIndicator=function(e){},ii.prototype.unrenderNowIndicator=function(){},ii.prototype.addScroll=function(e,t){t&&(e.isForced=t),Se(this.queuedScroll||(this.queuedScroll={}),e)},ii.prototype.popScroll=function(e){this.applyQueuedScroll(e),this.queuedScroll=null},ii.prototype.applyQueuedScroll=function(e){this.queuedScroll&&this.applyScroll(this.queuedScroll,e)},ii.prototype.queryScroll=function(){var e={};return this.props.dateProfile&&Se(e,this.queryDateScroll()),e},ii.prototype.applyScroll=function(e,t){var n=e.duration,r=e.isForced;null==n||r||(delete e.duration,this.props.dateProfile&&Se(e,this.computeDateScroll(n))),this.props.dateProfile&&this.applyDateScroll(e)},ii.prototype.computeDateScroll=function(e){return{}},ii.prototype.queryDateScroll=function(){return{}},ii.prototype.applyDateScroll=function(e){},ii.prototype.scrollToDuration=function(e){this.applyScroll({duration:e},!1)},ii);function ii(e,t){var n=ni.call(this,a("div",{className:"fc-view fc-"+e.type+"-view"}))||this;return n.renderDatesMem=qt(n.renderDatesWrap,n.unrenderDatesWrap),n.renderBusinessHoursMem=qt(n.renderBusinessHours,n.unrenderBusinessHours,[n.renderDatesMem]),n.renderDateSelectionMem=qt(n.renderDateSelectionWrap,n.unrenderDateSelectionWrap,[n.renderDatesMem]),n.renderEventsMem=qt(n.renderEvents,n.unrenderEvents,[n.renderDatesMem]),n.renderEventSelectionMem=qt(n.renderEventSelectionWrap,n.unrenderEventSelectionWrap,[n.renderEventsMem]),n.renderEventDragMem=qt(n.renderEventDragWrap,n.unrenderEventDragWrap,[n.renderDatesMem]),n.renderEventResizeMem=qt(n.renderEventResizeWrap,n.unrenderEventResizeWrap,[n.renderDatesMem]),n.viewSpec=e,n.type=e.type,t.appendChild(n.el),n.initialize(),n}rn.mixInto(ri),ri.prototype.usesMinMaxTime=!1,ri.prototype.dateProfileGeneratorClass=gr;var oi=(ai.prototype.renderSegs=function(e,t,n){this.context=e,this.rangeUpdated(),t=this.renderSegEls(t,n),this.segs=t,this.attachSegs(t,n),this.isSizeDirty=!0,yt(this.context,this.segs,Boolean(n))},ai.prototype.unrender=function(e,t,n){St(this.context,this.segs,Boolean(n)),this.detachSegs(this.segs),this.segs=[]},ai.prototype.rangeUpdated=function(){var e,t,n=this.context.options;this.eventTimeFormat=ot(n.eventTimeFormat||this.computeEventTimeFormat(),n.defaultRangeSeparator),null==(e=n.displayEventTime)&&(e=this.computeDisplayEventTime()),null==(t=n.displayEventEnd)&&(t=this.computeDisplayEventEnd()),this.displayEventTime=e,this.displayEventEnd=t},ai.prototype.renderSegEls=function(r,e){var t,n="";if(r.length){for(t=0;t<r.length;t++)n+=this.renderSegHtml(r[t],e);s(n).forEach(function(e,t){var n=r[t];e&&(n.el=e)}),r=pt(this.context,r,Boolean(e))}return r},ai.prototype.getSegClasses=function(e,t,n,r){var i=["fc-event",e.isStart?"fc-start":"fc-not-start",e.isEnd?"fc-end":"fc-not-end"].concat(e.eventRange.ui.classNames);return t&&i.push("fc-draggable"),n&&i.push("fc-resizable"),r&&(i.push("fc-mirror"),r.isDragging&&i.push("fc-dragging"),r.isResizing&&i.push("fc-resizing")),i},ai.prototype.getTimeText=function(e,t,n){var r=e.def,i=e.instance;return this._getTimeText(i.range.start,r.hasEnd?i.range.end:null,r.allDay,t,n,i.forcedStartTzo,i.forcedEndTzo)},ai.prototype._getTimeText=function(e,t,n,r,i,o,a){var s=this.context.dateEnv;return null==r&&(r=this.eventTimeFormat),null==i&&(i=this.displayEventEnd),this.displayEventTime&&!n?i&&t?s.formatRange(e,t,r,{forcedStartTzo:o,forcedEndTzo:a}):s.format(e,r,{forcedTzo:o}):""},ai.prototype.computeEventTimeFormat=function(){return{hour:"numeric",minute:"2-digit",omitZeroMinute:!0}},ai.prototype.computeDisplayEventTime=function(){return!0},ai.prototype.computeDisplayEventEnd=function(){return!0},ai.prototype.getSkinCss=function(e){return{"background-color":e.backgroundColor,"border-color":e.borderColor,color:e.textColor}},ai.prototype.sortEventSegs=function(e){var n=this.context.eventOrderSpecs,t=e.map(si);return t.sort(function(e,t){return ie(e,t,n)}),t.map(function(e){return e._seg})},ai.prototype.computeSizes=function(e){(e||this.isSizeDirty)&&this.computeSegSizes(this.segs)},ai.prototype.assignSizes=function(e){(e||this.isSizeDirty)&&(this.assignSegSizes(this.segs),this.isSizeDirty=!1)},ai.prototype.computeSegSizes=function(e){},ai.prototype.assignSegSizes=function(e){},ai.prototype.hideByHash=function(e){if(e)for(var t=0,n=this.segs;t<n.length;t++){var r=n[t];e[r.eventRange.instance.instanceId]&&(r.el.style.visibility="hidden")}},ai.prototype.showByHash=function(e){if(e)for(var t=0,n=this.segs;t<n.length;t++){var r=n[t];e[r.eventRange.instance.instanceId]&&(r.el.style.visibility="")}},ai.prototype.selectByInstanceId=function(e){if(e)for(var t=0,n=this.segs;t<n.length;t++){var r=n[t],i=r.eventRange.instance;i&&i.instanceId===e&&r.el&&r.el.classList.add("fc-selected")}},ai.prototype.unselectByInstanceId=function(e){if(e)for(var t=0,n=this.segs;t<n.length;t++){var r=n[t];r.el&&r.el.classList.remove("fc-selected")}},ai);function ai(){this.segs=[],this.isSizeDirty=!1}function si(e){var t=e.eventRange.def,n=e.eventRange.instance.range,r=n.start?n.start.valueOf():0,i=n.end?n.end.valueOf():0;return Se({},t.extendedProps,t,{id:t.publicId,start:r,end:i,duration:i-r,allDay:Number(t.allDay),_seg:e})}var li=(ui.prototype.getSegsByType=function(e){return this.segsByType[e]||[]},ui.prototype.renderSegs=function(e,t,n){var r;this.context=t;var i=this.renderSegEls(e,n),o=this.attachSegs(e,i);o&&(r=this.containerElsByType[e]||(this.containerElsByType[e]=[])).push.apply(r,o),this.segsByType[e]=i,"bgEvent"===e&&yt(t,i,!1),this.dirtySizeFlags[e]=!0},ui.prototype.unrender=function(e,t){var n=this.segsByType[e];n&&("bgEvent"===e&&St(t,n,!1),this.detachSegs(e,n))},ui.prototype.renderSegEls=function(e,r){var t,n=this,i="";if(r.length){for(t=0;t<r.length;t++)i+=this.renderSegHtml(e,r[t]);s(i).forEach(function(e,t){var n=r[t];e&&(n.el=e)}),"bgEvent"===e&&(r=pt(this.context,r,!1)),r=r.filter(function(e){return d(e.el,n.fillSegTag)})}return r},ui.prototype.renderSegHtml=function(e,t){var n=null,r=[];return"highlight"!==e&&"businessHours"!==e&&(n={"background-color":t.eventRange.ui.backgroundColor}),"highlight"!==e&&(r=r.concat(t.eventRange.ui.classNames)),"businessHours"===e?r.push("fc-bgevent"):r.push("fc-"+e.toLowerCase()),"<"+this.fillSegTag+(r.length?' class="'+r.join(" ")+'"':"")+(n?' style="'+Rt(n)+'"':"")+"></"+this.fillSegTag+">"},ui.prototype.detachSegs=function(e,t){var n=this.containerElsByType[e];n&&(n.forEach(r),delete this.containerElsByType[e])},ui.prototype.computeSizes=function(e){for(var t in this.segsByType)(e||this.dirtySizeFlags[t])&&this.computeSegSizes(this.segsByType[t])},ui.prototype.assignSizes=function(e){for(var t in this.segsByType)(e||this.dirtySizeFlags[t])&&this.assignSegSizes(this.segsByType[t]);this.dirtySizeFlags={}},ui.prototype.computeSegSizes=function(e){},ui.prototype.assignSegSizes=function(e){},ui);function ui(){this.fillSegTag="div",this.dirtySizeFlags={},this.containerElsByType={},this.segsByType={}}function ci(e){this.timeZoneName=e}var di=(hi.prototype.destroy=function(){},hi.prototype.setMirrorIsVisible=function(e){},hi.prototype.setMirrorNeedsRevert=function(e){},hi.prototype.setAutoScrollEnabled=function(e){},hi);function hi(e){this.emitter=new rn}function fi(e){var t=Xn(e.locale||"en",Zn([]).map);return e=Se({timeZone:Fn.timeZone,calendarSystem:"gregory"},e,{locale:t}),new or(e)}var pi={startTime:X,duration:X,create:Boolean,sourceId:String},gi={create:!0};function vi(e,t){return!e||10<t?{weekday:"short"}:1<t?{weekday:"short",month:"numeric",day:"numeric",omitCommas:!0}:{weekday:"long"}}function mi(e,t,n,r,i,o,a,s){var l=o.dateEnv,u=o.theme,c=o.options,d=We(t.activeRange,e),h=["fc-day-header",u.getClass("widgetHeader")],f="function"==typeof c.columnHeaderHtml?c.columnHeaderHtml(l.toDate(e)):"function"==typeof c.columnHeaderText?kt(c.columnHeaderText(l.toDate(e))):kt(l.format(e,i));return n?h=h.concat(Qt(e,t,o,!0)):h.push("fc-"+N[e.getUTCDay()]),'<th class="'+h.join(" ")+'"'+(d&&n?' data-date="'+l.formatIso(e,{omitTime:!0})+'"':"")+(1<a?' colspan="'+a+'"':"")+(s?" "+s:"")+">"+(d?Jt(c,l,{date:e,forceOff:!n||1===r},f):f)+"</th>"}var yi,Si=(ye(Ei,yi=Cn),Ei.prototype.render=function(e,t){var n=e.dates,r=e.datesRepDistinctDays,i=[];this.renderSkeleton(t),e.renderIntroHtml&&i.push(e.renderIntroHtml());for(var o=ot(t.options.columnHeaderFormat||vi(r,n.length)),a=0,s=n;a<s.length;a++){var l=s[a];i.push(mi(l,e.dateProfile,r,n.length,o,t))}t.isRtl&&i.reverse(),this.thead.innerHTML="<tr>"+i.join("")+"</tr>"},Ei.prototype.destroy=function(){yi.prototype.destroy.call(this),this.renderSkeleton.unrender()},Ei.prototype._renderSkeleton=function(e){var t=e.theme,n=this.parentEl;n.innerHTML="",n.appendChild(this.el=E('<div class="fc-row '+t.getClass("headerRow")+'"><table class="'+t.getClass("tableGrid")+'"><thead></thead></table></div>')),this.thead=this.el.querySelector("thead")},Ei.prototype._unrenderSkeleton=function(){r(this.el)},Ei);function Ei(e){var t=yi.call(this)||this;return t.renderSkeleton=qt(t._renderSkeleton,t._unrenderSkeleton),t.parentEl=e,t}var bi=(wi.prototype.sliceRange=function(e){var t=this.getDateDayIndex(e.start),n=this.getDateDayIndex(O(e.end,-1)),r=Math.max(0,t),i=Math.min(this.cnt-1,n);return(r=Math.ceil(r))<=(i=Math.floor(i))?{firstIndex:r,lastIndex:i,isStart:t===r,isEnd:n===i}:null},wi.prototype.getDateDayIndex=function(e){var t=this.indices,n=Math.floor(H(this.dates[0],e));return n<0?t[0]-1:n>=t.length?t[t.length-1]+1:t[n]},wi);function wi(e,t){for(var n=e.start,r=e.end,i=[],o=[],a=-1;n<r;)t.isHiddenDay(n)?i.push(a+.5):(a++,i.push(a),o.push(n)),n=O(n,1);this.dates=o,this.indices=i,this.cnt=o.length}var Di=(Ti.prototype.buildCells=function(){for(var e=[],t=0;t<this.rowCnt;t++){for(var n=[],r=0;r<this.colCnt;r++)n.push(this.buildCell(t,r));e.push(n)}return e},Ti.prototype.buildCell=function(e,t){return{date:this.daySeries.dates[e*this.colCnt+t]}},Ti.prototype.buildHeaderDates=function(){for(var e=[],t=0;t<this.colCnt;t++)e.push(this.cells[0][t].date);return e},Ti.prototype.sliceRange=function(e){var t=this.colCnt,n=this.daySeries.sliceRange(e),r=[];if(n)for(var i=n.firstIndex,o=n.lastIndex,a=i;a<=o;){var s=Math.floor(a/t),l=Math.min((s+1)*t,o+1);r.push({row:s,firstCol:a%t,lastCol:(l-1)%t,isStart:n.isStart&&a===i,isEnd:n.isEnd&&l-1===o}),a=l}return r},Ti);function Ti(e,t){var n,r,i,o=e.dates;if(t){for(r=o[0].getUTCDay(),n=1;n<o.length&&o[n].getUTCDay()!==r;n++);i=Math.ceil(o.length/n)}else i=1,n=o.length;this.rowCnt=i,this.colCnt=n,this.daySeries=e,this.cells=this.buildCells(),this.headerDates=this.buildHeaderDates()}var _i=(Ci.prototype.sliceProps=function(e,t,n,r,i){for(var o=[],a=5;a<arguments.length;a++)o[a-5]=arguments[a];var s=e.eventUiBases,l=this.sliceEventStore.apply(this,[e.eventStore,s,t,n,i].concat(o));return{dateSelectionSegs:this.sliceDateSelection.apply(this,[e.dateSelection,s,i].concat(o)),businessHourSegs:this.sliceBusinessHours.apply(this,[e.businessHours,t,n,r,i].concat(o)),fgEventSegs:l.fg,bgEventSegs:l.bg,eventDrag:this.sliceEventDrag.apply(this,[e.eventDrag,s,t,n,i].concat(o)),eventResize:this.sliceEventResize.apply(this,[e.eventResize,s,t,n,i].concat(o)),eventSelection:e.eventSelection}},Ci.prototype.sliceNowDate=function(e,t){for(var n=[],r=2;r<arguments.length;r++)n[r-2]=arguments[r];return this._sliceDateSpan.apply(this,[{range:{start:e,end:P(e,1)},allDay:!1},{},t].concat(n))},Ci.prototype._sliceBusinessHours=function(e,t,n,r,i){for(var o=[],a=5;a<arguments.length;a++)o[a-5]=arguments[a];return e?this._sliceEventStore.apply(this,[ke(e,xi(t,Boolean(n)),r),{},t,n,i].concat(o)).bg:[]},Ci.prototype._sliceEventStore=function(e,t,n,r,i){for(var o=[],a=5;a<arguments.length;a++)o[a-5]=arguments[a];if(e){var s=ft(e,t,xi(n,Boolean(r)),r);return{bg:this.sliceEventRanges(s.bg,i,o),fg:this.sliceEventRanges(s.fg,i,o)}}return{bg:[],fg:[]}},Ci.prototype._sliceInteraction=function(e,t,n,r,i){for(var o=[],a=5;a<arguments.length;a++)o[a-5]=arguments[a];if(!e)return null;var s=ft(e.mutatedEvents,t,xi(n,Boolean(r)),r);return{segs:this.sliceEventRanges(s.fg,i,o),affectedInstances:e.affectedEvents.instances,isEvent:e.isEvent,sourceSeg:e.origSeg}},Ci.prototype._sliceDateSpan=function(e,t,n){for(var r=[],i=3;i<arguments.length;i++)r[i-3]=arguments[i];if(!e)return[];for(var o,a,s,l,u=(o=e,a=t,s=n.context.calendar,{def:l=Vt({editable:!1},"",o.allDay,!0,s),ui:mt(l,a),instance:Ft(l.defId,o.range),range:o.range,isStart:!0,isEnd:!0}),c=this.sliceRange.apply(this,[e.range].concat(r)),d=0,h=c;d<h.length;d++){var f=h[d];f.component=n,f.eventRange=u}return c},Ci.prototype.sliceEventRanges=function(e,t,n){for(var r=[],i=0,o=e;i<o.length;i++){var a=o[i];r.push.apply(r,this.sliceEventRange(a,t,n))}return r},Ci.prototype.sliceEventRange=function(e,t,n){for(var r=this.sliceRange.apply(this,[e.range].concat(n)),i=0,o=r;i<o.length;i++){var a=o[i];a.component=t,a.eventRange=e,a.isStart=e.isStart&&a.isStart,a.isEnd=e.isEnd&&a.isEnd}return r},Ci);function Ci(){this.sliceBusinessHours=Fe(this._sliceBusinessHours),this.sliceDateSelection=Fe(this._sliceDateSpan),this.sliceEventStore=Fe(this._sliceEventStore),this.sliceEventDrag=Fe(this._sliceInteraction),this.sliceEventResize=Fe(this._sliceInteraction)}function xi(e,t){var n=e.activeRange;return t?n:{start:P(n.start,e.minTime.milliseconds),end:P(n.end,e.maxTime.milliseconds-864e5)}}e.Calendar=Zr,e.Component=Cn,e.ComponentContext=Tn,e.DateComponent=kn,e.DateEnv=or,e.DateProfileGenerator=gr,e.DayHeader=Si,e.DaySeries=bi,e.DayTable=Di,e.ElementDragging=di,e.ElementScrollController=fn,e.EmitterMixin=rn,e.EventApi=dt,e.FgEventRenderer=oi,e.FillRenderer=li,e.Interaction=Lr,e.Mixin=en,e.NamedTimeZoneImpl=ci,e.PositionCache=ln,e.ScrollComponent=Sn,e.ScrollController=cn,e.Slicer=_i,e.Splitter=Zt,e.Theme=bn,e.View=ri,e.WindowScrollController=vn,e.addDays=O,e.addDurations=function(e,t){return{years:e.years+t.years,months:e.months+t.months,days:e.days+t.days,milliseconds:e.milliseconds+t.milliseconds}},e.addMs=P,e.addWeeks=function(e,t){var n=F(e);return n[2]+=7*t,z(n)},e.allowContextMenu=function(e){e.removeEventListener("contextmenu",k)},e.allowSelection=function(e){e.classList.remove("fc-unselectable"),e.removeEventListener("selectstart",k)},e.appendToElement=b,e.applyAll=ce,e.applyMutationToEventStore=Et,e.applyStyle=p,e.applyStyleProp=g,e.asRoughMinutes=function(e){return ee(e)/6e4},e.asRoughMs=ee,e.asRoughSeconds=function(e){return ee(e)/1e3},e.buildGotoAnchorHtml=Jt,e.buildSegCompareObj=si,e.capitaliseFirstLetter=se,e.combineEventUis=Lt,e.compareByFieldSpec=oe,e.compareByFieldSpecs=ie,e.compareNumbers=function(e,t){return e-t},e.compensateScroll=function(e,t){t.left&&p(e,{borderLeftWidth:1,marginLeft:t.left-1}),t.right&&p(e,{borderRightWidth:1,marginRight:t.right-1})},e.computeClippingRect=function(e){return M(e).map(function(e){return T(e)}).concat({left:window.pageXOffset,right:window.pageXOffset+document.documentElement.clientWidth,top:window.pageYOffset,bottom:window.pageYOffset+document.documentElement.clientHeight}).reduce(function(e,t){return v(e,t)||t})},e.computeEdges=D,e.computeEventDraggable=function(e,t,n){for(var r=e.calendar,i=e.view,o=r.pluginSystem.hooks.isDraggableTransformers,a=n.startEditable,s=0,l=o;s<l.length;s++)a=(0,l[s])(a,t,n,i);return a},e.computeEventEndResizable=function(e,t,n){return n.durationEditable},e.computeEventStartResizable=function(e,t,n){return n.durationEditable&&e.options.eventResizableFromStart},e.computeFallbackHeaderFormat=vi,e.computeHeightAndMargins=C,e.computeInnerRect=T,e.computeRect=_,e.computeVisibleDayRange=ge,e.config={},e.constrainPoint=function(e,t){return{left:Math.min(Math.max(e.left,t.left),t.right),top:Math.min(Math.max(e.top,t.top),t.bottom)}},e.createDuration=X,e.createElement=a,e.createEmptyEventStore=Ne,e.createEventInstance=Ft,e.createFormatter=ot,e.createPlugin=Nn,e.cssToStr=Rt,e.debounce=he,e.diffDates=ve,e.diffDayAndTime=L,e.diffDays=H,e.diffPoints=function(e,t){return{left:e.left-t.left,top:e.top-t.top}},e.diffWeeks=function(e,t){return H(e,t)/7},e.diffWholeDays=Y,e.diffWholeWeeks=A,e.disableCursor=function(){document.body.classList.add("fc-not-allowed")},e.distributeHeight=function(o,e,t){var a=Math.floor(e/o.length),s=Math.floor(e-a*(o.length-1)),l=[],u=[],c=[],d=0;ne(o),o.forEach(function(e,t){var n=t===o.length-1?s:a,r=e.getBoundingClientRect().height,i=r+x(e);i<n?(l.push(e),u.push(i),c.push(r)):d+=i}),t&&(e-=d,a=Math.floor(e/l.length),s=Math.floor(e-a*(l.length-1))),l.forEach(function(e,t){var n=t===l.length-1?s:a,r=u[t],i=n-(r-c[t]);r<n&&(e.style.height=i+"px")})},e.elementClosest=c,e.elementMatches=d,e.enableCursor=function(){document.body.classList.remove("fc-not-allowed")},e.eventTupleToStore=Me,e.filterEventStoreDefs=Pe,e.filterHash=we,e.findChildren=function(e,t){for(var n=e instanceof HTMLElement?[e]:e,r=[],i=0;i<n.length;i++)for(var o=n[i].children,a=0;a<o.length;a++){var s=o[a];t&&!d(s,t)||r.push(s)}return r},e.findElements=h,e.flexibleCompare=ae,e.forceClassName=function(e,t,n){n?e.classList.add(t):e.classList.remove(t)},e.formatDate=function(e,t){void 0===t&&(t={});var n=fi(t),r=ot(t),i=n.createMarkerMeta(e);return i?n.format(i.marker,r,{forcedTzo:i.forcedTzo}):""},e.formatIsoTimeString=function(e){return le(e.getUTCHours(),2)+":"+le(e.getUTCMinutes(),2)+":"+le(e.getUTCSeconds(),2)},e.formatRange=function(e,t,n){var r=fi("object"==typeof n&&n?n:{}),i=ot(n,Fn.defaultRangeSeparator),o=r.createMarkerMeta(e),a=r.createMarkerMeta(t);return o&&a?r.formatRange(o.marker,a.marker,i,{forcedStartTzo:o.forcedTzo,forcedEndTzo:a.forcedTzo,isEndExclusive:n.isEndExclusive}):""},e.getAllDayHtml=function(e){return e.allDayHtml||kt(e.allDayText)},e.getClippingParents=M,e.getDayClasses=Qt,e.getElSeg=gt,e.getRectCenter=function(e){return{left:(e.left+e.right)/2,top:(e.top+e.bottom)/2}},e.getRelevantEvents=Re,e.globalDefaults=Fn,e.greatestDurationDenominator=te,e.hasBgRendering=function(e){return"background"===e.rendering||"inverse-background"===e.rendering},e.htmlEscape=kt,e.htmlToElement=E,e.insertAfterElement=function(e,t){for(var n=l(t),r=e.nextSibling||null,i=0;i<n.length;i++)e.parentNode.insertBefore(n[i],r)},e.interactionSettingsStore=jr,e.interactionSettingsToStore=function(e){var t={};return t[e.component.uid]=e,t},e.intersectRanges=Ae,e.intersectRects=v,e.isArraysEqual=Ve,e.isDateSpansEqual=function(e,t){return Ye(e.range,t.range)&&e.allDay===t.allDay&&function(e,t){for(var n in t)if("range"!==n&&"allDay"!==n&&e[n]!==t[n])return!1;for(var n in e)if(!(n in t))return!1;return!0}(e,t)},e.isInt=ue,e.isInteractionValid=Tt,e.isMultiDayRange=function(e){var t=ge(e);return 1<H(t.start,t.end)},e.isPropsEqual=Ce,e.isPropsValid=Ct,e.isSingleDay=function(e){return 0===e.years&&0===e.months&&1===e.days&&0===e.milliseconds},e.isValidDate=B,e.listenBySelector=R,e.mapHash=De,e.matchCellWidths=function(e){var r=0;return e.forEach(function(e){var t,n=e.firstChild;n instanceof HTMLElement&&(t=n.getBoundingClientRect().width,r<t&&(r=t))}),r++,e.forEach(function(e){e.style.width=r+"px"}),r},e.memoize=Fe,e.memoizeOutput=ze,e.memoizeRendering=qt,e.mergeEventStores=Oe,e.multiplyDuration=function(e,t){return{years:e.years*t,months:e.months*t,days:e.days*t,milliseconds:e.milliseconds*t}},e.padStart=le,e.parseBusinessHours=Bt,e.parseDragMeta=function(e){var t={},n=fe(e,pi,gi,t);return n.leftoverProps=t,n},e.parseEventDef=Vt,e.parseFieldSpecs=re,e.parseMarker=ir,e.pointInsideRect=function(e,t){return e.left>=t.left&&e.left<t.right&&e.top>=t.top&&e.top<t.bottom},e.prependToElement=m,e.preventContextMenu=function(e){e.addEventListener("contextmenu",k)},e.preventDefault=k,e.preventSelection=function(e){e.classList.add("fc-unselectable"),e.addEventListener("selectstart",k)},e.processScopedUiProps=Pt,e.rangeContainsMarker=We,e.rangeContainsRange=Ue,e.rangesEqual=Ye,e.rangesIntersect=je,e.refineProps=fe,e.removeElement=r,e.removeExact=function(e,t){for(var n=0,r=0;r<e.length;)e[r]===t?(e.splice(r,1),n++):r++;return n},e.renderDateCell=mi,e.requestJson=An,e.sliceEventStore=ft,e.startOfDay=j,e.subtractInnerElHeight=function(e,t){var n={position:"relative",left:-1};p(e,n),p(t,n);var r=e.getBoundingClientRect().height-t.getBoundingClientRect().height,i={position:"",left:""};return p(e,i),p(t,i),r},e.translateRect=function(e,t,n){return{left:e.left+t,right:e.right+t,top:e.top+n,bottom:e.bottom+n}},e.uncompensateScroll=function(e){p(e,{marginLeft:"",marginRight:"",borderLeftWidth:"",borderRightWidth:""})},e.undistributeHeight=ne,e.unpromisify=Kt,e.version="4.4.2",e.whenTransitionDone=function(t,n){var r=function(e){n(e),I.forEach(function(e){t.removeEventListener(e,r)})};I.forEach(function(e){t.addEventListener(e,r)})},e.wholeDivideDurations=function(e,t){for(var n=null,r=0;r<G.length;r++){var i=G[r];if(t[i]){var o=e[i]/t[i];if(!ue(o)||null!==n&&n!==o)return null;n=o}else if(e[i])return null}return n},Object.defineProperty(e,"__esModule",{value:!0})}),function(e,t){"object"==typeof exports&&"undefined"!=typeof module?module.exports=t():"function"==typeof define&&define.amd?define(t):((e=e||self).FullCalendarLocales=e.FullCalendarLocales||{},e.FullCalendarLocales.es=t())}(this,function(){"use strict";return{code:"es",week:{dow:1,doy:4},buttonText:{prev:"Ant",next:"Sig",today:"Hoy",month:"Mes",week:"Semana",day:"Día",list:"Agenda"},weekLabel:"Sm",allDayHtml:"Todo<br/>el día",eventLimitText:"más",noEventsMessage:"No hay eventos para mostrar"}}),function(e,t){"object"==typeof exports&&"undefined"!=typeof module?t(exports,require("@fullcalendar/core")):"function"==typeof define&&define.amd?define(["exports","@fullcalendar/core"],t):t((e=e||self).FullCalendarDayGrid={},e.FullCalendar)}(this,function(e,C){"use strict";var r=function(e,t){return(r=Object.setPrototypeOf||{__proto__:[]}instanceof Array&&function(e,t){e.__proto__=t}||function(e,t){for(var n in t)t.hasOwnProperty(n)&&(e[n]=t[n])})(e,t)};function t(e,t){function n(){this.constructor=e}r(e,t),e.prototype=null===t?Object.create(t):(n.prototype=t.prototype,new n)}var u,c=function(){return(c=Object.assign||function(e){for(var t,n=1,r=arguments.length;n<r;n++)for(var i in t=arguments[n])Object.prototype.hasOwnProperty.call(t,i)&&(e[i]=t[i]);return e}).apply(this,arguments)},n=(t(i,u=C.DateProfileGenerator),i.prototype.buildRenderRange=function(e,t,n){var r,i,o=this.dateEnv,a=u.prototype.buildRenderRange.call(this,e,t,n),s=a.start,l=a.end;return/^(year|month)$/.test(t)&&(s=o.startOfWeek(s),(r=o.startOfWeek(l)).valueOf()!==l.valueOf()&&(l=C.addWeeks(r,1))),this.options.monthMode&&this.options.fixedWeekCount&&(i=Math.ceil(C.diffWeeks(s,l)),l=C.addWeeks(l,6-i)),{start:s,end:l}},i);function i(){return null!==u&&u.apply(this,arguments)||this}var p=(o.prototype.show=function(){this.isHidden&&(this.el||this.render(),this.el.style.display="",this.position(),this.isHidden=!1,this.trigger("show"))},o.prototype.hide=function(){this.isHidden||(this.el.style.display="none",this.isHidden=!0,this.trigger("hide"))},o.prototype.render=function(){var t=this,e=this.options,n=this.el=C.createElement("div",{className:"fc-popover "+(e.className||""),style:{top:"0",left:"0"}});"function"==typeof e.content&&e.content(n),e.parentEl.appendChild(n),C.listenBySelector(n,"click",".fc-close",function(e){t.hide()}),e.autoHide&&document.addEventListener("mousedown",this.documentMousedown)},o.prototype.destroy=function(){this.hide(),this.el&&(C.removeElement(this.el),this.el=null),document.removeEventListener("mousedown",this.documentMousedown)},o.prototype.position=function(){var e=this.options,t=this.el,n=t.getBoundingClientRect(),r=C.computeRect(t.offsetParent),i=C.computeClippingRect(e.parentEl),o=e.top||0,a=void 0!==e.left?e.left:void 0!==e.right?e.right-n.width:0;o=Math.min(o,i.bottom-n.height-this.margin),o=Math.max(o,i.top+this.margin),a=Math.min(a,i.right-n.width-this.margin),a=Math.max(a,i.left+this.margin),C.applyStyle(t,{top:o-r.top,left:a-r.left})},o.prototype.trigger=function(e){this.options[e]&&this.options[e].apply(this,Array.prototype.slice.call(arguments,1))},o);function o(e){var t=this;this.isHidden=!0,this.margin=10,this.documentMousedown=function(e){t.el&&!t.el.contains(e.target)&&t.hide()},this.options=e}var a,s=(t(l,a=C.FgEventRenderer),l.prototype.renderSegHtml=function(e,t){var n,r,i=this.context,o=e.eventRange,a=o.def,s=o.ui,l=a.allDay,u=C.computeEventDraggable(i,a,s),c=l&&e.isStart&&C.computeEventStartResizable(i,a,s),d=l&&e.isEnd&&C.computeEventEndResizable(i,a,s),h=this.getSegClasses(e,u,c||d,t),f=C.cssToStr(this.getSkinCss(s)),p="";return h.unshift("fc-day-grid-event","fc-h-event"),e.isStart&&(n=this.getTimeText(o))&&(p='<span class="fc-time">'+C.htmlEscape(n)+"</span>"),r='<span class="fc-title">'+(C.htmlEscape(a.title||"")||"&nbsp;")+"</span>",'<a class="'+h.join(" ")+'"'+(a.url?' href="'+C.htmlEscape(a.url)+'"':"")+(f?' style="'+f+'"':"")+'><div class="fc-content">'+("rtl"===i.options.dir?r+" "+p:p+" "+r)+"</div>"+(c?'<div class="fc-resizer fc-start-resizer"></div>':"")+(d?'<div class="fc-resizer fc-end-resizer"></div>':"")+"</a>"},l.prototype.computeEventTimeFormat=function(){return{hour:"numeric",minute:"2-digit",omitZeroMinute:!0,meridiem:"narrow"}},l.prototype.computeDisplayEventEnd=function(){return!1},l);function l(){return null!==a&&a.apply(this,arguments)||this}var d,h=(t(f,d=s),f.prototype.attachSegs=function(e,t){var n=this.rowStructs=this.renderSegRows(e);this.dayGrid.rowEls.forEach(function(e,t){e.querySelector(".fc-content-skeleton > table").appendChild(n[t].tbodyEl)}),t||this.dayGrid.removeSegPopover()},f.prototype.detachSegs=function(){for(var e,t=this.rowStructs||[];e=t.pop();)C.removeElement(e.tbodyEl);this.rowStructs=null},f.prototype.renderSegRows=function(e){for(var t=[],n=this.groupSegRows(e),r=0;r<n.length;r++)t.push(this.renderSegRow(r,n[r]));return t},f.prototype.renderSegRow=function(e,t){var n,r,i,o,a,s,l,u=this.context.isRtl,c=this.dayGrid,d=c.colCnt,h=this.buildSegLevels(t),f=Math.max(1,h.length),p=document.createElement("tbody"),g=[],v=[],m=[];function y(e){for(;i<e;)(l=(m[n-1]||[])[i])?l.rowSpan=(l.rowSpan||1)+1:(l=document.createElement("td"),o.appendChild(l)),v[n][i]=l,m[n][i]=l,i++}for(n=0;n<f;n++){if(r=h[n],i=0,o=document.createElement("tr"),g.push([]),v.push([]),m.push([]),r)for(a=0;a<r.length;a++){s=r[a];var S=u?d-1-s.lastCol:s.firstCol,E=u?d-1-s.firstCol:s.lastCol;for(y(S),l=C.createElement("td",{className:"fc-event-container"},s.el),S!==E?l.colSpan=E-S+1:m[n][i]=l;i<=E;)v[n][i]=l,g[n][i]=s,i++;o.appendChild(l)}y(d);var b=c.renderProps.renderIntroHtml();b&&(u?C.appendToElement(o,b):C.prependToElement(o,b)),p.appendChild(o)}return{row:e,tbodyEl:p,cellMatrix:v,segMatrix:g,segLevels:h,segs:t}},f.prototype.buildSegLevels=function(e){var t,n,r,i=this.context.isRtl,o=this.dayGrid.colCnt,a=[];for(e=this.sortEventSegs(e),t=0;t<e.length;t++){for(n=e[t],r=0;r<a.length&&function(e,t){var n,r;for(n=0;n<t.length;n++)if((r=t[n]).firstCol<=e.lastCol&&r.lastCol>=e.firstCol)return 1}(n,a[r]);r++);n.level=r,n.leftCol=i?o-1-n.lastCol:n.firstCol,n.rightCol=i?o-1-n.firstCol:n.lastCol,(a[r]||(a[r]=[])).push(n)}for(r=0;r<a.length;r++)a[r].sort(g);return a},f.prototype.groupSegRows=function(e){for(var t=[],n=0;n<this.dayGrid.rowCnt;n++)t.push([]);for(n=0;n<e.length;n++)t[e[n].row].push(e[n]);return t},f.prototype.computeDisplayEventEnd=function(){return 1===this.dayGrid.colCnt},f);function f(e){var t=d.call(this)||this;return t.dayGrid=e,t}function g(e,t){return e.leftCol-t.leftCol}var v,m=(t(y,v=h),y.prototype.attachSegs=function(e,t){var o=t.sourceSeg,a=this.rowStructs=this.renderSegRows(e);this.dayGrid.rowEls.forEach(function(e,t){var n=C.htmlToElement('<div class="fc-mirror-skeleton"><table></table></div>'),r=o&&o.row===t?o.el:(r=e.querySelector(".fc-content-skeleton tbody"))||e.querySelector(".fc-content-skeleton table"),i=r.getBoundingClientRect().top-e.getBoundingClientRect().top;n.style.top=i+"px",n.querySelector("table").appendChild(a[t].tbodyEl),e.appendChild(n)})},y);function y(){return null!==v&&v.apply(this,arguments)||this}var S,E='<td style="pointer-events:none"></td>',b=(t(w,S=C.FillRenderer),w.prototype.renderSegs=function(e,t,n){"bgEvent"===e&&(n=n.filter(function(e){return e.eventRange.def.allDay})),S.prototype.renderSegs.call(this,e,t,n)},w.prototype.attachSegs=function(e,t){for(var n,r,i=[],o=0;o<t.length;o++)n=t[o],r=this.renderFillRow(e,n),this.dayGrid.rowEls[n.row].appendChild(r),i.push(r);return i},w.prototype.renderFillRow=function(e,t){var n=this.dayGrid,r=this.context.isRtl,i=n.colCnt,o=r?i-1-t.lastCol:t.firstCol,a=(r?i-1-t.firstCol:t.lastCol)+1,s="businessHours"===e?"bgevent":e.toLowerCase(),l=C.htmlToElement('<div class="fc-'+s+'-skeleton"><table><tr></tr></table></div>'),u=l.getElementsByTagName("tr")[0];0<o&&C.appendToElement(u,new Array(o+1).join(E)),t.el.colSpan=a-o,u.appendChild(t.el),a<i&&C.appendToElement(u,new Array(i-a+1).join(E));var c=n.renderProps.renderIntroHtml();return c&&(r?C.appendToElement(u,c):C.prependToElement(u,c)),l},w);function w(e){var t=S.call(this)||this;return t.fillSegTag="td",t.dayGrid=e,t}var D,T=(t(_,D=C.DateComponent),_.prototype.firstContext=function(e){e.calendar.registerInteractiveComponent(this,{el:this.el,useEventCenter:!1})},_.prototype.render=function(e,t){this.renderFrame(e.date),this.renderFgEvents(t,e.fgSegs),this.renderEventSelection(e.eventSelection),this.renderEventDrag(e.eventDragInstances),this.renderEventResize(e.eventResizeInstances)},_.prototype.destroy=function(){D.prototype.destroy.call(this),this.renderFrame.unrender(),this.context.calendar.unregisterInteractiveComponent(this)},_.prototype._renderFrame=function(e){var t=this.context,n=t.theme,r=t.dateEnv,i=t.options,o=r.format(e,C.createFormatter(i.dayPopoverFormat));this.el.innerHTML='<div class="fc-header '+n.getClass("popoverHeader")+'"><span class="fc-title">'+C.htmlEscape(o)+'</span><span class="fc-close '+n.getIconClass("close")+'"></span></div><div class="fc-body '+n.getClass("popoverContent")+'"><div class="fc-event-container"></div></div>',this.segContainerEl=this.el.querySelector(".fc-event-container")},_.prototype.queryHit=function(e,t,n,r){var i=this.props.date;if(e<n&&t<r)return{component:this,dateSpan:{allDay:!0,range:{start:i,end:C.addDays(i,1)}},dayEl:this.el,rect:{left:0,top:0,right:n,bottom:r},layer:1}},_);function _(e){var t=D.call(this,e)||this,n=t.eventRenderer=new M(t),r=t.renderFrame=C.memoizeRendering(t._renderFrame);return t.renderFgEvents=C.memoizeRendering(n.renderSegs.bind(n),n.unrender.bind(n),[r]),t.renderEventSelection=C.memoizeRendering(n.selectByInstanceId.bind(n),n.unselectByInstanceId.bind(n),[t.renderFgEvents]),t.renderEventDrag=C.memoizeRendering(n.hideByHash.bind(n),n.showByHash.bind(n),[r]),t.renderEventResize=C.memoizeRendering(n.hideByHash.bind(n),n.showByHash.bind(n),[r]),t}var x,M=(t(k,x=s),k.prototype.attachSegs=function(e){for(var t=0,n=e;t<n.length;t++){var r=n[t];this.dayTile.segContainerEl.appendChild(r.el)}},k.prototype.detachSegs=function(e){for(var t=0,n=e;t<n.length;t++){var r=n[t];C.removeElement(r.el)}},k);function k(e){var t=x.call(this)||this;return t.dayTile=e,t}var R=(I.prototype.renderHtml=function(e){var t=[];e.renderIntroHtml&&t.push(e.renderIntroHtml());for(var n,r,i,o,a,s,l,u,c=0,d=e.cells;c<d.length;c++){var h=d[c];t.push((n=h.date,r=e.dateProfile,i=this.context,o=h.htmlAttrs,u=s=a=void 0,a=i.dateEnv,s=i.theme,l=C.rangeContainsMarker(r.activeRange,n),(u=C.getDayClasses(n,r,i)).unshift("fc-day",s.getClass("widgetContent")),'<td class="'+u.join(" ")+'"'+(l?' data-date="'+a.formatIso(n,{omitTime:!0})+'"':"")+(o?" "+o:"")+"></td>"))}return e.cells.length||t.push('<td class="fc-day '+this.context.theme.getClass("widgetContent")+'"></td>'),"rtl"===this.context.options.dir&&t.reverse(),"<tr>"+t.join("")+"</tr>"},I);function I(e){this.context=e}var N,O=C.createFormatter({day:"numeric"}),P=C.createFormatter({week:"numeric"}),H=(t(L,N=C.DateComponent),L.prototype.render=function(e,t){var n=e.cells;this.rowCnt=n.length,this.colCnt=n[0].length,this.renderCells(n,e.isRigid),this.renderBusinessHours(t,e.businessHourSegs),this.renderDateSelection(t,e.dateSelectionSegs),this.renderBgEvents(t,e.bgEventSegs),this.renderFgEvents(t,e.fgEventSegs),this.renderEventSelection(e.eventSelection),this.renderEventDrag(e.eventDrag),this.renderEventResize(e.eventResize),this.segPopoverTile&&this.updateSegPopoverTile()},L.prototype.destroy=function(){N.prototype.destroy.call(this),this.renderCells.unrender()},L.prototype.getCellRange=function(e,t){var n=this.props.cells[e][t].date;return{start:n,end:C.addDays(n,1)}},L.prototype.updateSegPopoverTile=function(e,t){var n=this.props;this.segPopoverTile.receiveProps({date:e||this.segPopoverTile.props.date,fgSegs:t||this.segPopoverTile.props.fgSegs,eventSelection:n.eventSelection,eventDragInstances:n.eventDrag?n.eventDrag.affectedInstances:null,eventResizeInstances:n.eventResize?n.eventResize.affectedInstances:null},this.context)},L.prototype._renderCells=function(e,t){for(var n,r=this.context,i=r.calendar,o=r.view,a=r.isRtl,s=r.dateEnv,l=this.rowCnt,u=this.colCnt,c="",d=0;d<l;d++)c+=this.renderDayRowHtml(d,t);for(this.el.innerHTML=c,this.rowEls=C.findElements(this.el,".fc-row"),this.cellEls=C.findElements(this.el,".fc-day, .fc-disabled-day"),a&&this.cellEls.reverse(),this.rowPositions=new C.PositionCache(this.el,this.rowEls,!1,!0),this.colPositions=new C.PositionCache(this.el,this.cellEls.slice(0,u),!0,!1),d=0;d<l;d++)for(n=0;n<u;n++)i.publiclyTrigger("dayRender",[{date:s.toDate(e[d][n].date),el:this.getCellEl(d,n),view:o}]);this.isCellSizesDirty=!0},L.prototype._unrenderCells=function(){this.removeSegPopover()},L.prototype.renderDayRowHtml=function(e,t){var n=this.context.theme,r=["fc-row","fc-week",n.getClass("dayRow")];t&&r.push("fc-rigid");var i=new R(this.context);return'<div class="'+r.join(" ")+'"><div class="fc-bg"><table class="'+n.getClass("tableGrid")+'">'+i.renderHtml({cells:this.props.cells[e],dateProfile:this.props.dateProfile,renderIntroHtml:this.renderProps.renderBgIntroHtml})+'</table></div><div class="fc-content-skeleton"><table>'+(this.getIsNumbersVisible()?"<thead>"+this.renderNumberTrHtml(e)+"</thead>":"")+"</table></div></div>"},L.prototype.getIsNumbersVisible=function(){return this.getIsDayNumbersVisible()||this.renderProps.cellWeekNumbersVisible||this.renderProps.colWeekNumbersVisible},L.prototype.getIsDayNumbersVisible=function(){return 1<this.rowCnt},L.prototype.renderNumberTrHtml=function(e){var t=this.context.isRtl,n=this.renderProps.renderNumberIntroHtml(e,this);return"<tr>"+(t?"":n)+this.renderNumberCellsHtml(e)+(t?n:"")+"</tr>"},L.prototype.renderNumberCellsHtml=function(e){for(var t,n=[],r=0;r<this.colCnt;r++)t=this.props.cells[e][r].date,n.push(this.renderNumberCellHtml(t));return this.context.isRtl&&n.reverse(),n.join("")},L.prototype.renderNumberCellHtml=function(e){var t,n,r=this.context,i=r.dateEnv,o=r.options,a="",s=C.rangeContainsMarker(this.props.dateProfile.activeRange,e),l=this.getIsDayNumbersVisible()&&s;return l||this.renderProps.cellWeekNumbersVisible?((t=C.getDayClasses(e,this.props.dateProfile,this.context)).unshift("fc-day-top"),this.renderProps.cellWeekNumbersVisible&&(n=i.weekDow),a+='<td class="'+t.join(" ")+'"'+(s?' data-date="'+i.formatIso(e,{omitTime:!0})+'"':"")+">",this.renderProps.cellWeekNumbersVisible&&e.getUTCDay()===n&&(a+=C.buildGotoAnchorHtml(o,i,{date:e,type:"week"},{class:"fc-week-number"},i.format(e,P))),l&&(a+=C.buildGotoAnchorHtml(o,i,e,{class:"fc-day-number"},i.format(e,O))),a+="</td>"):"<td></td>"},L.prototype.updateSize=function(e){var t=this.context.calendar,n=this.fillRenderer,r=this.eventRenderer,i=this.mirrorRenderer;(e||this.isCellSizesDirty||t.isEventsUpdated)&&(this.buildPositionCaches(),this.isCellSizesDirty=!1),n.computeSizes(e),r.computeSizes(e),i.computeSizes(e),n.assignSizes(e),r.assignSizes(e),i.assignSizes(e)},L.prototype.buildPositionCaches=function(){this.buildColPositions(),this.buildRowPositions()},L.prototype.buildColPositions=function(){this.colPositions.build()},L.prototype.buildRowPositions=function(){this.rowPositions.build(),this.rowPositions.bottoms[this.rowCnt-1]+=this.bottomCoordPadding},L.prototype.positionToHit=function(e,t){var n=this.colPositions,r=this.rowPositions,i=n.leftToIndex(e),o=r.topToIndex(t);if(null!=o&&null!=i)return{row:o,col:i,dateSpan:{range:this.getCellRange(o,i),allDay:!0},dayEl:this.getCellEl(o,i),relativeRect:{left:n.lefts[i],right:n.rights[i],top:r.tops[o],bottom:r.bottoms[o]}}},L.prototype.getCellEl=function(e,t){return this.cellEls[e*this.colCnt+t]},L.prototype._renderEventDrag=function(e){e&&(this.eventRenderer.hideByHash(e.affectedInstances),this.fillRenderer.renderSegs("highlight",this.context,e.segs))},L.prototype._unrenderEventDrag=function(e){e&&(this.eventRenderer.showByHash(e.affectedInstances),this.fillRenderer.unrender("highlight",this.context))},L.prototype._renderEventResize=function(e){e&&(this.eventRenderer.hideByHash(e.affectedInstances),this.fillRenderer.renderSegs("highlight",this.context,e.segs),this.mirrorRenderer.renderSegs(this.context,e.segs,{isResizing:!0,sourceSeg:e.sourceSeg}))},L.prototype._unrenderEventResize=function(e){e&&(this.eventRenderer.showByHash(e.affectedInstances),this.fillRenderer.unrender("highlight",this.context),this.mirrorRenderer.unrender(this.context,e.segs,{isResizing:!0,sourceSeg:e.sourceSeg}))},L.prototype.removeSegPopover=function(){this.segPopover&&this.segPopover.hide()},L.prototype.limitRows=function(e){for(var t,n=this.eventRenderer.rowStructs||[],r=0;r<n.length;r++)this.unlimitRow(r),!1!==(t=!!e&&("number"==typeof e?e:this.computeRowLevelLimit(r)))&&this.limitRow(r,t)},L.prototype.computeRowLevelLimit=function(e){for(var t,n=this.rowEls[e].getBoundingClientRect().bottom,r=C.findChildren(this.eventRenderer.rowStructs[e].tbodyEl),i=0;i<r.length;i++)if((t=r[i]).classList.remove("fc-limited"),t.getBoundingClientRect().bottom>n)return i;return!1},L.prototype.limitRow=function(t,n){function e(e){for(;D<e;)(l=y.getCellSegs(t,D,n)).length&&(d=i[n-1][D],m=y.renderMoreLink(t,D,l),v=C.createElement("div",null,m),d.appendChild(v),w.push(v)),D++}var r,i,o,a,s,l,u,c,d,h,f,p,g,v,m,y=this,S=this.colCnt,E=this.context.isRtl,b=this.eventRenderer.rowStructs[t],w=[],D=0;if(n&&n<b.segLevels.length){for(r=b.segLevels[n-1],i=b.cellMatrix,(o=C.findChildren(b.tbodyEl).slice(n)).forEach(function(e){e.classList.add("fc-limited")}),a=0;a<r.length;a++){s=r[a];var T=E?S-1-s.lastCol:s.firstCol,_=E?S-1-s.firstCol:s.lastCol;for(e(T),c=[],u=0;D<=_;)l=this.getCellSegs(t,D,n),c.push(l),u+=l.length,D++;if(u){for(h=(d=i[n-1][T]).rowSpan||1,f=[],p=0;p<c.length;p++)g=C.createElement("td",{className:"fc-more-cell",rowSpan:h}),l=c[p],m=this.renderMoreLink(t,T+p,[s].concat(l)),v=C.createElement("div",null,m),g.appendChild(v),f.push(g),w.push(g);d.classList.add("fc-limited"),C.insertAfterElement(d,f),o.push(d)}}e(this.colCnt),b.moreEls=w,b.limitedEls=o}},L.prototype.unlimitRow=function(e){var t=this.eventRenderer.rowStructs[e];t.moreEls&&(t.moreEls.forEach(C.removeElement),t.moreEls=null),t.limitedEls&&(t.limitedEls.forEach(function(e){e.classList.remove("fc-limited")}),t.limitedEls=null)},L.prototype.renderMoreLink=function(u,c,d){var h=this,e=this.context,f=e.calendar,p=e.view,g=e.dateEnv,v=e.options,m=e.isRtl,t=C.createElement("a",{className:"fc-more"});return t.innerText=this.getMoreLinkText(d.length),t.addEventListener("click",function(e){var t=v.eventLimitClick,n=m?h.colCnt-c-1:c,r=h.props.cells[u][n].date,i=e.currentTarget,o=h.getCellEl(u,c),a=h.getCellSegs(u,c),s=h.resliceDaySegs(a,r),l=h.resliceDaySegs(d,r);"function"==typeof t&&(t=f.publiclyTrigger("eventLimitClick",[{date:g.toDate(r),allDay:!0,dayEl:o,moreEl:i,segs:s,hiddenSegs:l,jsEvent:e,view:p}])),"popover"===t?h.showSegPopover(u,c,i,s):"string"==typeof t&&f.zoomTo(r,t)}),t},L.prototype.showSegPopover=function(t,e,n,r){var i=this,o=this.context,a=o.calendar,s=o.view,l=o.theme,u=o.isRtl,c=u?this.colCnt-e-1:e,d=n.parentNode,h=1===this.rowCnt?s.el:this.rowEls[t],f={className:"fc-more-popover "+l.getClass("popover"),parentEl:s.el,top:C.computeRect(h).top,autoHide:!0,content:function(e){i.segPopoverTile=new T(e),i.updateSegPopoverTile(i.props.cells[t][c].date,r)},hide:function(){i.segPopoverTile.destroy(),i.segPopoverTile=null,i.segPopover.destroy(),i.segPopover=null}};u?f.right=C.computeRect(d).right+1:f.left=C.computeRect(d).left-1,this.segPopover=new p(f),this.segPopover.show(),a.releaseAfterSizingTriggers()},L.prototype.resliceDaySegs=function(e,t){for(var n={start:t,end:C.addDays(t,1)},r=[],i=0,o=e;i<o.length;i++){var a=o[i],s=a.eventRange,l=s.range,u=C.intersectRanges(l,n);u&&r.push(c({},a,{eventRange:{def:s.def,ui:c({},s.ui,{durationEditable:!1}),instance:s.instance,range:u},isStart:a.isStart&&u.start.valueOf()===l.start.valueOf(),isEnd:a.isEnd&&u.end.valueOf()===l.end.valueOf()}))}return r},L.prototype.getMoreLinkText=function(e){var t=this.context.options.eventLimitText;return"function"==typeof t?t(e):"+"+e+" "+t},L.prototype.getCellSegs=function(e,t,n){for(var r,i=this.eventRenderer.rowStructs[e].segMatrix,o=n||0,a=[];o<i.length;)(r=i[o][t])&&a.push(r),o++;return a},L);function L(e,t){var n=N.call(this,e)||this;n.bottomCoordPadding=0,n.isCellSizesDirty=!1,n.renderProps=t;var r=n.eventRenderer=new h(n),i=n.fillRenderer=new b(n);n.mirrorRenderer=new m(n);var o=n.renderCells=C.memoizeRendering(n._renderCells,n._unrenderCells);return n.renderBusinessHours=C.memoizeRendering(i.renderSegs.bind(i,"businessHours"),i.unrender.bind(i,"businessHours"),[o]),n.renderDateSelection=C.memoizeRendering(i.renderSegs.bind(i,"highlight"),i.unrender.bind(i,"highlight"),[o]),n.renderBgEvents=C.memoizeRendering(i.renderSegs.bind(i,"bgEvent"),i.unrender.bind(i,"bgEvent"),[o]),n.renderFgEvents=C.memoizeRendering(r.renderSegs.bind(r),r.unrender.bind(r),[o]),n.renderEventSelection=C.memoizeRendering(r.selectByInstanceId.bind(r),r.unselectByInstanceId.bind(r),[n.renderFgEvents]),n.renderEventDrag=C.memoizeRendering(n._renderEventDrag,n._unrenderEventDrag,[o]),n.renderEventResize=C.memoizeRendering(n._renderEventResize,n._unrenderEventResize,[o]),n}var A,Y=C.createFormatter({week:"numeric"}),j=(t(U,A=C.View),U.prototype._processOptions=function(e){e.weekNumbers?e.weekNumbersWithinDays?(this.cellWeekNumbersVisible=!0,this.colWeekNumbersVisible=!1):(this.cellWeekNumbersVisible=!1,this.colWeekNumbersVisible=!0):(this.colWeekNumbersVisible=!1,this.cellWeekNumbersVisible=!1)},U.prototype.render=function(e,t){A.prototype.render.call(this,e,t),this.processOptions(t.options),this.renderSkeleton(t)},U.prototype.destroy=function(){A.prototype.destroy.call(this),this.renderSkeleton.unrender()},U.prototype._renderSkeleton=function(e){this.el.classList.add("fc-dayGrid-view"),this.el.innerHTML=this.renderSkeletonHtml(),this.scroller=new C.ScrollComponent("hidden","auto");var t=this.scroller.el;this.el.querySelector(".fc-body > tr > td").appendChild(t),t.classList.add("fc-day-grid-container");var n=C.createElement("div",{className:"fc-day-grid"});t.appendChild(n),this.dayGrid=new H(n,{renderNumberIntroHtml:this.renderDayGridNumberIntroHtml,renderBgIntroHtml:this.renderDayGridBgIntroHtml,renderIntroHtml:this.renderDayGridIntroHtml,colWeekNumbersVisible:this.colWeekNumbersVisible,cellWeekNumbersVisible:this.cellWeekNumbersVisible})},U.prototype._unrenderSkeleton=function(){this.el.classList.remove("fc-dayGrid-view"),this.dayGrid.destroy(),this.scroller.destroy()},U.prototype.renderSkeletonHtml=function(){var e=this.context,t=e.theme,n=e.options;return'<table class="'+t.getClass("tableGrid")+'">'+(n.columnHeader?'<thead class="fc-head"><tr><td class="fc-head-container '+t.getClass("widgetHeader")+'">&nbsp;</td></tr></thead>':"")+'<tbody class="fc-body"><tr><td class="'+t.getClass("widgetContent")+'"></td></tr></tbody></table>'},U.prototype.weekNumberStyleAttr=function(){return null!=this.weekNumberWidth?'style="width:'+this.weekNumberWidth+'px"':""},U.prototype.hasRigidRows=function(){var e=this.context.options.eventLimit;return e&&"number"!=typeof e},U.prototype.updateSize=function(e,t,n){A.prototype.updateSize.call(this,e,t,n),this.dayGrid.updateSize(e)},U.prototype.updateBaseSize=function(e,t,n){var r,i,o=this.dayGrid,a=this.context.options.eventLimit,s=this.header?this.header.el:null;o.rowEls?(this.colWeekNumbersVisible&&(this.weekNumberWidth=C.matchCellWidths(C.findElements(this.el,".fc-week-number"))),this.scroller.clear(),s&&C.uncompensateScroll(s),o.removeSegPopover(),a&&"number"==typeof a&&o.limitRows(a),r=this.computeScrollerHeight(t),this.setGridHeight(r,n),a&&"number"!=typeof a&&o.limitRows(a),n||(this.scroller.setHeight(r),((i=this.scroller.getScrollbarWidths()).left||i.right)&&(s&&C.compensateScroll(s,i),r=this.computeScrollerHeight(t),this.scroller.setHeight(r)),this.scroller.lockOverflow(i))):n||(r=this.computeScrollerHeight(t),this.scroller.setHeight(r))},U.prototype.computeScrollerHeight=function(e){return e-C.subtractInnerElHeight(this.el,this.scroller.el)},U.prototype.setGridHeight=function(e,t){this.context.options.monthMode?(t&&(e*=this.dayGrid.rowCnt/6),C.distributeHeight(this.dayGrid.rowEls,e,!t)):t?C.undistributeHeight(this.dayGrid.rowEls):C.distributeHeight(this.dayGrid.rowEls,e,!0)},U.prototype.computeDateScroll=function(e){return{top:0}},U.prototype.queryDateScroll=function(){return{top:this.scroller.getScrollTop()}},U.prototype.applyDateScroll=function(e){void 0!==e.top&&this.scroller.setScrollTop(e.top)},U);function U(){var a=null!==A&&A.apply(this,arguments)||this;return a.processOptions=C.memoize(a._processOptions),a.renderSkeleton=C.memoizeRendering(a._renderSkeleton,a._unrenderSkeleton),a.renderHeadIntroHtml=function(){var e=a.context,t=e.theme,n=e.options;return a.colWeekNumbersVisible?'<th class="fc-week-number '+t.getClass("widgetHeader")+'" '+a.weekNumberStyleAttr()+"><span>"+C.htmlEscape(n.weekLabel)+"</span></th>":""},a.renderDayGridNumberIntroHtml=function(e,t){var n=a.context,r=n.options,i=n.dateEnv,o=t.props.cells[e][0].date;return a.colWeekNumbersVisible?'<td class="fc-week-number" '+a.weekNumberStyleAttr()+">"+C.buildGotoAnchorHtml(r,i,{date:o,type:"week",forceOff:1===t.colCnt},i.format(o,Y))+"</td>":""},a.renderDayGridBgIntroHtml=function(){var e=a.context.theme;return a.colWeekNumbersVisible?'<td class="fc-week-number '+e.getClass("widgetContent")+'" '+a.weekNumberStyleAttr()+"></td>":""},a.renderDayGridIntroHtml=function(){return a.colWeekNumbersVisible?'<td class="fc-week-number" '+a.weekNumberStyleAttr()+"></td>":""},a}j.prototype.dateProfileGeneratorClass=n;var W,V=(t(F,W=C.DateComponent),F.prototype.firstContext=function(e){e.calendar.registerInteractiveComponent(this,{el:this.dayGrid.el})},F.prototype.destroy=function(){W.prototype.destroy.call(this),this.context.calendar.unregisterInteractiveComponent(this)},F.prototype.render=function(e,t){var n=this.dayGrid,r=e.dateProfile,i=e.dayTable;n.receiveContext(t),n.receiveProps(c({},this.slicer.sliceProps(e,r,e.nextDayThreshold,t.calendar,n,i),{dateProfile:r,cells:i.cells,isRigid:e.isRigid}),t)},F.prototype.buildPositionCaches=function(){this.dayGrid.buildPositionCaches()},F.prototype.queryHit=function(e,t){var n=this.dayGrid.positionToHit(e,t);if(n)return{component:this.dayGrid,dateSpan:n.dateSpan,dayEl:n.dayEl,rect:{left:n.relativeRect.left,right:n.relativeRect.right,top:n.relativeRect.top,bottom:n.relativeRect.bottom},layer:0}},F);function F(e){var t=W.call(this,e.el)||this;return t.slicer=new B,t.dayGrid=e,t}var z,B=(t(q,z=C.Slicer),q.prototype.sliceRange=function(e,t){return t.sliceRange(e)},q);function q(){return null!==z&&z.apply(this,arguments)||this}var G,Z=(t(X,G=j),X.prototype.render=function(e,t){G.prototype.render.call(this,e,t);var n=this.props.dateProfile,r=this.dayTable=this.buildDayTable(n,e.dateProfileGenerator);this.header&&this.header.receiveProps({dateProfile:n,dates:r.headerDates,datesRepDistinctDays:1===r.rowCnt,renderIntroHtml:this.renderHeadIntroHtml},t),this.simpleDayGrid.receiveProps({dateProfile:n,dayTable:r,businessHours:e.businessHours,dateSelection:e.dateSelection,eventStore:e.eventStore,eventUiBases:e.eventUiBases,eventSelection:e.eventSelection,eventDrag:e.eventDrag,eventResize:e.eventResize,isRigid:this.hasRigidRows(),nextDayThreshold:this.context.nextDayThreshold},t)},X.prototype._renderSkeleton=function(e){G.prototype._renderSkeleton.call(this,e),e.options.columnHeader&&(this.header=new C.DayHeader(this.el.querySelector(".fc-head-container"))),this.simpleDayGrid=new V(this.dayGrid)},X.prototype._unrenderSkeleton=function(){G.prototype._unrenderSkeleton.call(this),this.header&&this.header.destroy(),this.simpleDayGrid.destroy()},X);function X(){var e=null!==G&&G.apply(this,arguments)||this;return e.buildDayTable=C.memoize($),e}function $(e,t){var n=new C.DaySeries(e.renderRange,t);return new C.DayTable(n,/year|month|week/.test(e.currentRangeUnit))}var J=C.createPlugin({defaultView:"dayGridMonth",views:{dayGrid:Z,dayGridDay:{type:"dayGrid",duration:{days:1}},dayGridWeek:{type:"dayGrid",duration:{weeks:1}},dayGridMonth:{type:"dayGrid",duration:{months:1},monthMode:!0,fixedWeekCount:!0}}});e.AbstractDayGridView=j,e.DayBgRow=R,e.DayGrid=H,e.DayGridSlicer=B,e.DayGridView=Z,e.SimpleDayGrid=V,e.buildBasicDayTable=$,e.default=J,Object.defineProperty(e,"__esModule",{value:!0})}),function(e,t){"object"==typeof exports&&"undefined"!=typeof module?t(exports,require("@fullcalendar/core")):"function"==typeof define&&define.amd?define(["exports","@fullcalendar/core"],t):t((e=e||self).FullCalendarInteraction={},e.FullCalendar)}(this,function(e,S){"use strict";var r=function(e,t){return(r=Object.setPrototypeOf||{__proto__:[]}instanceof Array&&function(e,t){e.__proto__=t}||function(e,t){for(var n in t)t.hasOwnProperty(n)&&(e[n]=t[n])})(e,t)};function t(e,t){function n(){this.constructor=e}r(e,t),e.prototype=null===t?Object.create(t):(n.prototype=t.prototype,new n)}var E=function(){return(E=Object.assign||function(e){for(var t,n=1,r=arguments.length;n<r;n++)for(var i in t=arguments[n])Object.prototype.hasOwnProperty.call(t,i)&&(e[i]=t[i]);return e}).apply(this,arguments)};S.config.touchMouseIgnoreWait=500;var n=0,i=0,o=!1,s=(a.prototype.destroy=function(){this.containerEl.removeEventListener("mousedown",this.handleMouseDown),this.containerEl.removeEventListener("touchstart",this.handleTouchStart,{passive:!0}),--i||window.removeEventListener("touchmove",l,{passive:!1})},a.prototype.tryStart=function(e){var t=this.querySubjectEl(e),n=e.target;return!(!t||this.handleSelector&&!S.elementClosest(n,this.handleSelector)||(this.subjectEl=t,this.downEl=n,this.isDragging=!0,this.wasTouchScroll=!1))},a.prototype.cleanup=function(){o=!1,this.isDragging=!1,this.subjectEl=null,this.downEl=null,this.destroyScrollWatch()},a.prototype.querySubjectEl=function(e){return this.selector?S.elementClosest(e.target,this.selector):this.containerEl},a.prototype.shouldIgnoreMouse=function(){return n||this.isTouchDragging},a.prototype.cancelTouchScroll=function(){this.isDragging&&(o=!0)},a.prototype.initScrollWatch=function(e){this.shouldWatchScroll&&(this.recordCoords(e),window.addEventListener("scroll",this.handleScroll,!0))},a.prototype.recordCoords=function(e){this.shouldWatchScroll&&(this.prevPageX=e.pageX,this.prevPageY=e.pageY,this.prevScrollX=window.pageXOffset,this.prevScrollY=window.pageYOffset)},a.prototype.destroyScrollWatch=function(){this.shouldWatchScroll&&window.removeEventListener("scroll",this.handleScroll,!0)},a.prototype.createEventFromMouse=function(e,t){var n=0,r=0;return t?(this.origPageX=e.pageX,this.origPageY=e.pageY):(n=e.pageX-this.origPageX,r=e.pageY-this.origPageY),{origEvent:e,isTouch:!1,subjectEl:this.subjectEl,pageX:e.pageX,pageY:e.pageY,deltaX:n,deltaY:r}},a.prototype.createEventFromTouch=function(e,t){var n,r=e.touches,i=0,o=0,a=r&&r.length?(n=r[0].pageX,r[0].pageY):(n=e.pageX,e.pageY);return t?(this.origPageX=n,this.origPageY=a):(i=n-this.origPageX,o=a-this.origPageY),{origEvent:e,isTouch:!0,subjectEl:this.subjectEl,pageX:n,pageY:a,deltaX:i,deltaY:o}},a);function a(e){var r=this;this.subjectEl=null,this.downEl=null,this.selector="",this.handleSelector="",this.shouldIgnoreMove=!1,this.shouldWatchScroll=!0,this.isDragging=!1,this.isTouchDragging=!1,this.wasTouchScroll=!1,this.handleMouseDown=function(e){var t,n;r.shouldIgnoreMouse()||(0!==(n=e).button||n.ctrlKey)||!r.tryStart(e)||(t=r.createEventFromMouse(e,!0),r.emitter.trigger("pointerdown",t),r.initScrollWatch(t),r.shouldIgnoreMove||document.addEventListener("mousemove",r.handleMouseMove),document.addEventListener("mouseup",r.handleMouseUp))},this.handleMouseMove=function(e){var t=r.createEventFromMouse(e);r.recordCoords(t),r.emitter.trigger("pointermove",t)},this.handleMouseUp=function(e){document.removeEventListener("mousemove",r.handleMouseMove),document.removeEventListener("mouseup",r.handleMouseUp),r.emitter.trigger("pointerup",r.createEventFromMouse(e)),r.cleanup()},this.handleTouchStart=function(e){var t,n;r.tryStart(e)&&(r.isTouchDragging=!0,t=r.createEventFromTouch(e,!0),r.emitter.trigger("pointerdown",t),r.initScrollWatch(t),n=e.target,r.shouldIgnoreMove||n.addEventListener("touchmove",r.handleTouchMove),n.addEventListener("touchend",r.handleTouchEnd),n.addEventListener("touchcancel",r.handleTouchEnd),window.addEventListener("scroll",r.handleTouchScroll,!0))},this.handleTouchMove=function(e){var t=r.createEventFromTouch(e);r.recordCoords(t),r.emitter.trigger("pointermove",t)},this.handleTouchEnd=function(e){var t;r.isDragging&&((t=e.target).removeEventListener("touchmove",r.handleTouchMove),t.removeEventListener("touchend",r.handleTouchEnd),t.removeEventListener("touchcancel",r.handleTouchEnd),window.removeEventListener("scroll",r.handleTouchScroll,!0),r.emitter.trigger("pointerup",r.createEventFromTouch(e)),r.cleanup(),r.isTouchDragging=!1,n++,setTimeout(function(){n--},S.config.touchMouseIgnoreWait))},this.handleTouchScroll=function(){r.wasTouchScroll=!0},this.handleScroll=function(e){var t,n;r.shouldIgnoreMove||(t=window.pageXOffset-r.prevScrollX+r.prevPageX,n=window.pageYOffset-r.prevScrollY+r.prevPageY,r.emitter.trigger("pointermove",{origEvent:e,isTouch:r.isTouchDragging,subjectEl:r.subjectEl,pageX:t,pageY:n,deltaX:t-r.origPageX,deltaY:n-r.origPageY}))},this.containerEl=e,this.emitter=new S.EmitterMixin,e.addEventListener("mousedown",this.handleMouseDown),e.addEventListener("touchstart",this.handleTouchStart,{passive:!0}),i++||window.addEventListener("touchmove",l,{passive:!1})}function l(e){o&&e.preventDefault()}var u=(c.prototype.start=function(e,t,n){this.sourceEl=e,this.sourceElRect=this.sourceEl.getBoundingClientRect(),this.origScreenX=t-window.pageXOffset,this.origScreenY=n-window.pageYOffset,this.deltaX=0,this.deltaY=0,this.updateElPosition()},c.prototype.handleMove=function(e,t){this.deltaX=e-window.pageXOffset-this.origScreenX,this.deltaY=t-window.pageYOffset-this.origScreenY,this.updateElPosition()},c.prototype.setIsVisible=function(e){e?this.isVisible||(this.mirrorEl&&(this.mirrorEl.style.display=""),this.isVisible=e,this.updateElPosition()):this.isVisible&&(this.mirrorEl&&(this.mirrorEl.style.display="none"),this.isVisible=e)},c.prototype.stop=function(e,t){function n(){r.cleanup(),t()}var r=this;e&&this.mirrorEl&&this.isVisible&&this.revertDuration&&(this.deltaX||this.deltaY)?this.doRevertAnimation(n,this.revertDuration):setTimeout(n,0)},c.prototype.doRevertAnimation=function(e,t){var n=this.mirrorEl,r=this.sourceEl.getBoundingClientRect();n.style.transition="top "+t+"ms,left "+t+"ms",S.applyStyle(n,{left:r.left,top:r.top}),S.whenTransitionDone(n,function(){n.style.transition="",e()})},c.prototype.cleanup=function(){this.mirrorEl&&(S.removeElement(this.mirrorEl),this.mirrorEl=null),this.sourceEl=null},c.prototype.updateElPosition=function(){this.sourceEl&&this.isVisible&&S.applyStyle(this.getMirrorEl(),{left:this.sourceElRect.left+this.deltaX,top:this.sourceElRect.top+this.deltaY})},c.prototype.getMirrorEl=function(){var e=this.sourceElRect,t=this.mirrorEl;return t||((t=this.mirrorEl=this.sourceEl.cloneNode(!0)).classList.add("fc-unselectable"),t.classList.add("fc-dragging"),S.applyStyle(t,{position:"fixed",zIndex:this.zIndex,visibility:"",boxSizing:"border-box",width:e.right-e.left,height:e.bottom-e.top,right:"auto",bottom:"auto",margin:0}),this.parentNode.appendChild(t)),t},c);function c(){this.isVisible=!1,this.sourceEl=null,this.mirrorEl=null,this.sourceElRect=null,this.parentNode=document.body,this.zIndex=9999,this.revertDuration=0}var d,h=(t(f,d=S.ScrollController),f.prototype.destroy=function(){this.doesListening&&this.getEventTarget().removeEventListener("scroll",this.handleScroll)},f.prototype.getScrollTop=function(){return this.scrollTop},f.prototype.getScrollLeft=function(){return this.scrollLeft},f.prototype.setScrollTop=function(e){this.scrollController.setScrollTop(e),this.doesListening||(this.scrollTop=Math.max(Math.min(e,this.getMaxScrollTop()),0),this.handleScrollChange())},f.prototype.setScrollLeft=function(e){this.scrollController.setScrollLeft(e),this.doesListening||(this.scrollLeft=Math.max(Math.min(e,this.getMaxScrollLeft()),0),this.handleScrollChange())},f.prototype.getClientWidth=function(){return this.clientWidth},f.prototype.getClientHeight=function(){return this.clientHeight},f.prototype.getScrollWidth=function(){return this.scrollWidth},f.prototype.getScrollHeight=function(){return this.scrollHeight},f.prototype.handleScrollChange=function(){},f);function f(e,t){var n=d.call(this)||this;return n.handleScroll=function(){n.scrollTop=n.scrollController.getScrollTop(),n.scrollLeft=n.scrollController.getScrollLeft(),n.handleScrollChange()},n.scrollController=e,n.doesListening=t,n.scrollTop=n.origScrollTop=e.getScrollTop(),n.scrollLeft=n.origScrollLeft=e.getScrollLeft(),n.scrollWidth=e.getScrollWidth(),n.scrollHeight=e.getScrollHeight(),n.clientWidth=e.getClientWidth(),n.clientHeight=e.getClientHeight(),n.clientRect=n.computeClientRect(),n.doesListening&&n.getEventTarget().addEventListener("scroll",n.handleScroll),n}var p,g=(t(v,p=h),v.prototype.getEventTarget=function(){return this.scrollController.el},v.prototype.computeClientRect=function(){return S.computeInnerRect(this.scrollController.el)},v);function v(e,t){return p.call(this,new S.ElementScrollController(e),t)||this}var m,y=(t(b,m=h),b.prototype.getEventTarget=function(){return window},b.prototype.computeClientRect=function(){return{left:this.scrollLeft,right:this.scrollLeft+this.clientWidth,top:this.scrollTop,bottom:this.scrollTop+this.clientHeight}},b.prototype.handleScrollChange=function(){this.clientRect=this.computeClientRect()},b);function b(e){return m.call(this,new S.WindowScrollController,e)||this}var w="function"==typeof performance?performance.now:Date.now,D=(T.prototype.start=function(e,t){this.isEnabled&&(this.scrollCaches=this.buildCaches(),this.pointerScreenX=null,this.pointerScreenY=null,this.everMovedUp=!1,this.everMovedDown=!1,this.everMovedLeft=!1,this.everMovedRight=!1,this.handleMove(e,t))},T.prototype.handleMove=function(e,t){var n,r,i,o;this.isEnabled&&(n=e-window.pageXOffset,r=t-window.pageYOffset,i=null===this.pointerScreenY?0:r-this.pointerScreenY,o=null===this.pointerScreenX?0:n-this.pointerScreenX,i<0?this.everMovedUp=!0:0<i&&(this.everMovedDown=!0),o<0?this.everMovedLeft=!0:0<o&&(this.everMovedRight=!0),this.pointerScreenX=n,this.pointerScreenY=r,this.isAnimating||(this.isAnimating=!0,this.requestAnimation(w())))},T.prototype.stop=function(){if(this.isEnabled){this.isAnimating=!1;for(var e=0,t=this.scrollCaches;e<t.length;e++)t[e].destroy();this.scrollCaches=null}},T.prototype.requestAnimation=function(e){this.msSinceRequest=e,requestAnimationFrame(this.animate)},T.prototype.handleSide=function(e,t){var n=e.scrollCache,r=this.edgeThreshold,i=r-e.distance,o=i*i/(r*r)*this.maxVelocity*t,a=1;switch(e.name){case"left":a=-1;case"right":n.setScrollLeft(n.getScrollLeft()+o*a);break;case"top":a=-1;case"bottom":n.setScrollTop(n.getScrollTop()+o*a)}},T.prototype.computeBestEdge=function(e,t){for(var n=this.edgeThreshold,r=null,i=0,o=this.scrollCaches;i<o.length;i++){var a=o[i],s=a.clientRect,l=e-s.left,u=s.right-e,c=t-s.top,d=s.bottom-t;0<=l&&0<=u&&0<=c&&0<=d&&(c<=n&&this.everMovedUp&&a.canScrollUp()&&(!r||r.distance>c)&&(r={scrollCache:a,name:"top",distance:c}),d<=n&&this.everMovedDown&&a.canScrollDown()&&(!r||r.distance>d)&&(r={scrollCache:a,name:"bottom",distance:d}),l<=n&&this.everMovedLeft&&a.canScrollLeft()&&(!r||r.distance>l)&&(r={scrollCache:a,name:"left",distance:l}),u<=n&&this.everMovedRight&&a.canScrollRight()&&(!r||r.distance>u)&&(r={scrollCache:a,name:"right",distance:u}))}return r},T.prototype.buildCaches=function(){return this.queryScrollEls().map(function(e){return e===window?new y(!1):new g(e,!1)})},T.prototype.queryScrollEls=function(){for(var e=[],t=0,n=this.scrollQuery;t<n.length;t++){var r=n[t];"object"==typeof r?e.push(r):e.push.apply(e,Array.prototype.slice.call(document.querySelectorAll(r)))}return e},T);function T(){var n=this;this.isEnabled=!0,this.scrollQuery=[window,".fc-scroller"],this.edgeThreshold=50,this.maxVelocity=300,this.pointerScreenX=null,this.pointerScreenY=null,this.isAnimating=!1,this.scrollCaches=null,this.everMovedUp=!1,this.everMovedDown=!1,this.everMovedLeft=!1,this.everMovedRight=!1,this.animate=function(){var e,t;n.isAnimating&&((e=n.computeBestEdge(n.pointerScreenX+window.pageXOffset,n.pointerScreenY+window.pageYOffset))?(t=w(),n.handleSide(e,(t-n.msSinceRequest)/1e3),n.requestAnimation(t)):n.isAnimating=!1)}}var _,C=(t(x,_=S.ElementDragging),x.prototype.destroy=function(){this.pointer.destroy()},x.prototype.startDelay=function(e){var t=this;"number"==typeof this.delay?this.delayTimeoutId=setTimeout(function(){t.delayTimeoutId=null,t.handleDelayEnd(e)},this.delay):this.handleDelayEnd(e)},x.prototype.handleDelayEnd=function(e){this.isDelayEnded=!0,this.tryStartDrag(e)},x.prototype.handleDistanceSurpassed=function(e){this.isDistanceSurpassed=!0,this.tryStartDrag(e)},x.prototype.tryStartDrag=function(e){this.isDelayEnded&&this.isDistanceSurpassed&&(this.pointer.wasTouchScroll&&!this.touchScrollAllowed||(this.isDragging=!0,this.mirrorNeedsRevert=!1,this.autoScroller.start(e.pageX,e.pageY),this.emitter.trigger("dragstart",e),!1===this.touchScrollAllowed&&this.pointer.cancelTouchScroll()))},x.prototype.tryStopDrag=function(e){this.mirror.stop(this.mirrorNeedsRevert,this.stopDrag.bind(this,e))},x.prototype.stopDrag=function(e){this.isDragging=!1,this.emitter.trigger("dragend",e)},x.prototype.setIgnoreMove=function(e){this.pointer.shouldIgnoreMove=e},x.prototype.setMirrorIsVisible=function(e){this.mirror.setIsVisible(e)},x.prototype.setMirrorNeedsRevert=function(e){this.mirrorNeedsRevert=e},x.prototype.setAutoScrollEnabled=function(e){this.autoScroller.isEnabled=e},x);function x(e){var i=_.call(this,e)||this;i.delay=null,i.minDistance=0,i.touchScrollAllowed=!0,i.mirrorNeedsRevert=!1,i.isInteracting=!1,i.isDragging=!1,i.isDelayEnded=!1,i.isDistanceSurpassed=!1,i.delayTimeoutId=null,i.onPointerDown=function(e){i.isDragging||(i.isInteracting=!0,i.isDelayEnded=!1,i.isDistanceSurpassed=!1,S.preventSelection(document.body),S.preventContextMenu(document.body),e.isTouch||e.origEvent.preventDefault(),i.emitter.trigger("pointerdown",e),i.pointer.shouldIgnoreMove||(i.mirror.setIsVisible(!1),i.mirror.start(e.subjectEl,e.pageX,e.pageY),i.startDelay(e),i.minDistance||i.handleDistanceSurpassed(e)))},i.onPointerMove=function(e){var t,n,r;i.isInteracting&&(i.emitter.trigger("pointermove",e),i.isDistanceSurpassed||(t=i.minDistance)*t<=(n=e.deltaX)*n+(r=e.deltaY)*r&&i.handleDistanceSurpassed(e),i.isDragging&&("scroll"!==e.origEvent.type&&(i.mirror.handleMove(e.pageX,e.pageY),i.autoScroller.handleMove(e.pageX,e.pageY)),i.emitter.trigger("dragmove",e)))},i.onPointerUp=function(e){i.isInteracting&&(i.isInteracting=!1,S.allowSelection(document.body),S.allowContextMenu(document.body),i.emitter.trigger("pointerup",e),i.isDragging&&(i.autoScroller.stop(),i.tryStopDrag(e)),i.delayTimeoutId&&(clearTimeout(i.delayTimeoutId),i.delayTimeoutId=null))};var t=i.pointer=new s(e);return t.emitter.on("pointerdown",i.onPointerDown),t.emitter.on("pointermove",i.onPointerMove),t.emitter.on("pointerup",i.onPointerUp),i.mirror=new u,i.autoScroller=new D,i}var M=(k.prototype.destroy=function(){for(var e=0,t=this.scrollCaches;e<t.length;e++)t[e].destroy()},k.prototype.computeLeft=function(){for(var e=this.origRect.left,t=0,n=this.scrollCaches;t<n.length;t++){var r=n[t];e+=r.origScrollLeft-r.getScrollLeft()}return e},k.prototype.computeTop=function(){for(var e=this.origRect.top,t=0,n=this.scrollCaches;t<n.length;t++){var r=n[t];e+=r.origScrollTop-r.getScrollTop()}return e},k.prototype.isWithinClipping=function(e,t){for(var n,r,i={left:e,top:t},o=0,a=this.scrollCaches;o<a.length;o++){var s=a[o];if(n=s.getEventTarget(),"HTML"!==(r=n.tagName)&&"BODY"!==r&&!S.pointInsideRect(i,s.clientRect))return!1}return!0},k);function k(e){this.origRect=S.computeRect(e),this.scrollCaches=S.getClippingParents(e).map(function(e){return new g(e,!0)})}var R=(I.prototype.processFirstCoord=function(e){var t,n={left:e.pageX,top:e.pageY},r=n,i=e.subjectEl;i!==document&&(t=S.computeRect(i),r=S.constrainPoint(r,t));var o,a=this.initialHit=this.queryHitForOffset(r.left,r.top);a?(this.useSubjectCenter&&t&&(o=S.intersectRects(t,a.rect))&&(r=S.getRectCenter(o)),this.coordAdjust=S.diffPoints(r,n)):this.coordAdjust={left:0,top:0}},I.prototype.handleMove=function(e,t){var n=this.queryHitForOffset(e.pageX+this.coordAdjust.left,e.pageY+this.coordAdjust.top);!t&&N(this.movingHit,n)||(this.movingHit=n,this.emitter.trigger("hitupdate",n,!1,e))},I.prototype.prepareHits=function(){this.offsetTrackers=S.mapHash(this.droppableStore,function(e){return e.component.buildPositionCaches(),new M(e.el)})},I.prototype.releaseHits=function(){var e=this.offsetTrackers;for(var t in e)e[t].destroy();this.offsetTrackers={}},I.prototype.queryHitForOffset=function(e,t){var n=this.droppableStore,r=this.offsetTrackers,i=null;for(var o in n){var a,s,l,u,c,d,h,f,p=n[o].component,g=r[o];g.isWithinClipping(e,t)&&(l=e-(a=g.computeLeft()),u=t-(s=g.computeTop()),d=(c=g.origRect).right-c.left,h=c.bottom-c.top,0<=l&&l<d&&0<=u&&u<h&&(!(f=p.queryHit(l,u,d,h))||p.props.dateProfile&&!S.rangeContainsRange(p.props.dateProfile.activeRange,f.dateSpan.range)||i&&!(f.layer>i.layer)||(f.rect.left+=a,f.rect.right+=a,f.rect.top+=s,f.rect.bottom+=s,i=f)))}return i},I);function I(e,t){var n=this;this.useSubjectCenter=!1,this.requireInitial=!0,this.initialHit=null,this.movingHit=null,this.finalHit=null,this.handlePointerDown=function(e){var t=n.dragging;n.initialHit=null,n.movingHit=null,n.finalHit=null,n.prepareHits(),n.processFirstCoord(e),n.initialHit||!n.requireInitial?(t.setIgnoreMove(!1),n.emitter.trigger("pointerdown",e)):t.setIgnoreMove(!0)},this.handleDragStart=function(e){n.emitter.trigger("dragstart",e),n.handleMove(e,!0)},this.handleDragMove=function(e){n.emitter.trigger("dragmove",e),n.handleMove(e)},this.handlePointerUp=function(e){n.releaseHits(),n.emitter.trigger("pointerup",e)},this.handleDragEnd=function(e){n.movingHit&&n.emitter.trigger("hitupdate",null,!0,e),n.finalHit=n.movingHit,n.movingHit=null,n.emitter.trigger("dragend",e)},this.droppableStore=t,e.emitter.on("pointerdown",this.handlePointerDown),e.emitter.on("dragstart",this.handleDragStart),e.emitter.on("dragmove",this.handleDragMove),e.emitter.on("pointerup",this.handlePointerUp),e.emitter.on("dragend",this.handleDragEnd),this.dragging=e,this.emitter=new S.EmitterMixin}function N(e,t){return!e&&!t||Boolean(e)===Boolean(t)&&S.isDateSpansEqual(e.dateSpan,t.dateSpan)}var O,P=(t(H,O=S.Interaction),H.prototype.destroy=function(){this.dragging.destroy()},H);function H(e){var s=O.call(this,e)||this;s.handlePointerDown=function(e){var t=s.dragging;t.setIgnoreMove(!s.component.isValidDateDownEl(t.pointer.downEl))},s.handleDragEnd=function(e){var t,n,r,i=s.component.context,o=i.calendar,a=i.view;s.dragging.pointer.wasTouchScroll||(n=(t=s.hitDragging).initialHit,r=t.finalHit,n&&r&&N(n,r)&&o.triggerDateClick(n.dateSpan,n.dayEl,a,e.origEvent))};var t=e.component;s.dragging=new C(t.el),s.dragging.autoScroller.isEnabled=!1;var n=s.hitDragging=new R(s.dragging,S.interactionSettingsToStore(e));return n.emitter.on("pointerdown",s.handlePointerDown),n.emitter.on("dragend",s.handleDragEnd),s}var L,A=(t(Y,L=S.Interaction),Y.prototype.destroy=function(){this.dragging.destroy()},Y);function Y(e){var o=L.call(this,e)||this;o.dragSelection=null,o.handlePointerDown=function(e){var t=o.component,n=o.dragging,r=t.context.options.selectable&&t.isValidDateDownEl(e.origEvent.target);n.setIgnoreMove(!r),n.delay=e.isTouch?function(e){var t=e.context.options,n=t.selectLongPressDelay;null==n&&(n=t.longPressDelay);return n}(t):null},o.handleDragStart=function(e){o.component.context.calendar.unselect(e)},o.handleHitUpdate=function(e,t){var n=o.component.context.calendar,r=null,i=!1;e&&((r=function(e,t,n){var r=e.dateSpan,i=t.dateSpan,o=[r.range.start,r.range.end,i.range.start,i.range.end];o.sort(S.compareNumbers);for(var a={},s=0,l=n;s<l.length;s++){var u=(0,l[s])(e,t);if(!1===u)return null;u&&E(a,u)}return a.range={start:o[0],end:o[3]},a.allDay=r.allDay,a}(o.hitDragging.initialHit,e,n.pluginSystem.hooks.dateSelectionTransformers))&&o.component.isDateSelectionValid(r)||(i=!0,r=null)),r?n.dispatch({type:"SELECT_DATES",selection:r}):t||n.dispatch({type:"UNSELECT_DATES"}),i?S.disableCursor():S.enableCursor(),t||(o.dragSelection=r)},o.handlePointerUp=function(e){o.dragSelection&&(o.component.context.calendar.triggerDateSelect(o.dragSelection,e),o.dragSelection=null)};var t=e.component,n=t.context.options,r=o.dragging=new C(t.el);r.touchScrollAllowed=!1,r.minDistance=n.selectMinDistance||0,r.autoScroller.isEnabled=n.dragScroll;var i=o.hitDragging=new R(o.dragging,S.interactionSettingsToStore(e));return i.emitter.on("pointerdown",o.handlePointerDown),i.emitter.on("dragstart",o.handleDragStart),i.emitter.on("hitupdate",o.handleHitUpdate),i.emitter.on("pointerup",o.handlePointerUp),o}var j,U=(t(W,j=S.Interaction),W.prototype.destroy=function(){this.dragging.destroy()},W.prototype.displayDrag=function(e,t){var n=this.component.context.calendar,r=this.receivingCalendar;r&&r!==e&&(r===n?r.dispatch({type:"SET_EVENT_DRAG",state:{affectedEvents:t.affectedEvents,mutatedEvents:S.createEmptyEventStore(),isEvent:!0,origSeg:t.origSeg}}):r.dispatch({type:"UNSET_EVENT_DRAG"})),e&&e.dispatch({type:"SET_EVENT_DRAG",state:t})},W.prototype.clearDrag=function(){var e=this.component.context.calendar,t=this.receivingCalendar;t&&t.dispatch({type:"UNSET_EVENT_DRAG"}),e!==t&&e.dispatch({type:"UNSET_EVENT_DRAG"})},W.prototype.cleanup=function(){this.subjectSeg=null,this.isDragging=!1,this.eventRange=null,this.relevantEvents=null,this.receivingCalendar=null,this.validMutation=null,this.mutatedRelevantEvents=null},W.SELECTOR=".fc-draggable, .fc-resizable",W);function W(e){var y=j.call(this,e)||this;y.subjectSeg=null,y.isDragging=!1,y.eventRange=null,y.relevantEvents=null,y.receivingCalendar=null,y.validMutation=null,y.mutatedRelevantEvents=null,y.handlePointerDown=function(e){var t=e.origEvent.target,n=y.component,r=y.dragging,i=r.mirror,o=n.context.options,a=n.context.calendar,s=y.subjectSeg=S.getElSeg(e.subjectEl),l=(y.eventRange=s.eventRange).instance.instanceId;y.relevantEvents=S.getRelevantEvents(a.state.eventStore,l),r.minDistance=e.isTouch?0:o.eventDragMinDistance,r.delay=e.isTouch&&l!==n.props.eventSelection?function(e){var t=e.context.options,n=t.eventLongPressDelay;null==n&&(n=t.longPressDelay);return n}(n):null,i.parentNode=a.el,i.revertDuration=o.dragRevertDuration;var u=n.isValidSegDownEl(t)&&!S.elementClosest(t,".fc-resizer");r.setIgnoreMove(!u),y.isDragging=u&&e.subjectEl.classList.contains("fc-draggable")},y.handleDragStart=function(e){var t=y.component.context,n=t.calendar,r=y.eventRange,i=r.instance.instanceId;e.isTouch?i!==y.component.props.eventSelection&&n.dispatch({type:"SELECT_EVENT",eventInstanceId:i}):n.dispatch({type:"UNSELECT_EVENT"}),y.isDragging&&(n.unselect(e),n.publiclyTrigger("eventDragStart",[{el:y.subjectSeg.el,event:new S.EventApi(n,r.def,r.instance),jsEvent:e.origEvent,view:t.view}]))},y.handleHitUpdate=function(e,t){var n,r,i,o,a,s,l,u,c,d;y.isDragging&&(n=y.relevantEvents,r=y.hitDragging.initialHit,i=y.component.context.calendar,a=o=c=null,s=!1,l={affectedEvents:n,mutatedEvents:S.createEmptyEventStore(),isEvent:!0,origSeg:y.subjectSeg},e&&(c=(u=e.component).context.calendar,d=u.context.options,i===c||d.editable&&d.droppable?(o=function(e,t,n){var r=e.dateSpan,i=t.dateSpan,o=r.range.start,a=i.range.start,s={};r.allDay!==i.allDay&&(s.allDay=i.allDay,s.hasEnd=t.component.context.options.allDayMaintainDuration,i.allDay&&(o=S.startOfDay(o)));var l=S.diffDates(o,a,e.component.context.dateEnv,e.component===t.component?e.component.largeUnit:null);l.milliseconds&&(s.allDay=!1);for(var u={datesDelta:l,standardProps:s},c=0,d=n;c<d.length;c++){(0,d[c])(u,e,t)}return u}(r,e,c.pluginSystem.hooks.eventDragMutationMassagers))&&(a=S.applyMutationToEventStore(n,c.eventUiBases,o,c),l.mutatedEvents=a,u.isInteractionValid(l)||(s=!0,a=o=null,l.mutatedEvents=S.createEmptyEventStore())):c=null),y.displayDrag(c,l),s?S.disableCursor():S.enableCursor(),t||(i===c&&N(r,e)&&(o=null),y.dragging.setMirrorNeedsRevert(!o),y.dragging.setMirrorIsVisible(!e||!document.querySelector(".fc-mirror")),y.receivingCalendar=c,y.validMutation=o,y.mutatedRelevantEvents=a))},y.handlePointerUp=function(){y.isDragging||y.cleanup()},y.handleDragEnd=function(e){if(y.isDragging){var t,n=y.component.context,r=n.calendar,i=n.view,o=y.receivingCalendar,a=y.validMutation,s=y.eventRange.def,l=y.eventRange.instance,u=new S.EventApi(r,s,l),c=y.relevantEvents,d=y.mutatedRelevantEvents,h=y.hitDragging.finalHit;if(y.clearDrag(),r.publiclyTrigger("eventDragStop",[{el:y.subjectSeg.el,event:u,jsEvent:e.origEvent,view:i}]),a)if(o===r){r.dispatch({type:"MERGE_EVENTS",eventStore:d});for(var f={},p=0,g=r.pluginSystem.hooks.eventDropTransformers;p<g.length;p++){var v=g[p];E(f,v(a,r))}var m=E({},f,{el:e.subjectEl,delta:a.datesDelta,oldEvent:u,event:new S.EventApi(r,d.defs[s.defId],l?d.instances[l.instanceId]:null),revert:function(){r.dispatch({type:"MERGE_EVENTS",eventStore:c})},jsEvent:e.origEvent,view:i});r.publiclyTrigger("eventDrop",[m])}else{o&&(r.publiclyTrigger("eventLeave",[{draggedEl:e.subjectEl,event:u,view:i}]),r.dispatch({type:"REMOVE_EVENT_INSTANCES",instances:y.mutatedRelevantEvents.instances}),o.dispatch({type:"MERGE_EVENTS",eventStore:y.mutatedRelevantEvents}),e.isTouch&&o.dispatch({type:"SELECT_EVENT",eventInstanceId:l.instanceId}),t=E({},o.buildDatePointApi(h.dateSpan),{draggedEl:e.subjectEl,jsEvent:e.origEvent,view:h.component}),o.publiclyTrigger("drop",[t]),o.publiclyTrigger("eventReceive",[{draggedEl:e.subjectEl,event:new S.EventApi(o,d.defs[s.defId],d.instances[l.instanceId]),view:h.component}]))}else r.publiclyTrigger("_noEventDrop")}y.cleanup()};var t=y.component,n=t.context.options,r=y.dragging=new C(t.el);r.pointer.selector=W.SELECTOR,r.touchScrollAllowed=!1,r.autoScroller.isEnabled=n.dragScroll;var i=y.hitDragging=new R(y.dragging,S.interactionSettingsStore);return i.useSubjectCenter=e.useEventCenter,i.emitter.on("pointerdown",y.handlePointerDown),i.emitter.on("dragstart",y.handleDragStart),i.emitter.on("hitupdate",y.handleHitUpdate),i.emitter.on("pointerup",y.handlePointerUp),i.emitter.on("dragend",y.handleDragEnd),y}var V,F=(t(z,V=S.Interaction),z.prototype.destroy=function(){this.dragging.destroy()},z.prototype.querySeg=function(e){return S.getElSeg(S.elementClosest(e.subjectEl,this.component.fgSegSelector))},z);function z(e){var d=V.call(this,e)||this;d.draggingSeg=null,d.eventRange=null,d.relevantEvents=null,d.validMutation=null,d.mutatedRelevantEvents=null,d.handlePointerDown=function(e){var t=d.component,n=d.querySeg(e),r=d.eventRange=n.eventRange;d.dragging.minDistance=t.context.options.eventDragMinDistance,d.dragging.setIgnoreMove(!d.component.isValidSegDownEl(e.origEvent.target)||e.isTouch&&d.component.props.eventSelection!==r.instance.instanceId)},d.handleDragStart=function(e){var t=d.component.context,n=t.calendar,r=t.view,i=d.eventRange;d.relevantEvents=S.getRelevantEvents(n.state.eventStore,d.eventRange.instance.instanceId),d.draggingSeg=d.querySeg(e),n.unselect(),n.publiclyTrigger("eventResizeStart",[{el:d.draggingSeg.el,event:new S.EventApi(n,i.def,i.instance),jsEvent:e.origEvent,view:r}])},d.handleHitUpdate=function(e,t,n){var r=d.component.context.calendar,i=d.relevantEvents,o=d.hitDragging.initialHit,a=d.eventRange.instance,s=null,l=null,u=!1,c={affectedEvents:i,mutatedEvents:S.createEmptyEventStore(),isEvent:!0,origSeg:d.draggingSeg};e&&(s=function(e,t,n,r,i){for(var o=e.component.context.dateEnv,a=e.dateSpan.range.start,s=t.dateSpan.range.start,l=S.diffDates(a,s,o,e.component.largeUnit),u={},c=0,d=i;c<d.length;c++){var h=(0,d[c])(e,t);if(!1===h)return null;h&&E(u,h)}if(n){if(o.add(r.start,l)<r.end)return u.startDelta=l,u}else if(o.add(r.end,l)>r.start)return u.endDelta=l,u;return null}(o,e,n.subjectEl.classList.contains("fc-start-resizer"),a.range,r.pluginSystem.hooks.eventResizeJoinTransforms)),s&&(l=S.applyMutationToEventStore(i,r.eventUiBases,s,r),c.mutatedEvents=l,d.component.isInteractionValid(c)||(u=!0,l=s=null,c.mutatedEvents=null)),l?r.dispatch({type:"SET_EVENT_RESIZE",state:c}):r.dispatch({type:"UNSET_EVENT_RESIZE"}),u?S.disableCursor():S.enableCursor(),t||(s&&N(o,e)&&(s=null),d.validMutation=s,d.mutatedRelevantEvents=l)},d.handleDragEnd=function(e){var t=d.component.context,n=t.calendar,r=t.view,i=d.eventRange.def,o=d.eventRange.instance,a=new S.EventApi(n,i,o),s=d.relevantEvents,l=d.mutatedRelevantEvents;n.publiclyTrigger("eventResizeStop",[{el:d.draggingSeg.el,event:a,jsEvent:e.origEvent,view:r}]),d.validMutation?(n.dispatch({type:"MERGE_EVENTS",eventStore:l}),n.publiclyTrigger("eventResize",[{el:d.draggingSeg.el,startDelta:d.validMutation.startDelta||S.createDuration(0),endDelta:d.validMutation.endDelta||S.createDuration(0),prevEvent:a,event:new S.EventApi(n,l.defs[i.defId],o?l.instances[o.instanceId]:null),revert:function(){n.dispatch({type:"MERGE_EVENTS",eventStore:s})},jsEvent:e.origEvent,view:r}])):n.publiclyTrigger("_noEventResize"),d.draggingSeg=null,d.relevantEvents=null,d.validMutation=null};var t=e.component,n=d.dragging=new C(t.el);n.pointer.selector=".fc-resizer",n.touchScrollAllowed=!1,n.autoScroller.isEnabled=t.context.options.dragScroll;var r=d.hitDragging=new R(d.dragging,S.interactionSettingsToStore(e));return r.emitter.on("pointerdown",d.handlePointerDown),r.emitter.on("dragstart",d.handleDragStart),r.emitter.on("hitupdate",d.handleHitUpdate),r.emitter.on("dragend",d.handleDragEnd),d}var B=(q.prototype.destroy=function(){this.calendar.off("select",this.onSelect),this.documentPointer.destroy()},q);function q(e){var a=this;this.isRecentPointerDateSelect=!1,this.onSelect=function(e){e.jsEvent&&(a.isRecentPointerDateSelect=!0)},this.onDocumentPointerUp=function(e){var t,n,r=a.calendar,i=a.documentPointer,o=r.state;i.wasTouchScroll||(o.dateSelection&&!a.isRecentPointerDateSelect&&(t=r.viewOpt("unselectAuto"),n=r.viewOpt("unselectCancel"),!t||t&&S.elementClosest(i.downEl,n)||r.unselect(e)),o.eventSelection&&!S.elementClosest(i.downEl,U.SELECTOR)&&r.dispatch({type:"UNSELECT_EVENT"})),a.isRecentPointerDateSelect=!1},this.calendar=e;var t=this.documentPointer=new s(document);t.shouldIgnoreMove=!0,t.shouldWatchScroll=!1,t.emitter.on("pointerup",this.onDocumentPointerUp),e.on("select",this.onSelect)}var G=(Z.prototype.buildDragMeta=function(e){return"object"==typeof this.suppliedDragMeta?S.parseDragMeta(this.suppliedDragMeta):"function"==typeof this.suppliedDragMeta?S.parseDragMeta(this.suppliedDragMeta(e)):(t=function(e,t){var n=S.config.dataAttrPrefix,r=(n?n+"-":"")+t;return e.getAttribute("data-"+r)||""}(e,"event"),n=t?JSON.parse(t):{create:!1},S.parseDragMeta(n));var t,n},Z.prototype.displayDrag=function(e,t){var n=this.receivingCalendar;n&&n!==e&&n.dispatch({type:"UNSET_EVENT_DRAG"}),e&&e.dispatch({type:"SET_EVENT_DRAG",state:t})},Z.prototype.clearDrag=function(){this.receivingCalendar&&this.receivingCalendar.dispatch({type:"UNSET_EVENT_DRAG"})},Z.prototype.canDropElOnCalendar=function(e,t){var n=t.opt("dropAccept");return"function"==typeof n?n(e):"string"!=typeof n||!n||Boolean(S.elementMatches(e,n))},Z);function Z(e,t){var l=this;this.receivingCalendar=null,this.droppableEvent=null,this.suppliedDragMeta=null,this.dragMeta=null,this.handleDragStart=function(e){l.dragMeta=l.buildDragMeta(e.subjectEl)},this.handleHitUpdate=function(e,t,n){var r=l.hitDragging.dragging,i=null,o=null,a=!1,s={affectedEvents:S.createEmptyEventStore(),mutatedEvents:S.createEmptyEventStore(),isEvent:l.dragMeta.create,origSeg:null};e&&(i=e.component.context.calendar,l.canDropElOnCalendar(n.subjectEl,i)&&(o=function(e,t,n){for(var r=E({},t.leftoverProps),i=0,o=n.pluginSystem.hooks.externalDefTransforms;i<o.length;i++){var a=o[i];E(r,a(e,t))}var s=S.parseEventDef(r,t.sourceId,e.allDay,n.opt("forceEventDuration")||Boolean(t.duration),n),l=e.range.start;e.allDay&&t.startTime&&(l=n.dateEnv.add(l,t.startTime));var u=t.duration?n.dateEnv.add(l,t.duration):n.getDefaultEventEnd(e.allDay,l),c=S.createEventInstance(s.defId,{start:l,end:u});return{def:s,instance:c}}(e.dateSpan,l.dragMeta,i),s.mutatedEvents=S.eventTupleToStore(o),(a=!S.isInteractionValid(s,i))&&(s.mutatedEvents=S.createEmptyEventStore(),o=null))),l.displayDrag(i,s),r.setMirrorIsVisible(t||!o||!document.querySelector(".fc-mirror")),a?S.disableCursor():S.enableCursor(),t||(r.setMirrorNeedsRevert(!o),l.receivingCalendar=i,l.droppableEvent=o)},this.handleDragEnd=function(e){var t,n,r,i,o=l.receivingCalendar,a=l.droppableEvent;l.clearDrag(),o&&a&&(n=(t=l.hitDragging.finalHit).component.context.view,r=l.dragMeta,i=E({},o.buildDatePointApi(t.dateSpan),{draggedEl:e.subjectEl,jsEvent:e.origEvent,view:n}),o.publiclyTrigger("drop",[i]),r.create&&(o.dispatch({type:"MERGE_EVENTS",eventStore:S.eventTupleToStore(a)}),e.isTouch&&o.dispatch({type:"SELECT_EVENT",eventInstanceId:a.instance.instanceId}),o.publiclyTrigger("eventReceive",[{draggedEl:e.subjectEl,event:new S.EventApi(o,a.def,a.instance),view:n}]))),l.receivingCalendar=null,l.droppableEvent=null};var n=this.hitDragging=new R(e,S.interactionSettingsStore);n.requireInitial=!1,n.emitter.on("dragstart",this.handleDragStart),n.emitter.on("hitupdate",this.handleHitUpdate),n.emitter.on("dragend",this.handleDragEnd),this.suppliedDragMeta=t}S.config.dataAttrPrefix="";var X=($.prototype.destroy=function(){this.dragging.destroy()},$);function $(e,t){var o=this;void 0===t&&(t={}),this.handlePointerDown=function(e){var t=o.dragging,n=o.settings,r=n.minDistance,i=n.longPressDelay;t.minDistance=null!=r?r:e.isTouch?0:S.globalDefaults.eventDragMinDistance,t.delay=e.isTouch?null!=i?i:S.globalDefaults.longPressDelay:0},this.handleDragStart=function(e){e.isTouch&&o.dragging.delay&&e.subjectEl.classList.contains("fc-event")&&o.dragging.mirror.getMirrorEl().classList.add("fc-selected")},this.settings=t;var n=this.dragging=new C(e);n.touchScrollAllowed=!1,null!=t.itemSelector&&(n.pointer.selector=t.itemSelector),null!=t.appendTo&&(n.mirror.parentNode=t.appendTo),n.emitter.on("pointerdown",this.handlePointerDown),n.emitter.on("dragstart",this.handleDragStart),new G(n,t.eventData)}var J,Q=(t(K,J=S.ElementDragging),K.prototype.destroy=function(){this.pointer.destroy()},K.prototype.setIgnoreMove=function(e){this.shouldIgnoreMove=e},K.prototype.setMirrorIsVisible=function(e){var t;e?this.currentMirrorEl&&(this.currentMirrorEl.style.visibility="",this.currentMirrorEl=null):(t=this.mirrorSelector?document.querySelector(this.mirrorSelector):null)&&((this.currentMirrorEl=t).style.visibility="hidden")},K);function K(e){var t=J.call(this,e)||this;t.shouldIgnoreMove=!1,t.mirrorSelector="",t.currentMirrorEl=null,t.handlePointerDown=function(e){t.emitter.trigger("pointerdown",e),t.shouldIgnoreMove||t.emitter.trigger("dragstart",e)},t.handlePointerMove=function(e){t.shouldIgnoreMove||t.emitter.trigger("dragmove",e)},t.handlePointerUp=function(e){t.emitter.trigger("pointerup",e),t.shouldIgnoreMove||t.emitter.trigger("dragend",e)};var n=t.pointer=new s(e);return n.emitter.on("pointerdown",t.handlePointerDown),n.emitter.on("pointermove",t.handlePointerMove),n.emitter.on("pointerup",t.handlePointerUp),t}var ee=(te.prototype.destroy=function(){this.dragging.destroy()},te);function te(e,t){var n=document;t=e===document||e instanceof Element?(n=e,t||{}):e||{};var r=this.dragging=new Q(n);"string"==typeof t.itemSelector?r.pointer.selector=t.itemSelector:n===document&&(r.pointer.selector="[data-event]"),"string"==typeof t.mirrorSelector&&(r.mirrorSelector=t.mirrorSelector),new G(r,t.eventData)}var ne=S.createPlugin({componentInteractions:[P,A,U,F],calendarInteractions:[B],elementDraggingImpl:C});e.Draggable=X,e.FeaturefulElementDragging=C,e.PointerDragging=s,e.ThirdPartyDraggable=ee,e.default=ne,Object.defineProperty(e,"__esModule",{value:!0})});
/** vim: et:ts=4:sw=4:sts=4
 * @license RequireJS 2.3.6 Copyright jQuery Foundation and other contributors.
 * Released under MIT license, https://github.com/requirejs/requirejs/blob/master/LICENSE
 */
//Not using strict: uneven strict support in browsers, #392, and causes
//problems with requirejs.exec()/transpiler plugins that may not be strict.
/*jslint regexp: true, nomen: true, sloppy: true */
/*global window, navigator, document, importScripts, setTimeout, opera */

var requirejs, require, define;
(function (global, setTimeout) {
    var req, s, head, baseElement, dataMain, src,
        interactiveScript, currentlyAddingScript, mainScript, subPath,
        version = '2.3.6',
        commentRegExp = /\/\*[\s\S]*?\*\/|([^:"'=]|^)\/\/.*$/mg,
        cjsRequireRegExp = /[^.]\s*require\s*\(\s*["']([^'"\s]+)["']\s*\)/g,
        jsSuffixRegExp = /\.js$/,
        currDirRegExp = /^\.\//,
        op = Object.prototype,
        ostring = op.toString,
        hasOwn = op.hasOwnProperty,
        isBrowser = !!(typeof window !== 'undefined' && typeof navigator !== 'undefined' && window.document),
        isWebWorker = !isBrowser && typeof importScripts !== 'undefined',
        //PS3 indicates loaded and complete, but need to wait for complete
        //specifically. Sequence is 'loading', 'loaded', execution,
        // then 'complete'. The UA check is unfortunate, but not sure how
        //to feature test w/o causing perf issues.
        readyRegExp = isBrowser && navigator.platform === 'PLAYSTATION 3' ?
                      /^complete$/ : /^(complete|loaded)$/,
        defContextName = '_',
        //Oh the tragedy, detecting opera. See the usage of isOpera for reason.
        isOpera = typeof opera !== 'undefined' && opera.toString() === '[object Opera]',
        contexts = {},
        cfg = {},
        globalDefQueue = [],
        useInteractive = false;

    //Could match something like ')//comment', do not lose the prefix to comment.
    function commentReplace(match, singlePrefix) {
        return singlePrefix || '';
    }

    function isFunction(it) {
        return ostring.call(it) === '[object Function]';
    }

    function isArray(it) {
        return ostring.call(it) === '[object Array]';
    }

    /**
     * Helper function for iterating over an array. If the func returns
     * a true value, it will break out of the loop.
     */
    function each(ary, func) {
        if (ary) {
            var i;
            for (i = 0; i < ary.length; i += 1) {
                if (ary[i] && func(ary[i], i, ary)) {
                    break;
                }
            }
        }
    }

    /**
     * Helper function for iterating over an array backwards. If the func
     * returns a true value, it will break out of the loop.
     */
    function eachReverse(ary, func) {
        if (ary) {
            var i;
            for (i = ary.length - 1; i > -1; i -= 1) {
                if (ary[i] && func(ary[i], i, ary)) {
                    break;
                }
            }
        }
    }

    function hasProp(obj, prop) {
        return hasOwn.call(obj, prop);
    }

    function getOwn(obj, prop) {
        return hasProp(obj, prop) && obj[prop];
    }

    /**
     * Cycles over properties in an object and calls a function for each
     * property value. If the function returns a truthy value, then the
     * iteration is stopped.
     */
    function eachProp(obj, func) {
        var prop;
        for (prop in obj) {
            if (hasProp(obj, prop)) {
                if (func(obj[prop], prop)) {
                    break;
                }
            }
        }
    }

    /**
     * Simple function to mix in properties from source into target,
     * but only if target does not already have a property of the same name.
     */
    function mixin(target, source, force, deepStringMixin) {
        if (source) {
            eachProp(source, function (value, prop) {
                if (force || !hasProp(target, prop)) {
                    if (deepStringMixin && typeof value === 'object' && value &&
                        !isArray(value) && !isFunction(value) &&
                        !(value instanceof RegExp)) {

                        if (!target[prop]) {
                            target[prop] = {};
                        }
                        mixin(target[prop], value, force, deepStringMixin);
                    } else {
                        target[prop] = value;
                    }
                }
            });
        }
        return target;
    }

    //Similar to Function.prototype.bind, but the 'this' object is specified
    //first, since it is easier to read/figure out what 'this' will be.
    function bind(obj, fn) {
        return function () {
            return fn.apply(obj, arguments);
        };
    }

    function scripts() {
        return document.getElementsByTagName('script');
    }

    function defaultOnError(err) {
        throw err;
    }

    //Allow getting a global that is expressed in
    //dot notation, like 'a.b.c'.
    function getGlobal(value) {
        if (!value) {
            return value;
        }
        var g = global;
        each(value.split('.'), function (part) {
            g = g[part];
        });
        return g;
    }

    /**
     * Constructs an error with a pointer to an URL with more information.
     * @param {String} id the error ID that maps to an ID on a web page.
     * @param {String} message human readable error.
     * @param {Error} [err] the original error, if there is one.
     *
     * @returns {Error}
     */
    function makeError(id, msg, err, requireModules) {
        var e = new Error(msg + '\nhttps://requirejs.org/docs/errors.html#' + id);
        e.requireType = id;
        e.requireModules = requireModules;
        if (err) {
            e.originalError = err;
        }
        return e;
    }

    if (typeof define !== 'undefined') {
        //If a define is already in play via another AMD loader,
        //do not overwrite.
        return;
    }

    if (typeof requirejs !== 'undefined') {
        if (isFunction(requirejs)) {
            //Do not overwrite an existing requirejs instance.
            return;
        }
        cfg = requirejs;
        requirejs = undefined;
    }

    //Allow for a require config object
    if (typeof require !== 'undefined' && !isFunction(require)) {
        //assume it is a config object.
        cfg = require;
        require = undefined;
    }

    function newContext(contextName) {
        var inCheckLoaded, Module, context, handlers,
            checkLoadedTimeoutId,
            config = {
                //Defaults. Do not set a default for map
                //config to speed up normalize(), which
                //will run faster if there is no default.
                waitSeconds: 7,
                baseUrl: './',
                paths: {},
                bundles: {},
                pkgs: {},
                shim: {},
                config: {}
            },
            registry = {},
            //registry of just enabled modules, to speed
            //cycle breaking code when lots of modules
            //are registered, but not activated.
            enabledRegistry = {},
            undefEvents = {},
            defQueue = [],
            defined = {},
            urlFetched = {},
            bundlesMap = {},
            requireCounter = 1,
            unnormalizedCounter = 1;

        /**
         * Trims the . and .. from an array of path segments.
         * It will keep a leading path segment if a .. will become
         * the first path segment, to help with module name lookups,
         * which act like paths, but can be remapped. But the end result,
         * all paths that use this function should look normalized.
         * NOTE: this method MODIFIES the input array.
         * @param {Array} ary the array of path segments.
         */
        function trimDots(ary) {
            var i, part;
            for (i = 0; i < ary.length; i++) {
                part = ary[i];
                if (part === '.') {
                    ary.splice(i, 1);
                    i -= 1;
                } else if (part === '..') {
                    // If at the start, or previous value is still ..,
                    // keep them so that when converted to a path it may
                    // still work when converted to a path, even though
                    // as an ID it is less than ideal. In larger point
                    // releases, may be better to just kick out an error.
                    if (i === 0 || (i === 1 && ary[2] === '..') || ary[i - 1] === '..') {
                        continue;
                    } else if (i > 0) {
                        ary.splice(i - 1, 2);
                        i -= 2;
                    }
                }
            }
        }

        /**
         * Given a relative module name, like ./something, normalize it to
         * a real name that can be mapped to a path.
         * @param {String} name the relative name
         * @param {String} baseName a real name that the name arg is relative
         * to.
         * @param {Boolean} applyMap apply the map config to the value. Should
         * only be done if this normalization is for a dependency ID.
         * @returns {String} normalized name
         */
        function normalize(name, baseName, applyMap) {
            var pkgMain, mapValue, nameParts, i, j, nameSegment, lastIndex,
                foundMap, foundI, foundStarMap, starI, normalizedBaseParts,
                baseParts = (baseName && baseName.split('/')),
                map = config.map,
                starMap = map && map['*'];

            //Adjust any relative paths.
            if (name) {
                name = name.split('/');
                lastIndex = name.length - 1;

                // If wanting node ID compatibility, strip .js from end
                // of IDs. Have to do this here, and not in nameToUrl
                // because node allows either .js or non .js to map
                // to same file.
                if (config.nodeIdCompat && jsSuffixRegExp.test(name[lastIndex])) {
                    name[lastIndex] = name[lastIndex].replace(jsSuffixRegExp, '');
                }

                // Starts with a '.' so need the baseName
                if (name[0].charAt(0) === '.' && baseParts) {
                    //Convert baseName to array, and lop off the last part,
                    //so that . matches that 'directory' and not name of the baseName's
                    //module. For instance, baseName of 'one/two/three', maps to
                    //'one/two/three.js', but we want the directory, 'one/two' for
                    //this normalization.
                    normalizedBaseParts = baseParts.slice(0, baseParts.length - 1);
                    name = normalizedBaseParts.concat(name);
                }

                trimDots(name);
                name = name.join('/');
            }

            //Apply map config if available.
            if (applyMap && map && (baseParts || starMap)) {
                nameParts = name.split('/');

                outerLoop: for (i = nameParts.length; i > 0; i -= 1) {
                    nameSegment = nameParts.slice(0, i).join('/');

                    if (baseParts) {
                        //Find the longest baseName segment match in the config.
                        //So, do joins on the biggest to smallest lengths of baseParts.
                        for (j = baseParts.length; j > 0; j -= 1) {
                            mapValue = getOwn(map, baseParts.slice(0, j).join('/'));

                            //baseName segment has config, find if it has one for
                            //this name.
                            if (mapValue) {
                                mapValue = getOwn(mapValue, nameSegment);
                                if (mapValue) {
                                    //Match, update name to the new value.
                                    foundMap = mapValue;
                                    foundI = i;
                                    break outerLoop;
                                }
                            }
                        }
                    }

                    //Check for a star map match, but just hold on to it,
                    //if there is a shorter segment match later in a matching
                    //config, then favor over this star map.
                    if (!foundStarMap && starMap && getOwn(starMap, nameSegment)) {
                        foundStarMap = getOwn(starMap, nameSegment);
                        starI = i;
                    }
                }

                if (!foundMap && foundStarMap) {
                    foundMap = foundStarMap;
                    foundI = starI;
                }

                if (foundMap) {
                    nameParts.splice(0, foundI, foundMap);
                    name = nameParts.join('/');
                }
            }

            // If the name points to a package's name, use
            // the package main instead.
            pkgMain = getOwn(config.pkgs, name);

            return pkgMain ? pkgMain : name;
        }

        function removeScript(name) {
            if (isBrowser) {
                each(scripts(), function (scriptNode) {
                    if (scriptNode.getAttribute('data-requiremodule') === name &&
                            scriptNode.getAttribute('data-requirecontext') === context.contextName) {
                        scriptNode.parentNode.removeChild(scriptNode);
                        return true;
                    }
                });
            }
        }

        function hasPathFallback(id) {
            var pathConfig = getOwn(config.paths, id);
            if (pathConfig && isArray(pathConfig) && pathConfig.length > 1) {
                //Pop off the first array value, since it failed, and
                //retry
                pathConfig.shift();
                context.require.undef(id);

                //Custom require that does not do map translation, since
                //ID is "absolute", already mapped/resolved.
                context.makeRequire(null, {
                    skipMap: true
                })([id]);

                return true;
            }
        }

        //Turns a plugin!resource to [plugin, resource]
        //with the plugin being undefined if the name
        //did not have a plugin prefix.
        function splitPrefix(name) {
            var prefix,
                index = name ? name.indexOf('!') : -1;
            if (index > -1) {
                prefix = name.substring(0, index);
                name = name.substring(index + 1, name.length);
            }
            return [prefix, name];
        }

        /**
         * Creates a module mapping that includes plugin prefix, module
         * name, and path. If parentModuleMap is provided it will
         * also normalize the name via require.normalize()
         *
         * @param {String} name the module name
         * @param {String} [parentModuleMap] parent module map
         * for the module name, used to resolve relative names.
         * @param {Boolean} isNormalized: is the ID already normalized.
         * This is true if this call is done for a define() module ID.
         * @param {Boolean} applyMap: apply the map config to the ID.
         * Should only be true if this map is for a dependency.
         *
         * @returns {Object}
         */
        function makeModuleMap(name, parentModuleMap, isNormalized, applyMap) {
            var url, pluginModule, suffix, nameParts,
                prefix = null,
                parentName = parentModuleMap ? parentModuleMap.name : null,
                originalName = name,
                isDefine = true,
                normalizedName = '';

            //If no name, then it means it is a require call, generate an
            //internal name.
            if (!name) {
                isDefine = false;
                name = '_@r' + (requireCounter += 1);
            }

            nameParts = splitPrefix(name);
            prefix = nameParts[0];
            name = nameParts[1];

            if (prefix) {
                prefix = normalize(prefix, parentName, applyMap);
                pluginModule = getOwn(defined, prefix);
            }

            //Account for relative paths if there is a base name.
            if (name) {
                if (prefix) {
                    if (isNormalized) {
                        normalizedName = name;
                    } else if (pluginModule && pluginModule.normalize) {
                        //Plugin is loaded, use its normalize method.
                        normalizedName = pluginModule.normalize(name, function (name) {
                            return normalize(name, parentName, applyMap);
                        });
                    } else {
                        // If nested plugin references, then do not try to
                        // normalize, as it will not normalize correctly. This
                        // places a restriction on resourceIds, and the longer
                        // term solution is not to normalize until plugins are
                        // loaded and all normalizations to allow for async
                        // loading of a loader plugin. But for now, fixes the
                        // common uses. Details in #1131
                        normalizedName = name.indexOf('!') === -1 ?
                                         normalize(name, parentName, applyMap) :
                                         name;
                    }
                } else {
                    //A regular module.
                    normalizedName = normalize(name, parentName, applyMap);

                    //Normalized name may be a plugin ID due to map config
                    //application in normalize. The map config values must
                    //already be normalized, so do not need to redo that part.
                    nameParts = splitPrefix(normalizedName);
                    prefix = nameParts[0];
                    normalizedName = nameParts[1];
                    isNormalized = true;

                    url = context.nameToUrl(normalizedName);
                }
            }

            //If the id is a plugin id that cannot be determined if it needs
            //normalization, stamp it with a unique ID so two matching relative
            //ids that may conflict can be separate.
            suffix = prefix && !pluginModule && !isNormalized ?
                     '_unnormalized' + (unnormalizedCounter += 1) :
                     '';

            return {
                prefix: prefix,
                name: normalizedName,
                parentMap: parentModuleMap,
                unnormalized: !!suffix,
                url: url,
                originalName: originalName,
                isDefine: isDefine,
                id: (prefix ?
                        prefix + '!' + normalizedName :
                        normalizedName) + suffix
            };
        }

        function getModule(depMap) {
            var id = depMap.id,
                mod = getOwn(registry, id);

            if (!mod) {
                mod = registry[id] = new context.Module(depMap);
            }

            return mod;
        }

        function on(depMap, name, fn) {
            var id = depMap.id,
                mod = getOwn(registry, id);

            if (hasProp(defined, id) &&
                    (!mod || mod.defineEmitComplete)) {
                if (name === 'defined') {
                    fn(defined[id]);
                }
            } else {
                mod = getModule(depMap);
                if (mod.error && name === 'error') {
                    fn(mod.error);
                } else {
                    mod.on(name, fn);
                }
            }
        }

        function onError(err, errback) {
            var ids = err.requireModules,
                notified = false;

            if (errback) {
                errback(err);
            } else {
                each(ids, function (id) {
                    var mod = getOwn(registry, id);
                    if (mod) {
                        //Set error on module, so it skips timeout checks.
                        mod.error = err;
                        if (mod.events.error) {
                            notified = true;
                            mod.emit('error', err);
                        }
                    }
                });

                if (!notified) {
                    req.onError(err);
                }
            }
        }

        /**
         * Internal method to transfer globalQueue items to this context's
         * defQueue.
         */
        function takeGlobalQueue() {
            //Push all the globalDefQueue items into the context's defQueue
            if (globalDefQueue.length) {
                each(globalDefQueue, function(queueItem) {
                    var id = queueItem[0];
                    if (typeof id === 'string') {
                        context.defQueueMap[id] = true;
                    }
                    defQueue.push(queueItem);
                });
                globalDefQueue = [];
            }
        }

        handlers = {
            'require': function (mod) {
                if (mod.require) {
                    return mod.require;
                } else {
                    return (mod.require = context.makeRequire(mod.map));
                }
            },
            'exports': function (mod) {
                mod.usingExports = true;
                if (mod.map.isDefine) {
                    if (mod.exports) {
                        return (defined[mod.map.id] = mod.exports);
                    } else {
                        return (mod.exports = defined[mod.map.id] = {});
                    }
                }
            },
            'module': function (mod) {
                if (mod.module) {
                    return mod.module;
                } else {
                    return (mod.module = {
                        id: mod.map.id,
                        uri: mod.map.url,
                        config: function () {
                            return getOwn(config.config, mod.map.id) || {};
                        },
                        exports: mod.exports || (mod.exports = {})
                    });
                }
            }
        };

        function cleanRegistry(id) {
            //Clean up machinery used for waiting modules.
            delete registry[id];
            delete enabledRegistry[id];
        }

        function breakCycle(mod, traced, processed) {
            var id = mod.map.id;

            if (mod.error) {
                mod.emit('error', mod.error);
            } else {
                traced[id] = true;
                each(mod.depMaps, function (depMap, i) {
                    var depId = depMap.id,
                        dep = getOwn(registry, depId);

                    //Only force things that have not completed
                    //being defined, so still in the registry,
                    //and only if it has not been matched up
                    //in the module already.
                    if (dep && !mod.depMatched[i] && !processed[depId]) {
                        if (getOwn(traced, depId)) {
                            mod.defineDep(i, defined[depId]);
                            mod.check(); //pass false?
                        } else {
                            breakCycle(dep, traced, processed);
                        }
                    }
                });
                processed[id] = true;
            }
        }

        function checkLoaded() {
            var err, usingPathFallback,
                waitInterval = config.waitSeconds * 1000,
                //It is possible to disable the wait interval by using waitSeconds of 0.
                expired = waitInterval && (context.startTime + waitInterval) < new Date().getTime(),
                noLoads = [],
                reqCalls = [],
                stillLoading = false,
                needCycleCheck = true;

            //Do not bother if this call was a result of a cycle break.
            if (inCheckLoaded) {
                return;
            }

            inCheckLoaded = true;

            //Figure out the state of all the modules.
            eachProp(enabledRegistry, function (mod) {
                var map = mod.map,
                    modId = map.id;

                //Skip things that are not enabled or in error state.
                if (!mod.enabled) {
                    return;
                }

                if (!map.isDefine) {
                    reqCalls.push(mod);
                }

                if (!mod.error) {
                    //If the module should be executed, and it has not
                    //been inited and time is up, remember it.
                    if (!mod.inited && expired) {
                        if (hasPathFallback(modId)) {
                            usingPathFallback = true;
                            stillLoading = true;
                        } else {
                            noLoads.push(modId);
                            removeScript(modId);
                        }
                    } else if (!mod.inited && mod.fetched && map.isDefine) {
                        stillLoading = true;
                        if (!map.prefix) {
                            //No reason to keep looking for unfinished
                            //loading. If the only stillLoading is a
                            //plugin resource though, keep going,
                            //because it may be that a plugin resource
                            //is waiting on a non-plugin cycle.
                            return (needCycleCheck = false);
                        }
                    }
                }
            });

            if (expired && noLoads.length) {
                //If wait time expired, throw error of unloaded modules.
                err = makeError('timeout', 'Load timeout for modules: ' + noLoads, null, noLoads);
                err.contextName = context.contextName;
                return onError(err);
            }

            //Not expired, check for a cycle.
            if (needCycleCheck) {
                each(reqCalls, function (mod) {
                    breakCycle(mod, {}, {});
                });
            }

            //If still waiting on loads, and the waiting load is something
            //other than a plugin resource, or there are still outstanding
            //scripts, then just try back later.
            if ((!expired || usingPathFallback) && stillLoading) {
                //Something is still waiting to load. Wait for it, but only
                //if a timeout is not already in effect.
                if ((isBrowser || isWebWorker) && !checkLoadedTimeoutId) {
                    checkLoadedTimeoutId = setTimeout(function () {
                        checkLoadedTimeoutId = 0;
                        checkLoaded();
                    }, 50);
                }
            }

            inCheckLoaded = false;
        }

        Module = function (map) {
            this.events = getOwn(undefEvents, map.id) || {};
            this.map = map;
            this.shim = getOwn(config.shim, map.id);
            this.depExports = [];
            this.depMaps = [];
            this.depMatched = [];
            this.pluginMaps = {};
            this.depCount = 0;

            /* this.exports this.factory
               this.depMaps = [],
               this.enabled, this.fetched
            */
        };

        Module.prototype = {
            init: function (depMaps, factory, errback, options) {
                options = options || {};

                //Do not do more inits if already done. Can happen if there
                //are multiple define calls for the same module. That is not
                //a normal, common case, but it is also not unexpected.
                if (this.inited) {
                    return;
                }

                this.factory = factory;

                if (errback) {
                    //Register for errors on this module.
                    this.on('error', errback);
                } else if (this.events.error) {
                    //If no errback already, but there are error listeners
                    //on this module, set up an errback to pass to the deps.
                    errback = bind(this, function (err) {
                        this.emit('error', err);
                    });
                }

                //Do a copy of the dependency array, so that
                //source inputs are not modified. For example
                //"shim" deps are passed in here directly, and
                //doing a direct modification of the depMaps array
                //would affect that config.
                this.depMaps = depMaps && depMaps.slice(0);

                this.errback = errback;

                //Indicate this module has be initialized
                this.inited = true;

                this.ignore = options.ignore;

                //Could have option to init this module in enabled mode,
                //or could have been previously marked as enabled. However,
                //the dependencies are not known until init is called. So
                //if enabled previously, now trigger dependencies as enabled.
                if (options.enabled || this.enabled) {
                    //Enable this module and dependencies.
                    //Will call this.check()
                    this.enable();
                } else {
                    this.check();
                }
            },

            defineDep: function (i, depExports) {
                //Because of cycles, defined callback for a given
                //export can be called more than once.
                if (!this.depMatched[i]) {
                    this.depMatched[i] = true;
                    this.depCount -= 1;
                    this.depExports[i] = depExports;
                }
            },

            fetch: function () {
                if (this.fetched) {
                    return;
                }
                this.fetched = true;

                context.startTime = (new Date()).getTime();

                var map = this.map;

                //If the manager is for a plugin managed resource,
                //ask the plugin to load it now.
                if (this.shim) {
                    context.makeRequire(this.map, {
                        enableBuildCallback: true
                    })(this.shim.deps || [], bind(this, function () {
                        return map.prefix ? this.callPlugin() : this.load();
                    }));
                } else {
                    //Regular dependency.
                    return map.prefix ? this.callPlugin() : this.load();
                }
            },

            load: function () {
                var url = this.map.url;

                //Regular dependency.
                if (!urlFetched[url]) {
                    urlFetched[url] = true;
                    context.load(this.map.id, url);
                }
            },

            /**
             * Checks if the module is ready to define itself, and if so,
             * define it.
             */
            check: function () {
                if (!this.enabled || this.enabling) {
                    return;
                }

                var err, cjsModule,
                    id = this.map.id,
                    depExports = this.depExports,
                    exports = this.exports,
                    factory = this.factory;

                if (!this.inited) {
                    // Only fetch if not already in the defQueue.
                    if (!hasProp(context.defQueueMap, id)) {
                        this.fetch();
                    }
                } else if (this.error) {
                    this.emit('error', this.error);
                } else if (!this.defining) {
                    //The factory could trigger another require call
                    //that would result in checking this module to
                    //define itself again. If already in the process
                    //of doing that, skip this work.
                    this.defining = true;

                    if (this.depCount < 1 && !this.defined) {
                        if (isFunction(factory)) {
                            //If there is an error listener, favor passing
                            //to that instead of throwing an error. However,
                            //only do it for define()'d  modules. require
                            //errbacks should not be called for failures in
                            //their callbacks (#699). However if a global
                            //onError is set, use that.
                            if ((this.events.error && this.map.isDefine) ||
                                req.onError !== defaultOnError) {
                                try {
                                    exports = context.execCb(id, factory, depExports, exports);
                                } catch (e) {
                                    err = e;
                                }
                            } else {
                                exports = context.execCb(id, factory, depExports, exports);
                            }

                            // Favor return value over exports. If node/cjs in play,
                            // then will not have a return value anyway. Favor
                            // module.exports assignment over exports object.
                            if (this.map.isDefine && exports === undefined) {
                                cjsModule = this.module;
                                if (cjsModule) {
                                    exports = cjsModule.exports;
                                } else if (this.usingExports) {
                                    //exports already set the defined value.
                                    exports = this.exports;
                                }
                            }

                            if (err) {
                                err.requireMap = this.map;
                                err.requireModules = this.map.isDefine ? [this.map.id] : null;
                                err.requireType = this.map.isDefine ? 'define' : 'require';
                                return onError((this.error = err));
                            }

                        } else {
                            //Just a literal value
                            exports = factory;
                        }

                        this.exports = exports;

                        if (this.map.isDefine && !this.ignore) {
                            defined[id] = exports;

                            if (req.onResourceLoad) {
                                var resLoadMaps = [];
                                each(this.depMaps, function (depMap) {
                                    resLoadMaps.push(depMap.normalizedMap || depMap);
                                });
                                req.onResourceLoad(context, this.map, resLoadMaps);
                            }
                        }

                        //Clean up
                        cleanRegistry(id);

                        this.defined = true;
                    }

                    //Finished the define stage. Allow calling check again
                    //to allow define notifications below in the case of a
                    //cycle.
                    this.defining = false;

                    if (this.defined && !this.defineEmitted) {
                        this.defineEmitted = true;
                        this.emit('defined', this.exports);
                        this.defineEmitComplete = true;
                    }

                }
            },

            callPlugin: function () {
                var map = this.map,
                    id = map.id,
                    //Map already normalized the prefix.
                    pluginMap = makeModuleMap(map.prefix);

                //Mark this as a dependency for this plugin, so it
                //can be traced for cycles.
                this.depMaps.push(pluginMap);

                on(pluginMap, 'defined', bind(this, function (plugin) {
                    var load, normalizedMap, normalizedMod,
                        bundleId = getOwn(bundlesMap, this.map.id),
                        name = this.map.name,
                        parentName = this.map.parentMap ? this.map.parentMap.name : null,
                        localRequire = context.makeRequire(map.parentMap, {
                            enableBuildCallback: true
                        });

                    //If current map is not normalized, wait for that
                    //normalized name to load instead of continuing.
                    if (this.map.unnormalized) {
                        //Normalize the ID if the plugin allows it.
                        if (plugin.normalize) {
                            name = plugin.normalize(name, function (name) {
                                return normalize(name, parentName, true);
                            }) || '';
                        }

                        //prefix and name should already be normalized, no need
                        //for applying map config again either.
                        normalizedMap = makeModuleMap(map.prefix + '!' + name,
                                                      this.map.parentMap,
                                                      true);
                        on(normalizedMap,
                            'defined', bind(this, function (value) {
                                this.map.normalizedMap = normalizedMap;
                                this.init([], function () { return value; }, null, {
                                    enabled: true,
                                    ignore: true
                                });
                            }));

                        normalizedMod = getOwn(registry, normalizedMap.id);
                        if (normalizedMod) {
                            //Mark this as a dependency for this plugin, so it
                            //can be traced for cycles.
                            this.depMaps.push(normalizedMap);

                            if (this.events.error) {
                                normalizedMod.on('error', bind(this, function (err) {
                                    this.emit('error', err);
                                }));
                            }
                            normalizedMod.enable();
                        }

                        return;
                    }

                    //If a paths config, then just load that file instead to
                    //resolve the plugin, as it is built into that paths layer.
                    if (bundleId) {
                        this.map.url = context.nameToUrl(bundleId);
                        this.load();
                        return;
                    }

                    load = bind(this, function (value) {
                        this.init([], function () { return value; }, null, {
                            enabled: true
                        });
                    });

                    load.error = bind(this, function (err) {
                        this.inited = true;
                        this.error = err;
                        err.requireModules = [id];

                        //Remove temp unnormalized modules for this module,
                        //since they will never be resolved otherwise now.
                        eachProp(registry, function (mod) {
                            if (mod.map.id.indexOf(id + '_unnormalized') === 0) {
                                cleanRegistry(mod.map.id);
                            }
                        });

                        onError(err);
                    });

                    //Allow plugins to load other code without having to know the
                    //context or how to 'complete' the load.
                    load.fromText = bind(this, function (text, textAlt) {
                        /*jslint evil: true */
                        var moduleName = map.name,
                            moduleMap = makeModuleMap(moduleName),
                            hasInteractive = useInteractive;

                        //As of 2.1.0, support just passing the text, to reinforce
                        //fromText only being called once per resource. Still
                        //support old style of passing moduleName but discard
                        //that moduleName in favor of the internal ref.
                        if (textAlt) {
                            text = textAlt;
                        }

                        //Turn off interactive script matching for IE for any define
                        //calls in the text, then turn it back on at the end.
                        if (hasInteractive) {
                            useInteractive = false;
                        }

                        //Prime the system by creating a module instance for
                        //it.
                        getModule(moduleMap);

                        //Transfer any config to this other module.
                        if (hasProp(config.config, id)) {
                            config.config[moduleName] = config.config[id];
                        }

                        try {
                            req.exec(text);
                        } catch (e) {
                            return onError(makeError('fromtexteval',
                                             'fromText eval for ' + id +
                                            ' failed: ' + e,
                                             e,
                                             [id]));
                        }

                        if (hasInteractive) {
                            useInteractive = true;
                        }

                        //Mark this as a dependency for the plugin
                        //resource
                        this.depMaps.push(moduleMap);

                        //Support anonymous modules.
                        context.completeLoad(moduleName);

                        //Bind the value of that module to the value for this
                        //resource ID.
                        localRequire([moduleName], load);
                    });

                    //Use parentName here since the plugin's name is not reliable,
                    //could be some weird string with no path that actually wants to
                    //reference the parentName's path.
                    plugin.load(map.name, localRequire, load, config);
                }));

                context.enable(pluginMap, this);
                this.pluginMaps[pluginMap.id] = pluginMap;
            },

            enable: function () {
                enabledRegistry[this.map.id] = this;
                this.enabled = true;

                //Set flag mentioning that the module is enabling,
                //so that immediate calls to the defined callbacks
                //for dependencies do not trigger inadvertent load
                //with the depCount still being zero.
                this.enabling = true;

                //Enable each dependency
                each(this.depMaps, bind(this, function (depMap, i) {
                    var id, mod, handler;

                    if (typeof depMap === 'string') {
                        //Dependency needs to be converted to a depMap
                        //and wired up to this module.
                        depMap = makeModuleMap(depMap,
                                               (this.map.isDefine ? this.map : this.map.parentMap),
                                               false,
                                               !this.skipMap);
                        this.depMaps[i] = depMap;

                        handler = getOwn(handlers, depMap.id);

                        if (handler) {
                            this.depExports[i] = handler(this);
                            return;
                        }

                        this.depCount += 1;

                        on(depMap, 'defined', bind(this, function (depExports) {
                            if (this.undefed) {
                                return;
                            }
                            this.defineDep(i, depExports);
                            this.check();
                        }));

                        if (this.errback) {
                            on(depMap, 'error', bind(this, this.errback));
                        } else if (this.events.error) {
                            // No direct errback on this module, but something
                            // else is listening for errors, so be sure to
                            // propagate the error correctly.
                            on(depMap, 'error', bind(this, function(err) {
                                this.emit('error', err);
                            }));
                        }
                    }

                    id = depMap.id;
                    mod = registry[id];

                    //Skip special modules like 'require', 'exports', 'module'
                    //Also, don't call enable if it is already enabled,
                    //important in circular dependency cases.
                    if (!hasProp(handlers, id) && mod && !mod.enabled) {
                        context.enable(depMap, this);
                    }
                }));

                //Enable each plugin that is used in
                //a dependency
                eachProp(this.pluginMaps, bind(this, function (pluginMap) {
                    var mod = getOwn(registry, pluginMap.id);
                    if (mod && !mod.enabled) {
                        context.enable(pluginMap, this);
                    }
                }));

                this.enabling = false;

                this.check();
            },

            on: function (name, cb) {
                var cbs = this.events[name];
                if (!cbs) {
                    cbs = this.events[name] = [];
                }
                cbs.push(cb);
            },

            emit: function (name, evt) {
                each(this.events[name], function (cb) {
                    cb(evt);
                });
                if (name === 'error') {
                    //Now that the error handler was triggered, remove
                    //the listeners, since this broken Module instance
                    //can stay around for a while in the registry.
                    delete this.events[name];
                }
            }
        };

        function callGetModule(args) {
            //Skip modules already defined.
            if (!hasProp(defined, args[0])) {
                getModule(makeModuleMap(args[0], null, true)).init(args[1], args[2]);
            }
        }

        function removeListener(node, func, name, ieName) {
            //Favor detachEvent because of IE9
            //issue, see attachEvent/addEventListener comment elsewhere
            //in this file.
            if (node.detachEvent && !isOpera) {
                //Probably IE. If not it will throw an error, which will be
                //useful to know.
                if (ieName) {
                    node.detachEvent(ieName, func);
                }
            } else {
                node.removeEventListener(name, func, false);
            }
        }

        /**
         * Given an event from a script node, get the requirejs info from it,
         * and then removes the event listeners on the node.
         * @param {Event} evt
         * @returns {Object}
         */
        function getScriptData(evt) {
            //Using currentTarget instead of target for Firefox 2.0's sake. Not
            //all old browsers will be supported, but this one was easy enough
            //to support and still makes sense.
            var node = evt.currentTarget || evt.srcElement;

            //Remove the listeners once here.
            removeListener(node, context.onScriptLoad, 'load', 'onreadystatechange');
            removeListener(node, context.onScriptError, 'error');

            return {
                node: node,
                id: node && node.getAttribute('data-requiremodule')
            };
        }

        function intakeDefines() {
            var args;

            //Any defined modules in the global queue, intake them now.
            takeGlobalQueue();

            //Make sure any remaining defQueue items get properly processed.
            while (defQueue.length) {
                args = defQueue.shift();
                if (args[0] === null) {
                    return onError(makeError('mismatch', 'Mismatched anonymous define() module: ' +
                        args[args.length - 1]));
                } else {
                    //args are id, deps, factory. Should be normalized by the
                    //define() function.
                    callGetModule(args);
                }
            }
            context.defQueueMap = {};
        }

        context = {
            config: config,
            contextName: contextName,
            registry: registry,
            defined: defined,
            urlFetched: urlFetched,
            defQueue: defQueue,
            defQueueMap: {},
            Module: Module,
            makeModuleMap: makeModuleMap,
            nextTick: req.nextTick,
            onError: onError,

            /**
             * Set a configuration for the context.
             * @param {Object} cfg config object to integrate.
             */
            configure: function (cfg) {
                //Make sure the baseUrl ends in a slash.
                if (cfg.baseUrl) {
                    if (cfg.baseUrl.charAt(cfg.baseUrl.length - 1) !== '/') {
                        cfg.baseUrl += '/';
                    }
                }

                // Convert old style urlArgs string to a function.
                if (typeof cfg.urlArgs === 'string') {
                    var urlArgs = cfg.urlArgs;
                    cfg.urlArgs = function(id, url) {
                        return (url.indexOf('?') === -1 ? '?' : '&') + urlArgs;
                    };
                }

                //Save off the paths since they require special processing,
                //they are additive.
                var shim = config.shim,
                    objs = {
                        paths: true,
                        bundles: true,
                        config: true,
                        map: true
                    };

                eachProp(cfg, function (value, prop) {
                    if (objs[prop]) {
                        if (!config[prop]) {
                            config[prop] = {};
                        }
                        mixin(config[prop], value, true, true);
                    } else {
                        config[prop] = value;
                    }
                });

                //Reverse map the bundles
                if (cfg.bundles) {
                    eachProp(cfg.bundles, function (value, prop) {
                        each(value, function (v) {
                            if (v !== prop) {
                                bundlesMap[v] = prop;
                            }
                        });
                    });
                }

                //Merge shim
                if (cfg.shim) {
                    eachProp(cfg.shim, function (value, id) {
                        //Normalize the structure
                        if (isArray(value)) {
                            value = {
                                deps: value
                            };
                        }
                        if ((value.exports || value.init) && !value.exportsFn) {
                            value.exportsFn = context.makeShimExports(value);
                        }
                        shim[id] = value;
                    });
                    config.shim = shim;
                }

                //Adjust packages if necessary.
                if (cfg.packages) {
                    each(cfg.packages, function (pkgObj) {
                        var location, name;

                        pkgObj = typeof pkgObj === 'string' ? {name: pkgObj} : pkgObj;

                        name = pkgObj.name;
                        location = pkgObj.location;
                        if (location) {
                            config.paths[name] = pkgObj.location;
                        }

                        //Save pointer to main module ID for pkg name.
                        //Remove leading dot in main, so main paths are normalized,
                        //and remove any trailing .js, since different package
                        //envs have different conventions: some use a module name,
                        //some use a file name.
                        config.pkgs[name] = pkgObj.name + '/' + (pkgObj.main || 'main')
                                     .replace(currDirRegExp, '')
                                     .replace(jsSuffixRegExp, '');
                    });
                }

                //If there are any "waiting to execute" modules in the registry,
                //update the maps for them, since their info, like URLs to load,
                //may have changed.
                eachProp(registry, function (mod, id) {
                    //If module already has init called, since it is too
                    //late to modify them, and ignore unnormalized ones
                    //since they are transient.
                    if (!mod.inited && !mod.map.unnormalized) {
                        mod.map = makeModuleMap(id, null, true);
                    }
                });

                //If a deps array or a config callback is specified, then call
                //require with those args. This is useful when require is defined as a
                //config object before require.js is loaded.
                if (cfg.deps || cfg.callback) {
                    context.require(cfg.deps || [], cfg.callback);
                }
            },

            makeShimExports: function (value) {
                function fn() {
                    var ret;
                    if (value.init) {
                        ret = value.init.apply(global, arguments);
                    }
                    return ret || (value.exports && getGlobal(value.exports));
                }
                return fn;
            },

            makeRequire: function (relMap, options) {
                options = options || {};

                function localRequire(deps, callback, errback) {
                    var id, map, requireMod;

                    if (options.enableBuildCallback && callback && isFunction(callback)) {
                        callback.__requireJsBuild = true;
                    }

                    if (typeof deps === 'string') {
                        if (isFunction(callback)) {
                            //Invalid call
                            return onError(makeError('requireargs', 'Invalid require call'), errback);
                        }

                        //If require|exports|module are requested, get the
                        //value for them from the special handlers. Caveat:
                        //this only works while module is being defined.
                        if (relMap && hasProp(handlers, deps)) {
                            return handlers[deps](registry[relMap.id]);
                        }

                        //Synchronous access to one module. If require.get is
                        //available (as in the Node adapter), prefer that.
                        if (req.get) {
                            return req.get(context, deps, relMap, localRequire);
                        }

                        //Normalize module name, if it contains . or ..
                        map = makeModuleMap(deps, relMap, false, true);
                        id = map.id;

                        if (!hasProp(defined, id)) {
                            return onError(makeError('notloaded', 'Module name "' +
                                        id +
                                        '" has not been loaded yet for context: ' +
                                        contextName +
                                        (relMap ? '' : '. Use require([])')));
                        }
                        return defined[id];
                    }

                    //Grab defines waiting in the global queue.
                    intakeDefines();

                    //Mark all the dependencies as needing to be loaded.
                    context.nextTick(function () {
                        //Some defines could have been added since the
                        //require call, collect them.
                        intakeDefines();

                        requireMod = getModule(makeModuleMap(null, relMap));

                        //Store if map config should be applied to this require
                        //call for dependencies.
                        requireMod.skipMap = options.skipMap;

                        requireMod.init(deps, callback, errback, {
                            enabled: true
                        });

                        checkLoaded();
                    });

                    return localRequire;
                }

                mixin(localRequire, {
                    isBrowser: isBrowser,

                    /**
                     * Converts a module name + .extension into an URL path.
                     * *Requires* the use of a module name. It does not support using
                     * plain URLs like nameToUrl.
                     */
                    toUrl: function (moduleNamePlusExt) {
                        var ext,
                            index = moduleNamePlusExt.lastIndexOf('.'),
                            segment = moduleNamePlusExt.split('/')[0],
                            isRelative = segment === '.' || segment === '..';

                        //Have a file extension alias, and it is not the
                        //dots from a relative path.
                        if (index !== -1 && (!isRelative || index > 1)) {
                            ext = moduleNamePlusExt.substring(index, moduleNamePlusExt.length);
                            moduleNamePlusExt = moduleNamePlusExt.substring(0, index);
                        }

                        return context.nameToUrl(normalize(moduleNamePlusExt,
                                                relMap && relMap.id, true), ext,  true);
                    },

                    defined: function (id) {
                        return hasProp(defined, makeModuleMap(id, relMap, false, true).id);
                    },

                    specified: function (id) {
                        id = makeModuleMap(id, relMap, false, true).id;
                        return hasProp(defined, id) || hasProp(registry, id);
                    }
                });

                //Only allow undef on top level require calls
                if (!relMap) {
                    localRequire.undef = function (id) {
                        //Bind any waiting define() calls to this context,
                        //fix for #408
                        takeGlobalQueue();

                        var map = makeModuleMap(id, relMap, true),
                            mod = getOwn(registry, id);

                        mod.undefed = true;
                        removeScript(id);

                        delete defined[id];
                        delete urlFetched[map.url];
                        delete undefEvents[id];

                        //Clean queued defines too. Go backwards
                        //in array so that the splices do not
                        //mess up the iteration.
                        eachReverse(defQueue, function(args, i) {
                            if (args[0] === id) {
                                defQueue.splice(i, 1);
                            }
                        });
                        delete context.defQueueMap[id];

                        if (mod) {
                            //Hold on to listeners in case the
                            //module will be attempted to be reloaded
                            //using a different config.
                            if (mod.events.defined) {
                                undefEvents[id] = mod.events;
                            }

                            cleanRegistry(id);
                        }
                    };
                }

                return localRequire;
            },

            /**
             * Called to enable a module if it is still in the registry
             * awaiting enablement. A second arg, parent, the parent module,
             * is passed in for context, when this method is overridden by
             * the optimizer. Not shown here to keep code compact.
             */
            enable: function (depMap) {
                var mod = getOwn(registry, depMap.id);
                if (mod) {
                    getModule(depMap).enable();
                }
            },

            /**
             * Internal method used by environment adapters to complete a load event.
             * A load event could be a script load or just a load pass from a synchronous
             * load call.
             * @param {String} moduleName the name of the module to potentially complete.
             */
            completeLoad: function (moduleName) {
                var found, args, mod,
                    shim = getOwn(config.shim, moduleName) || {},
                    shExports = shim.exports;

                takeGlobalQueue();

                while (defQueue.length) {
                    args = defQueue.shift();
                    if (args[0] === null) {
                        args[0] = moduleName;
                        //If already found an anonymous module and bound it
                        //to this name, then this is some other anon module
                        //waiting for its completeLoad to fire.
                        if (found) {
                            break;
                        }
                        found = true;
                    } else if (args[0] === moduleName) {
                        //Found matching define call for this script!
                        found = true;
                    }

                    callGetModule(args);
                }
                context.defQueueMap = {};

                //Do this after the cycle of callGetModule in case the result
                //of those calls/init calls changes the registry.
                mod = getOwn(registry, moduleName);

                if (!found && !hasProp(defined, moduleName) && mod && !mod.inited) {
                    if (config.enforceDefine && (!shExports || !getGlobal(shExports))) {
                        if (hasPathFallback(moduleName)) {
                            return;
                        } else {
                            return onError(makeError('nodefine',
                                             'No define call for ' + moduleName,
                                             null,
                                             [moduleName]));
                        }
                    } else {
                        //A script that does not call define(), so just simulate
                        //the call for it.
                        callGetModule([moduleName, (shim.deps || []), shim.exportsFn]);
                    }
                }

                checkLoaded();
            },

            /**
             * Converts a module name to a file path. Supports cases where
             * moduleName may actually be just an URL.
             * Note that it **does not** call normalize on the moduleName,
             * it is assumed to have already been normalized. This is an
             * internal API, not a public one. Use toUrl for the public API.
             */
            nameToUrl: function (moduleName, ext, skipExt) {
                var paths, syms, i, parentModule, url,
                    parentPath, bundleId,
                    pkgMain = getOwn(config.pkgs, moduleName);

                if (pkgMain) {
                    moduleName = pkgMain;
                }

                bundleId = getOwn(bundlesMap, moduleName);

                if (bundleId) {
                    return context.nameToUrl(bundleId, ext, skipExt);
                }

                //If a colon is in the URL, it indicates a protocol is used and it is just
                //an URL to a file, or if it starts with a slash, contains a query arg (i.e. ?)
                //or ends with .js, then assume the user meant to use an url and not a module id.
                //The slash is important for protocol-less URLs as well as full paths.
                if (req.jsExtRegExp.test(moduleName)) {
                    //Just a plain path, not module name lookup, so just return it.
                    //Add extension if it is included. This is a bit wonky, only non-.js things pass
                    //an extension, this method probably needs to be reworked.
                    url = moduleName + (ext || '');
                } else {
                    //A module that needs to be converted to a path.
                    paths = config.paths;

                    syms = moduleName.split('/');
                    //For each module name segment, see if there is a path
                    //registered for it. Start with most specific name
                    //and work up from it.
                    for (i = syms.length; i > 0; i -= 1) {
                        parentModule = syms.slice(0, i).join('/');

                        parentPath = getOwn(paths, parentModule);
                        if (parentPath) {
                            //If an array, it means there are a few choices,
                            //Choose the one that is desired
                            if (isArray(parentPath)) {
                                parentPath = parentPath[0];
                            }
                            syms.splice(0, i, parentPath);
                            break;
                        }
                    }

                    //Join the path parts together, then figure out if baseUrl is needed.
                    url = syms.join('/');
                    url += (ext || (/^data\:|^blob\:|\?/.test(url) || skipExt ? '' : '.js'));
                    url = (url.charAt(0) === '/' || url.match(/^[\w\+\.\-]+:/) ? '' : config.baseUrl) + url;
                }

                return config.urlArgs && !/^blob\:/.test(url) ?
                       url + config.urlArgs(moduleName, url) : url;
            },

            //Delegates to req.load. Broken out as a separate function to
            //allow overriding in the optimizer.
            load: function (id, url) {
                req.load(context, id, url);
            },

            /**
             * Executes a module callback function. Broken out as a separate function
             * solely to allow the build system to sequence the files in the built
             * layer in the right sequence.
             *
             * @private
             */
            execCb: function (name, callback, args, exports) {
                return callback.apply(exports, args);
            },

            /**
             * callback for script loads, used to check status of loading.
             *
             * @param {Event} evt the event from the browser for the script
             * that was loaded.
             */
            onScriptLoad: function (evt) {
                //Using currentTarget instead of target for Firefox 2.0's sake. Not
                //all old browsers will be supported, but this one was easy enough
                //to support and still makes sense.
                if (evt.type === 'load' ||
                        (readyRegExp.test((evt.currentTarget || evt.srcElement).readyState))) {
                    //Reset interactive script so a script node is not held onto for
                    //to long.
                    interactiveScript = null;

                    //Pull out the name of the module and the context.
                    var data = getScriptData(evt);
                    context.completeLoad(data.id);
                }
            },

            /**
             * Callback for script errors.
             */
            onScriptError: function (evt) {
                var data = getScriptData(evt);
                if (!hasPathFallback(data.id)) {
                    var parents = [];
                    eachProp(registry, function(value, key) {
                        if (key.indexOf('_@r') !== 0) {
                            each(value.depMaps, function(depMap) {
                                if (depMap.id === data.id) {
                                    parents.push(key);
                                    return true;
                                }
                            });
                        }
                    });
                    return onError(makeError('scripterror', 'Script error for "' + data.id +
                                             (parents.length ?
                                             '", needed by: ' + parents.join(', ') :
                                             '"'), evt, [data.id]));
                }
            }
        };

        context.require = context.makeRequire();
        return context;
    }

    /**
     * Main entry point.
     *
     * If the only argument to require is a string, then the module that
     * is represented by that string is fetched for the appropriate context.
     *
     * If the first argument is an array, then it will be treated as an array
     * of dependency string names to fetch. An optional function callback can
     * be specified to execute when all of those dependencies are available.
     *
     * Make a local req variable to help Caja compliance (it assumes things
     * on a require that are not standardized), and to give a short
     * name for minification/local scope use.
     */
    req = requirejs = function (deps, callback, errback, optional) {

        //Find the right context, use default
        var context, config,
            contextName = defContextName;

        // Determine if have config object in the call.
        if (!isArray(deps) && typeof deps !== 'string') {
            // deps is a config object
            config = deps;
            if (isArray(callback)) {
                // Adjust args if there are dependencies
                deps = callback;
                callback = errback;
                errback = optional;
            } else {
                deps = [];
            }
        }

        if (config && config.context) {
            contextName = config.context;
        }

        context = getOwn(contexts, contextName);
        if (!context) {
            context = contexts[contextName] = req.s.newContext(contextName);
        }

        if (config) {
            context.configure(config);
        }

        return context.require(deps, callback, errback);
    };

    /**
     * Support require.config() to make it easier to cooperate with other
     * AMD loaders on globally agreed names.
     */
    req.config = function (config) {
        return req(config);
    };

    /**
     * Execute something after the current tick
     * of the event loop. Override for other envs
     * that have a better solution than setTimeout.
     * @param  {Function} fn function to execute later.
     */
    req.nextTick = typeof setTimeout !== 'undefined' ? function (fn) {
        setTimeout(fn, 4);
    } : function (fn) { fn(); };

    /**
     * Export require as a global, but only if it does not already exist.
     */
    if (!require) {
        require = req;
    }

    req.version = version;

    //Used to filter out dependencies that are already paths.
    req.jsExtRegExp = /^\/|:|\?|\.js$/;
    req.isBrowser = isBrowser;
    s = req.s = {
        contexts: contexts,
        newContext: newContext
    };

    //Create default context.
    req({});

    //Exports some context-sensitive methods on global require.
    each([
        'toUrl',
        'undef',
        'defined',
        'specified'
    ], function (prop) {
        //Reference from contexts instead of early binding to default context,
        //so that during builds, the latest instance of the default context
        //with its config gets used.
        req[prop] = function () {
            var ctx = contexts[defContextName];
            return ctx.require[prop].apply(ctx, arguments);
        };
    });

    if (isBrowser) {
        head = s.head = document.getElementsByTagName('head')[0];
        //If BASE tag is in play, using appendChild is a problem for IE6.
        //When that browser dies, this can be removed. Details in this jQuery bug:
        //http://dev.jquery.com/ticket/2709
        baseElement = document.getElementsByTagName('base')[0];
        if (baseElement) {
            head = s.head = baseElement.parentNode;
        }
    }

    /**
     * Any errors that require explicitly generates will be passed to this
     * function. Intercept/override it if you want custom error handling.
     * @param {Error} err the error object.
     */
    req.onError = defaultOnError;

    /**
     * Creates the node for the load command. Only used in browser envs.
     */
    req.createNode = function (config, moduleName, url) {
        var node = config.xhtml ?
                document.createElementNS('http://www.w3.org/1999/xhtml', 'html:script') :
                document.createElement('script');
        node.type = config.scriptType || 'text/javascript';
        node.charset = 'utf-8';
        node.async = true;
        return node;
    };

    /**
     * Does the request to load a module for the browser case.
     * Make this a separate function to allow other environments
     * to override it.
     *
     * @param {Object} context the require context to find state.
     * @param {String} moduleName the name of the module.
     * @param {Object} url the URL to the module.
     */
    req.load = function (context, moduleName, url) {
        var config = (context && context.config) || {},
            node;
        if (isBrowser) {
            //In the browser so use a script tag
            node = req.createNode(config, moduleName, url);

            node.setAttribute('data-requirecontext', context.contextName);
            node.setAttribute('data-requiremodule', moduleName);

            //Set up load listener. Test attachEvent first because IE9 has
            //a subtle issue in its addEventListener and script onload firings
            //that do not match the behavior of all other browsers with
            //addEventListener support, which fire the onload event for a
            //script right after the script execution. See:
            //https://connect.microsoft.com/IE/feedback/details/648057/script-onload-event-is-not-fired-immediately-after-script-execution
            //UNFORTUNATELY Opera implements attachEvent but does not follow the script
            //script execution mode.
            if (node.attachEvent &&
                    //Check if node.attachEvent is artificially added by custom script or
                    //natively supported by browser
                    //read https://github.com/requirejs/requirejs/issues/187
                    //if we can NOT find [native code] then it must NOT natively supported.
                    //in IE8, node.attachEvent does not have toString()
                    //Note the test for "[native code" with no closing brace, see:
                    //https://github.com/requirejs/requirejs/issues/273
                    !(node.attachEvent.toString && node.attachEvent.toString().indexOf('[native code') < 0) &&
                    !isOpera) {
                //Probably IE. IE (at least 6-8) do not fire
                //script onload right after executing the script, so
                //we cannot tie the anonymous define call to a name.
                //However, IE reports the script as being in 'interactive'
                //readyState at the time of the define call.
                useInteractive = true;

                node.attachEvent('onreadystatechange', context.onScriptLoad);
                //It would be great to add an error handler here to catch
                //404s in IE9+. However, onreadystatechange will fire before
                //the error handler, so that does not help. If addEventListener
                //is used, then IE will fire error before load, but we cannot
                //use that pathway given the connect.microsoft.com issue
                //mentioned above about not doing the 'script execute,
                //then fire the script load event listener before execute
                //next script' that other browsers do.
                //Best hope: IE10 fixes the issues,
                //and then destroys all installs of IE 6-9.
                //node.attachEvent('onerror', context.onScriptError);
            } else {
                node.addEventListener('load', context.onScriptLoad, false);
                node.addEventListener('error', context.onScriptError, false);
            }
            node.src = url;

            //Calling onNodeCreated after all properties on the node have been
            //set, but before it is placed in the DOM.
            if (config.onNodeCreated) {
                config.onNodeCreated(node, config, moduleName, url);
            }

            //For some cache cases in IE 6-8, the script executes before the end
            //of the appendChild execution, so to tie an anonymous define
            //call to the module name (which is stored on the node), hold on
            //to a reference to this node, but clear after the DOM insertion.
            currentlyAddingScript = node;
            if (baseElement) {
                head.insertBefore(node, baseElement);
            } else {
                head.appendChild(node);
            }
            currentlyAddingScript = null;

            return node;
        } else if (isWebWorker) {
            try {
                //In a web worker, use importScripts. This is not a very
                //efficient use of importScripts, importScripts will block until
                //its script is downloaded and evaluated. However, if web workers
                //are in play, the expectation is that a build has been done so
                //that only one script needs to be loaded anyway. This may need
                //to be reevaluated if other use cases become common.

                // Post a task to the event loop to work around a bug in WebKit
                // where the worker gets garbage-collected after calling
                // importScripts(): https://webkit.org/b/153317
                setTimeout(function() {}, 0);
                importScripts(url);

                //Account for anonymous modules
                context.completeLoad(moduleName);
            } catch (e) {
                context.onError(makeError('importscripts',
                                'importScripts failed for ' +
                                    moduleName + ' at ' + url,
                                e,
                                [moduleName]));
            }
        }
    };

    function getInteractiveScript() {
        if (interactiveScript && interactiveScript.readyState === 'interactive') {
            return interactiveScript;
        }

        eachReverse(scripts(), function (script) {
            if (script.readyState === 'interactive') {
                return (interactiveScript = script);
            }
        });
        return interactiveScript;
    }

    //Look for a data-main script attribute, which could also adjust the baseUrl.
    if (isBrowser && !cfg.skipDataMain) {
        //Figure out baseUrl. Get it from the script tag with require.js in it.
        eachReverse(scripts(), function (script) {
            //Set the 'head' where we can append children by
            //using the script's parent.
            if (!head) {
                head = script.parentNode;
            }

            //Look for a data-main attribute to set main script for the page
            //to load. If it is there, the path to data main becomes the
            //baseUrl, if it is not already set.
            dataMain = script.getAttribute('data-main');
            if (dataMain) {
                //Preserve dataMain in case it is a path (i.e. contains '?')
                mainScript = dataMain;

                //Set final baseUrl if there is not already an explicit one,
                //but only do so if the data-main value is not a loader plugin
                //module ID.
                if (!cfg.baseUrl && mainScript.indexOf('!') === -1) {
                    //Pull off the directory of data-main for use as the
                    //baseUrl.
                    src = mainScript.split('/');
                    mainScript = src.pop();
                    subPath = src.length ? src.join('/')  + '/' : './';

                    cfg.baseUrl = subPath;
                }

                //Strip off any trailing .js since mainScript is now
                //like a module name.
                mainScript = mainScript.replace(jsSuffixRegExp, '');

                //If mainScript is still a path, fall back to dataMain
                if (req.jsExtRegExp.test(mainScript)) {
                    mainScript = dataMain;
                }

                //Put the data-main script in the files to load.
                cfg.deps = cfg.deps ? cfg.deps.concat(mainScript) : [mainScript];

                return true;
            }
        });
    }

    /**
     * The function that handles definitions of modules. Differs from
     * require() in that a string for the module should be the first argument,
     * and the function to execute after dependencies are loaded should
     * return a value to define the module corresponding to the first argument's
     * name.
     */
    define = function (name, deps, callback) {
        var node, context;

        //Allow for anonymous modules
        if (typeof name !== 'string') {
            //Adjust args appropriately
            callback = deps;
            deps = name;
            name = null;
        }

        //This module may not have dependencies
        if (!isArray(deps)) {
            callback = deps;
            deps = null;
        }

        //If no name, and callback is a function, then figure out if it a
        //CommonJS thing with dependencies.
        if (!deps && isFunction(callback)) {
            deps = [];
            //Remove comments from the callback string,
            //look for require calls, and pull them into the dependencies,
            //but only if there are function args.
            if (callback.length) {
                callback
                    .toString()
                    .replace(commentRegExp, commentReplace)
                    .replace(cjsRequireRegExp, function (match, dep) {
                        deps.push(dep);
                    });

                //May be a CommonJS thing even without require calls, but still
                //could use exports, and module. Avoid doing exports and module
                //work though if it just needs require.
                //REQUIRES the function to expect the CommonJS variables in the
                //order listed below.
                deps = (callback.length === 1 ? ['require'] : ['require', 'exports', 'module']).concat(deps);
            }
        }

        //If in IE 6-8 and hit an anonymous define() call, do the interactive
        //work.
        if (useInteractive) {
            node = currentlyAddingScript || getInteractiveScript();
            if (node) {
                if (!name) {
                    name = node.getAttribute('data-requiremodule');
                }
                context = contexts[node.getAttribute('data-requirecontext')];
            }
        }

        //Always save off evaluating the def call until the script onload handler.
        //This allows multiple modules to be in a file without prematurely
        //tracing dependencies, and allows for anonymous module support,
        //where the module name is not known until the script onload event
        //occurs. If no context, use the global queue, and get it processed
        //in the onscript load callback.
        if (context) {
            context.defQueue.push([name, deps, callback]);
            context.defQueueMap[name] = true;
        } else {
            globalDefQueue.push([name, deps, callback]);
        }
    };

    define.amd = {
        jQuery: true
    };

    /**
     * Executes the text. Normally just uses eval, but can be modified
     * to use a better, environment-specific call. Only used for transpiling
     * loader plugins, not for plain JS modules.
     * @param {String} text the text to execute/evaluate.
     */
    req.exec = function (text) {
        /*jslint evil: true */
        return eval(text);
    };

    //Set up with config info.
    req(cfg);
}(this, (typeof setTimeout === 'undefined' ? undefined : setTimeout)));
