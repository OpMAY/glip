/**
 * Kakao SDK for JavaScript - v1.40.14
 *
 * Copyright 2017 Kakao Corp.
 *
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 *
 * OSS Notice | KakaoSDK-Javascript
 *
 * This application is Copyright © Kakao Corp. All rights reserved.
 * The following sets forth attribution notices for third party software that may be contained in this application.
 * If you have any questions or concerns, please contact us at opensource@kakaocorp.com
 *
 *
 * crypto-js
 *
 * https://github.com/brix/crypto-js
 *
 * Copyright 2009-2013 Jeff Mott
 * Copyright 2013-2016 Evan Vosberg
 *
 * MIT License
 *
 *
 * easyXDM
 *
 * https://github.com/oyvindkinsey/easyXDM/
 *
 * Copyright 2009-2011 Øyvind Sean Kinsey, oyvind@kinsey.no
 *
 * MIT License
 *
 *
 * ES6-Promise
 *
 * https://github.com/stefanpenner/es6-promise
 *
 * Copyright 2014 Yehuda Katz, Tom Dale, Stefan Penner and contributors
 *
 * MIT License
 *
 *
 * Kakao Web2App Library
 *
 * https://github.com/kakao/web2app
 *
 * Copyright 2015 Kakao Corp. http://www.kakaocorp.com
 *
 * MIT License
 *
 *
 * lodash
 *
 * https://github.com/lodash/lodash
 *
 * Copyright JS Foundation and other contributors
 *
 * MIT License
 *
 *
 * ua_parser
 *
 * https://github.com/html5crew/ua_parser
 *
 * Copyright HTML5 Tech. Team in Daum Communications Corp.
 *
 * MIT License
 *
 *
 * ``````````
 * MIT License
 *
 * Copyright (c)
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * 'Software'), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 * ``````````
 */

!function (e, t) {
    "object" == typeof exports && "undefined" != typeof module ? t(exports) : "function" == typeof define && define.amd ? define(["exports"], t) : t((e = "undefined" != typeof globalThis ? globalThis : e || self).Kakao = e.Kakao || {})
}(this, (function (e) {
    "use strict";
    var t = "object" == typeof global && global && global.Object === Object && global,
        n = "object" == typeof self && self && self.Object === Object && self, r = t || n || Function("return this")(),
        o = r.Symbol, i = Object.prototype, a = i.hasOwnProperty, c = i.toString, s = o ? o.toStringTag : void 0;
    var u = Object.prototype.toString;
    var l = o ? o.toStringTag : void 0;

    function d(e) {
        return null == e ? void 0 === e ? "[object Undefined]" : "[object Null]" : l && l in Object(e) ? function (e) {
            var t = a.call(e, s), n = e[s];
            try {
                e[s] = void 0;
                var r = !0
            } catch (e) {
            }
            var o = c.call(e);
            return r && (t ? e[s] = n : delete e[s]), o
        }(e) : function (e) {
            return u.call(e)
        }(e)
    }

    function p(e) {
        return null != e && "object" == typeof e
    }

    var f = Array.isArray, h = /\s/;
    var m = /^\s+/;

    function v(e) {
        return e ? e.slice(0, function (e) {
            for (var t = e.length; t-- && h.test(e.charAt(t));) ;
            return t
        }(e) + 1).replace(m, "") : e
    }

    function g(e) {
        var t = typeof e;
        return null != e && ("object" == t || "function" == t)
    }

    var y = /^[-+]0x[0-9a-f]+$/i, b = /^0b[01]+$/i, _ = /^0o[0-7]+$/i, k = parseInt;

    function w(e) {
        if ("number" == typeof e) return e;
        if (function (e) {
            return "symbol" == typeof e || p(e) && "[object Symbol]" == d(e)
        }(e)) return NaN;
        if (g(e)) {
            var t = "function" == typeof e.valueOf ? e.valueOf() : e;
            e = g(t) ? t + "" : t
        }
        if ("string" != typeof e) return 0 === e ? e : +e;
        e = v(e);
        var n = b.test(e);
        return n || _.test(e) ? k(e.slice(2), n ? 2 : 8) : y.test(e) ? NaN : +e
    }

    var S = 1 / 0;

    function x(e) {
        var t = function (e) {
            return e ? (e = w(e)) === S || e === -1 / 0 ? 17976931348623157e292 * (e < 0 ? -1 : 1) : e == e ? e : 0 : 0 === e ? e : 0
        }(e), n = t % 1;
        return t == t ? n ? t - n : t : 0
    }

    function O(e) {
        return e
    }

    function A(e) {
        if (!g(e)) return !1;
        var t = d(e);
        return "[object Function]" == t || "[object GeneratorFunction]" == t || "[object AsyncFunction]" == t || "[object Proxy]" == t
    }

    var T, j = r["__core-js_shared__"],
        C = (T = /[^.]+$/.exec(j && j.keys && j.keys.IE_PROTO || "")) ? "Symbol(src)_1." + T : "";
    var I = Function.prototype.toString;
    var P = /^\[object .+?Constructor\]$/, F = Function.prototype, B = Object.prototype, E = F.toString,
        L = B.hasOwnProperty,
        U = RegExp("^" + E.call(L).replace(/[\\^$.*+?()[\]{}|]/g, "\\$&").replace(/hasOwnProperty|(function).*?(?=\\\()| for .+?(?=\\\])/g, "$1.*?") + "$");

    function R(e) {
        return !(!g(e) || (t = e, C && C in t)) && (A(e) ? U : P).test(function (e) {
            if (null != e) {
                try {
                    return I.call(e)
                } catch (e) {
                }
                try {
                    return e + ""
                } catch (e) {
                }
            }
            return ""
        }(e));
        var t
    }

    function z(e, t, n) {
        switch (n.length) {
            case 0:
                return e.call(t);
            case 1:
                return e.call(t, n[0]);
            case 2:
                return e.call(t, n[0], n[1]);
            case 3:
                return e.call(t, n[0], n[1], n[2])
        }
        return e.apply(t, n)
    }

    var M = Date.now;
    var D, q, N, K = function () {
        try {
            var e = R(t = function (e, t) {
                return null == e ? void 0 : e[t]
            }(Object, "defineProperty")) ? t : void 0;
            return e({}, "", {}), e
        } catch (e) {
        }
        var t
    }(), H = (D = K ? function (e, t) {
        return K(e, "toString", {
            configurable: !0, enumerable: !1, value: (n = t, function () {
                return n
            }), writable: !0
        });
        var n
    } : O, q = 0, N = 0, function () {
        var e = M(), t = 16 - (e - N);
        if (N = e, t > 0) {
            if (++q >= 800) return arguments[0]
        } else q = 0;
        return D.apply(void 0, arguments)
    });

    function W(e, t) {
        for (var n = -1, r = null == e ? 0 : e.length; ++n < r && !1 !== t(e[n], n, e);) ;
        return e
    }

    var J = /^(?:0|[1-9]\d*)$/;

    function X(e, t) {
        var n = typeof e;
        return !!(t = null == t ? 9007199254740991 : t) && ("number" == n || "symbol" != n && J.test(e)) && e > -1 && e % 1 == 0 && e < t
    }

    function $(e, t, n) {
        "__proto__" == t && K ? K(e, t, {configurable: !0, enumerable: !0, value: n, writable: !0}) : e[t] = n
    }

    function G(e, t) {
        return e === t || e != e && t != t
    }

    var V = Object.prototype.hasOwnProperty;

    function Y(e, t, n) {
        var r = e[t];
        V.call(e, t) && G(r, n) && (void 0 !== n || t in e) || $(e, t, n)
    }

    var Q = Math.max;

    function Z(e, t) {
        return H(function (e, t, n) {
            return t = Q(void 0 === t ? e.length - 1 : t, 0), function () {
                for (var r = arguments, o = -1, i = Q(r.length - t, 0), a = Array(i); ++o < i;) a[o] = r[t + o];
                o = -1;
                for (var c = Array(t + 1); ++o < t;) c[o] = r[o];
                return c[t] = n(a), z(e, this, c)
            }
        }(e, t, O), e + "")
    }

    function ee(e) {
        return "number" == typeof e && e > -1 && e % 1 == 0 && e <= 9007199254740991
    }

    function te(e) {
        return null != e && ee(e.length) && !A(e)
    }

    function ne(e, t, n) {
        if (!g(n)) return !1;
        var r = typeof t;
        return !!("number" == r ? te(n) && X(t, n.length) : "string" == r && t in n) && G(n[t], e)
    }

    var re = Object.prototype;

    function oe(e) {
        var t = e && e.constructor;
        return e === ("function" == typeof t && t.prototype || re)
    }

    function ie(e) {
        return p(e) && "[object Arguments]" == d(e)
    }

    var ae = Object.prototype, ce = ae.hasOwnProperty, se = ae.propertyIsEnumerable, ue = ie(function () {
        return arguments
    }()) ? ie : function (e) {
        return p(e) && ce.call(e, "callee") && !se.call(e, "callee")
    };
    var le = "object" == typeof e && e && !e.nodeType && e,
        de = le && "object" == typeof module && module && !module.nodeType && module,
        pe = de && de.exports === le ? r.Buffer : void 0, fe = (pe ? pe.isBuffer : void 0) || function () {
            return !1
        }, he = {};
    he["[object Float32Array]"] = he["[object Float64Array]"] = he["[object Int8Array]"] = he["[object Int16Array]"] = he["[object Int32Array]"] = he["[object Uint8Array]"] = he["[object Uint8ClampedArray]"] = he["[object Uint16Array]"] = he["[object Uint32Array]"] = !0, he["[object Arguments]"] = he["[object Array]"] = he["[object ArrayBuffer]"] = he["[object Boolean]"] = he["[object DataView]"] = he["[object Date]"] = he["[object Error]"] = he["[object Function]"] = he["[object Map]"] = he["[object Number]"] = he["[object Object]"] = he["[object RegExp]"] = he["[object Set]"] = he["[object String]"] = he["[object WeakMap]"] = !1;
    var me = "object" == typeof e && e && !e.nodeType && e,
        ve = me && "object" == typeof module && module && !module.nodeType && module,
        ge = ve && ve.exports === me && t.process, ye = function () {
            try {
                var e = ve && ve.require && ve.require("util").types;
                return e || ge && ge.binding && ge.binding("util")
            } catch (e) {
            }
        }(), be = ye && ye.isTypedArray, _e = be ? function (e) {
            return function (t) {
                return e(t)
            }
        }(be) : function (e) {
            return p(e) && ee(e.length) && !!he[d(e)]
        }, ke = Object.prototype.hasOwnProperty;

    function we(e, t) {
        var n = f(e), r = !n && ue(e), o = !n && !r && fe(e), i = !n && !r && !o && _e(e), a = n || r || o || i,
            c = a ? function (e, t) {
                for (var n = -1, r = Array(e); ++n < e;) r[n] = t(n);
                return r
            }(e.length, String) : [], s = c.length;
        for (var u in e) !t && !ke.call(e, u) || a && ("length" == u || o && ("offset" == u || "parent" == u) || i && ("buffer" == u || "byteLength" == u || "byteOffset" == u) || X(u, s)) || c.push(u);
        return c
    }

    function Se(e, t) {
        return function (n) {
            return e(t(n))
        }
    }

    var xe = Se(Object.keys, Object), Oe = Object.prototype.hasOwnProperty;

    function Ae(e) {
        return te(e) ? we(e) : function (e) {
            if (!oe(e)) return xe(e);
            var t = [];
            for (var n in Object(e)) Oe.call(e, n) && "constructor" != n && t.push(n);
            return t
        }(e)
    }

    var Te = Object.prototype.hasOwnProperty;

    function je(e) {
        if (!g(e)) return function (e) {
            var t = [];
            if (null != e) for (var n in Object(e)) t.push(n);
            return t
        }(e);
        var t = oe(e), n = [];
        for (var r in e) ("constructor" != r || !t && Te.call(e, r)) && n.push(r);
        return n
    }

    function Ce(e) {
        return te(e) ? we(e, !0) : je(e)
    }

    var Ie, Pe = (Ie = function (e, t) {
            !function (e, t, n, r) {
                var o = !n;
                n || (n = {});
                for (var i = -1, a = t.length; ++i < a;) {
                    var c = t[i], s = r ? r(n[c], e[c], c, n, e) : void 0;
                    void 0 === s && (s = e[c]), o ? $(n, c, s) : Y(n, c, s)
                }
            }(t, Ce(t), e)
        }, Z((function (e, t) {
            var n = -1, r = t.length, o = r > 1 ? t[r - 1] : void 0, i = r > 2 ? t[2] : void 0;
            for (o = Ie.length > 3 && "function" == typeof o ? (r--, o) : void 0, i && ne(t[0], t[1], i) && (o = r < 3 ? void 0 : o, r = 1), e = Object(e); ++n < r;) {
                var a = t[n];
                a && Ie(e, a, n, o)
            }
            return e
        }))), Fe = Se(Object.getPrototypeOf, Object), Be = Function.prototype, Ee = Object.prototype, Le = Be.toString,
        Ue = Ee.hasOwnProperty, Re = Le.call(Object);
    var ze, Me = function (e, t, n) {
        for (var r = -1, o = Object(e), i = n(e), a = i.length; a--;) {
            var c = i[ze ? a : ++r];
            if (!1 === t(o[c], c, o)) break
        }
        return e
    };
    var De = function (e, t) {
        return function (n, r) {
            if (null == n) return n;
            if (!te(n)) return e(n, r);
            for (var o = n.length, i = t ? o : -1, a = Object(n); (t ? i-- : ++i < o) && !1 !== r(a[i], i, a);) ;
            return n
        }
    }((function (e, t) {
        return e && Me(e, t, Ae)
    })), qe = Object.prototype, Ne = qe.hasOwnProperty, Ke = Z((function (e, t) {
        e = Object(e);
        var n = -1, r = t.length, o = r > 2 ? t[2] : void 0;
        for (o && ne(t[0], t[1], o) && (r = 1); ++n < r;) for (var i = t[n], a = Ce(i), c = -1, s = a.length; ++c < s;) {
            var u = a[c], l = e[u];
            (void 0 === l || G(l, qe[u]) && !Ne.call(e, u)) && (e[u] = i[u])
        }
        return e
    }));

    function He(e, t) {
        var n;
        return (f(e) ? W : De)(e, "function" == typeof (n = t) ? n : O)
    }

    function We(e) {
        return "string" == typeof e || !f(e) && p(e) && "[object String]" == d(e)
    }

    function Je(e) {
        return !0 === e || !1 === e || p(e) && "[object Boolean]" == d(e)
    }

    function Xe(e) {
        return p(e) && 1 === e.nodeType && !function (e) {
            if (!p(e) || "[object Object]" != d(e)) return !1;
            var t = Fe(e);
            if (null === t) return !0;
            var n = Ue.call(t, "constructor") && t.constructor;
            return "function" == typeof n && n instanceof n && Le.call(n) == Re
        }(e)
    }

    function $e(e) {
        return "number" == typeof e && e == x(e)
    }

    function Ge(e) {
        return "number" == typeof e || p(e) && "[object Number]" == d(e)
    }

    function Ve(e) {
        return function (t) {
            return Object.prototype.toString.call(t) === "[object ".concat(e, "]")
        }
    }

    function Ye(e) {
        return Ve("Blob")(e)
    }

    function Qe(e) {
        return Ve("File")(e)
    }

    function Ze(e) {
        return Ve("FileList")(e)
    }

    function et(e, t) {
        return Array.prototype.slice.call(e).map(t)
    }

    function tt(e, t) {
        return Array.prototype.slice.call(e).every(t)
    }

    function nt(e, t) {
        return [e, t].reduce((function (e, t) {
            return e.filter((function (e) {
                return -1 === t.indexOf(e)
            }))
        }))
    }

    function rt(e) {
        return Object.keys(e || {})
    }

    function ot() {
    }

    function it() {
        return Math.random().toString(36).slice(2)
    }

    function at(e) {
        return Xe(e) ? e : We(e) ? document.querySelector(e) : null
    }

    function ct(e, t, n) {
        e.addEventListener && e.addEventListener(t, n, !1)
    }

    function st(e, t, n) {
        e.removeEventListener && e.removeEventListener(t, n, !1)
    }

    function ut(e) {
        var t = !(arguments.length > 1 && void 0 !== arguments[1]) || arguments[1],
            n = t ? encodeURIComponent : function (e) {
                return e
            }, r = et(rt(e), (function (t) {
                var r = e[t];
                return n(t) + "=" + n(g(r) ? JSON.stringify(r) : r)
            }));
        return r.join("&")
    }

    function lt(e) {
        if (!f(e)) throw new Error("elements should be an Array");
        return function (t) {
            return e.indexOf(t) > -1
        }
    }

    function dt(e) {
        if (!f(e)) throw new Error("validators should be an Array");
        return function (t) {
            return e.some((function (e) {
                return e(t)
            }))
        }
    }

    var pt = function () {
        var e = {
            _data: {}, setItem: function (e, t) {
                return this._data[e] = String(t)
            }, getItem: function (e) {
                return this._data.hasOwnProperty(e) ? this._data[e] : null
            }, removeItem: function (e) {
                return delete this._data[e]
            }, clear: function () {
                return this._data = {}
            }
        };
        try {
            return "localStorage" in window && null !== window.localStorage ? (window.localStorage.setItem("store", ""), window.localStorage.removeItem("store"), window.localStorage) : e
        } catch (t) {
            return e
        }
    }();

    function ft(e, t) {
        var n = Object.keys(e);
        if (Object.getOwnPropertySymbols) {
            var r = Object.getOwnPropertySymbols(e);
            t && (r = r.filter((function (t) {
                return Object.getOwnPropertyDescriptor(e, t).enumerable
            }))), n.push.apply(n, r)
        }
        return n
    }

    function ht(e) {
        for (var t = 1; t < arguments.length; t++) {
            var n = null != arguments[t] ? arguments[t] : {};
            t % 2 ? ft(Object(n), !0).forEach((function (t) {
                yt(e, t, n[t])
            })) : Object.getOwnPropertyDescriptors ? Object.defineProperties(e, Object.getOwnPropertyDescriptors(n)) : ft(Object(n)).forEach((function (t) {
                Object.defineProperty(e, t, Object.getOwnPropertyDescriptor(n, t))
            }))
        }
        return e
    }

    function mt(e) {
        return (mt = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (e) {
            return typeof e
        } : function (e) {
            return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e
        })(e)
    }

    function vt(e, t) {
        if (!(e instanceof t)) throw new TypeError("Cannot call a class as a function")
    }

    function gt(e, t) {
        for (var n = 0; n < t.length; n++) {
            var r = t[n];
            r.enumerable = r.enumerable || !1, r.configurable = !0, "value" in r && (r.writable = !0), Object.defineProperty(e, r.key, r)
        }
    }

    function yt(e, t, n) {
        return t in e ? Object.defineProperty(e, t, {
            value: n,
            enumerable: !0,
            configurable: !0,
            writable: !0
        }) : e[t] = n, e
    }

    function bt(e, t) {
        if ("function" != typeof t && null !== t) throw new TypeError("Super expression must either be null or a function");
        e.prototype = Object.create(t && t.prototype, {
            constructor: {
                value: e,
                writable: !0,
                configurable: !0
            }
        }), t && kt(e, t)
    }

    function _t(e) {
        return (_t = Object.setPrototypeOf ? Object.getPrototypeOf : function (e) {
            return e.__proto__ || Object.getPrototypeOf(e)
        })(e)
    }

    function kt(e, t) {
        return (kt = Object.setPrototypeOf || function (e, t) {
            return e.__proto__ = t, e
        })(e, t)
    }

    function wt(e, t) {
        return !t || "object" != typeof t && "function" != typeof t ? function (e) {
            if (void 0 === e) throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
            return e
        }(e) : t
    }

    function St(e) {
        var t = function () {
            if ("undefined" == typeof Reflect || !Reflect.construct) return !1;
            if (Reflect.construct.sham) return !1;
            if ("function" == typeof Proxy) return !0;
            try {
                return Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], (function () {
                }))), !0
            } catch (e) {
                return !1
            }
        }();
        return function () {
            var n, r = _t(e);
            if (t) {
                var o = _t(this).constructor;
                n = Reflect.construct(r, arguments, o)
            } else n = r.apply(this, arguments);
            return wt(this, n)
        }
    }

    function xt(e, t) {
        return function (e) {
            if (Array.isArray(e)) return e
        }(e) || function (e, t) {
            var n = null == e ? null : "undefined" != typeof Symbol && e[Symbol.iterator] || e["@@iterator"];
            if (null == n) return;
            var r, o, i = [], a = !0, c = !1;
            try {
                for (n = n.call(e); !(a = (r = n.next()).done) && (i.push(r.value), !t || i.length !== t); a = !0) ;
            } catch (e) {
                c = !0, o = e
            } finally {
                try {
                    a || null == n.return || n.return()
                } finally {
                    if (c) throw o
                }
            }
            return i
        }(e, t) || At(e, t) || function () {
            throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")
        }()
    }

    function Ot(e) {
        return function (e) {
            if (Array.isArray(e)) return Tt(e)
        }(e) || function (e) {
            if ("undefined" != typeof Symbol && null != e[Symbol.iterator] || null != e["@@iterator"]) return Array.from(e)
        }(e) || At(e) || function () {
            throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")
        }()
    }

    function At(e, t) {
        if (e) {
            if ("string" == typeof e) return Tt(e, t);
            var n = Object.prototype.toString.call(e).slice(8, -1);
            return "Object" === n && e.constructor && (n = e.constructor.name), "Map" === n || "Set" === n ? Array.from(e) : "Arguments" === n || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n) ? Tt(e, t) : void 0
        }
    }

    function Tt(e, t) {
        (null == t || t > e.length) && (t = e.length);
        for (var n = 0, r = new Array(t); n < t; n++) r[n] = e[n];
        return r
    }

    var jt = function () {
        function e(e) {
            var n = {},
                r = /(dolfin)[ \/]([\w.]+)/.exec(e) || /(edge)[ \/]([\w.]+)/.exec(e) || /(chrome)[ \/]([\w.]+)/.exec(e) || /(tizen)[ \/]([\w.]+)/.exec(e) || /(opera)(?:.*version)?[ \/]([\w.]+)/.exec(e) || /(webkit)(?:.*version)?[ \/]([\w.]+)/.exec(e) || /(msie) ([\w.]+)/.exec(e) || e.indexOf("compatible") < 0 && /(mozilla)(?:.*? rv:([\w.]+))?/.exec(e) || ["", "unknown"];
            return "webkit" === r[1] ? r = /(iphone|ipad|ipod)[\S\s]*os ([\w._\-]+) like/.exec(e) || /(android)[ \/]([\w._\-]+);/.exec(e) || [r[0], "safari", r[2]] : "mozilla" === r[1] ? /trident/.test(e) ? r[1] = "msie" : r[1] = "firefox" : /polaris|natebrowser|([010|011|016|017|018|019]{3}\d{3,4}\d{4}$)/.test(e) && (r[1] = "polaris"), n[r[1]] = !0, n.name = r[1], n.version = t(r[2]), n
        }

        function t(e) {
            var t = {}, n = e ? e.split(/\.|-|_/) : ["0", "0", "0"];
            return t.info = n.join("."), t.major = n[0] || "0", t.minor = n[1] || "0", t.patch = n[2] || "0", t
        }

        function n(e) {
            return function (e) {
                if (e.match(/ipad/) || e.match(/android/) && !e.match(/mobi|mini|fennec/) || e.match(/macintosh/) && window.navigator.maxTouchPoints > 1) return !0;
                return !1
            }(e) ? "tablet" : function (e) {
                if (e.match(/linux|windows (nt|98)|macintosh|cros/) && !e.match(/android|mobile|polaris|lgtelecom|uzard|natebrowser|ktf;|skt;/)) return !0;
                return !1
            }(e) ? "pc" : function (e) {
                return !!e.match(/ip(hone|od)|android.+mobile|windows (ce|phone)|blackberry|bb10|symbian|webos|firefox.+fennec|opera m(ob|in)i|tizen.+mobile|polaris|iemobile|lgtelecom|nokia|sonyericsson|dolfin|uzard|natebrowser|ktf;|skt;/)
            }(e) ? "mobile" : ""
        }

        function r(e) {
            var n = {},
                r = /(iphone|ipad|ipod)[\S\s]*os ([\w._\-]+) like/.exec(e) || !!/polaris|natebrowser|([010|011|016|017|018|019]{3}\d{3,4}\d{4}$)/.test(e) && ["", "polaris", "0.0.0"] || /(windows)(?: nt | phone(?: os){0,1} | )([\w._\-]+)/.exec(e) || /(android)[ \/]([\w._\-]+);/.exec(e) || !!/android/.test(e) && ["", "android", "0.0.0"] || !!/(windows)/.test(e) && ["", "windows", "0.0.0"] || /(mac) os x ([\w._\-]+)/.exec(e) || /(tizen)[ \/]([\w._\-]+);/.exec(e) || !!/(linux)/.test(e) && ["", "linux", "0.0.0"] || !!/webos/.test(e) && ["", "webos", "0.0.0"] || /(cros)(?:\s[\w]+\s)([\d._\-]+)/.exec(e) || /(bada)[ \/]([\w._\-]+)/.exec(e) || !!/bada/.test(e) && ["", "bada", "0.0.0"] || !!/(rim|blackberry|bb10)/.test(e) && ["", "blackberry", "0.0.0"] || ["", "unknown", "0.0.0"];
            return "iphone" === r[1] || "ipad" === r[1] || "ipod" === r[1] ? r[1] = "ios" : "windows" === r[1] && "98" === r[2] && (r[2] = "0.98.0"), "mac" === r[1] && "undefined" != typeof window && window.navigator.maxTouchPoints > 1 && (r[1] = "ios"), "cros" === r[1] && (r[1] = "chrome"), n[r[1]] = !0, n.name = r[1], n.version = t(r[2]), n
        }

        Array.isArray || (Array.isArray = function (e) {
            return "[object Array]" === Object.prototype.toString.call(e)
        });
        var o = ["crios", "fxios", "daumapps"];

        function i(e, n) {
            var r = {}, i = null, a = o;
            Array.isArray(n) ? a = o.concat(n) : "string" == typeof n && (a = o.concat([n]));
            for (var c = 0, s = a.length; c < s; c += 1) {
                var u = a[c];
                if (i = new RegExp("(" + u + ")[ \\/]([\\w._\\-]+)").exec(e)) break
            }
            return i || (i = ["", ""]), i[1] ? (r.isApp = !0, r.name = i[1], r.version = t(i[2])) : r.isApp = !1, r
        }

        return function (t, o) {
            var a = function (e) {
                return e ? e.toLowerCase() : "undefined" != typeof window && window.navigator && "string" == typeof window.navigator.userAgent ? window.navigator.userAgent.toLowerCase() : ""
            }(t);
            return {ua: a, browser: e(a), platform: n(a), os: r(a), app: i(a, o)}
        }
    }(), Ct = jt();
    var It, Pt, Ft, Bt, Et = "https://kauth.kakao.com", Lt = "https://story.kakao.com", Ut = "kakaonavi-sdk://",
        Rt = "https://developers.kakao.com",
        zt = (It = location, Pt = It.protocol, Ft = It.hostname, Bt = It.port, "".concat(Pt, "//").concat(Ft).concat(Bt ? ":" + Bt : "")),
        Mt = Ct, Dt = /KAKAOTALK/i.test(Mt.ua), qt = "1.40.14".concat(""), Nt = navigator,
        Kt = ["sdk/".concat(qt), "os/javascript", "sdk_type/javascript", "lang/".concat(Nt.userLanguage || Nt.language), "device/".concat(Nt.platform.replace(/ /g, "_")), "origin/".concat(encodeURIComponent(zt))].join(" "),
        Ht = {
            authDomain: Et,
            authorize: "".concat(Et, "/oauth/authorize"),
            loginWidget: "".concat(Et, "/public/widget/login/kakaoLoginWidget.html"),
            redirectUri: "JS-SDK",
            universalKakaoLink: "".concat("https://talk-apps.kakao.com", "/scheme/"),
            talkLoginScheme: "kakaokompassauth://authorize",
            talkLoginRedirectUri: "https://kapi.kakao.com/cors/afterlogin.html",
            talkInappScheme: "kakaotalk://inappbrowser",
            talkSyncpluginScheme: "kakaotalk://bizplugin?plugin_id=6011263b74fc2b49c73a7298",
            apiRemote: "".concat("https://kapi.kakao.com", "/cors/"),
            sharerDomain: "https://sharer.kakao.com",
            pickerDomain: "https://friend-picker.kakao.com",
            appsDomain: "https://apps.kakao.com",
            talkLinkScheme: "kakaolink://send",
            talkAndroidPackage: "com.kakao.talk",
            channel: "https://pf.kakao.com",
            channelIcon: "".concat(Rt, "/assets/img/about/logos"),
            storyShare: "".concat(Lt, "/s/share"),
            storyChannelFollow: "".concat(Lt, "/s/follow"),
            storyIcon: "".concat(Rt, "/sdk/js/resources/story/icon_small.png"),
            storyPostScheme: "storylink://posting",
            naviStartScheme: "".concat(Ut, "navigate"),
            naviShareScheme: "".concat(Ut, "sharePoi"),
            naviWeb: "https://kakaonavi-wguide.kakao.com/openapi"
        }, Wt = null;

    function Jt() {
        return Wt
    }

    function Xt(e) {
        Wt = e
    }

    function $t(e) {
        Error.prototype.constructor.apply(this, arguments), this.name = "KakaoError", this.message = e
    }

    function Gt(e) {
        return Pe.apply(void 0, [{
            cleanup: function () {
                He(e, (function (e) {
                    return e.cleanup && e.cleanup()
                }))
            }
        }].concat(Ot(e)))
    }

    function Vt(e) {
        He(e, (function (e) {
            e()
        })), e.length = 0
    }

    function Yt(e, t, n) {
        if (!1 === t(e)) throw new $t("Illegal argument for ".concat(n))
    }

    function Qt() {
        var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {},
            t = arguments.length > 1 ? arguments[1] : void 0, n = arguments.length > 2 ? arguments[2] : void 0;
        if (!g(e)) throw new Error("params should be an Object");
        A(t.before) && t.before(e), A(t.defaults) ? Ke(e, t.defaults(e)) : Ke(e, t.defaults);
        var r = t.required, o = void 0 === r ? {} : r, i = t.optional, a = void 0 === i ? {} : i, c = nt(rt(o), rt(e));
        if (c.length > 0) throw new $t("Missing required keys: ".concat(c.join(","), " at ").concat(n));
        var s = Pe({}, o, a), u = nt(rt(e), rt(s));
        if (u.length > 0) throw new $t("Invalid parameter keys: ".concat(u.join(","), " at ").concat(n));
        return He(e, (function (e, t) {
            Yt(e, s[t], '"'.concat(t, '" in ').concat(n))
        })), A(t.after) && t.after(e), e
    }

    function Zt() {
        return (Math.random().toString(36).slice(2) + Jt() + Date.now().toString(36)).slice(0, 60)
    }

    function en(e, t) {
        if (Mt.os.android) {
            var n = JSON.stringify({appKey: Wt, KA: Kt});
            return "market://details?id=".concat(e, "&referrer=").concat(n)
        }
        return Mt.os.ios ? "https://itunes.apple.com/app/id".concat(t) : location.href
    }

    function tn(e) {
        try {
            return e()
        } catch (e) {
            throw e instanceof TypeError ? new $t("kakao.js should be loaded from a web server") : new $t("EasyXDM - ".concat(e.message))
        }
    }

    $t.prototype = new Error;
    var nn = {};

    function rn(e, t, n) {
        var r = nn[t];
        return r && r.close && !r.closed && r.close(), nn[t] = window.open(e, t, n), nn[t]
    }

    function on(e, t, n) {
        He(n, (function (n, r) {
            var o = t.getAttribute(n);
            null !== o && (e[r] = "true" === o || "false" === o ? "true" === o : o)
        }))
    }

    function an(e, t, n) {
        var r = document.createElement("iframe");
        r.id = r.name = e, r.src = t, r.setAttribute("style", "border:none; width:0; height:0; display:none; overflow:hidden;"), document.body.appendChild(r), n.push((function () {
            document.body.removeChild(r)
        }))
    }

    function cn(e, t, n) {
        var r = function (n) {
            var r = n.data, o = n.origin;
            if (r && o === t) {
                var i = JSON.parse(r);
                i.code ? e.fail(i) : e.success(i), e.always(i)
            }
        };
        ct(window, "message", r), n.push((function () {
            st(window, "message", r)
        }))
    }

    function sn(e, t) {
        var n = t.url, r = t.popupName, o = t.popupFeatures, i = Mt.browser.msie ? {} : rn("", r, o);
        return i.focus && i.focus(), un(e, n, r), i
    }

    function un(e, t) {
        var n = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : "", r = document.createElement("form");
        r.setAttribute("accept-charset", "utf-8"), r.setAttribute("method", "post"), r.setAttribute("action", t), r.setAttribute("target", n), r.setAttribute("style", "display:none"), He(e, (function (e, t) {
            var n = document.createElement("input");
            n.type = "hidden", n.name = t, n.value = We(e) ? e : JSON.stringify(e), r.appendChild(n)
        })), document.body.appendChild(r), r.submit(), document.body.removeChild(r)
    }

    var ln = {};
    var dn = {
            subscribe: function (e, t) {
                ln[e] = ln[e] || [], ln[e].push(t)
            }, unsubscribe: function (e, t) {
                for (var n = ln[e], r = 0; r < n.length; r++) if (n[r] === t) return void n.splice(r, 1)
            }, dispatch: function (e) {
                He(ln[e], (function (e) {
                    e()
                }))
            }
        }, pn = function () {
            function e(t, n) {
                vt(this, e), this._interval = t, this._maxCount = n, this._count = 0, this._stopped = !1, this._timeout = null
            }

            var t, n, r;
            return t = e, (n = [{
                key: "start", value: function (e, t) {
                    this._count = 0, this._stopped = !1, this._doPolling(e, t)
                }
            }, {
                key: "_doPolling", value: function (e, t) {
                    var n = this;
                    this._stopped || (this._timeout = setTimeout((function () {
                        ++n._count > n._maxCount ? t() : (e(), n._doPolling(e, t))
                    }), this._interval))
                }
            }, {
                key: "stop", value: function () {
                    this._stopped = !0, clearTimeout(this._timeout)
                }
            }]) && gt(t.prototype, n), r && gt(t, r), e
        }(), fn = {success: ot, fail: ot, always: ot},
        hn = Pe({throughTalk: !0, persistAccessToken: !0, persistRefreshToken: !1}, fn), mn = {
            success: A,
            fail: A,
            always: A,
            persistAccessToken: Je,
            persistRefreshToken: Je,
            approvalType: lt(["project"]),
            scope: We,
            throughTalk: Je,
            plusFriendPublicId: We,
            channelPublicId: We,
            serviceTerms: We,
            redirectUri: We,
            state: We,
            deviceType: lt(["watch", "tv"])
        }, vn = {
            createLoginButton: {
                required: {container: dt([Xe, We])},
                optional: Pe({lang: lt(["en", "kr"]), size: lt(["small", "medium", "large"])}, mn),
                defaults: Pe({lang: "kr", size: "medium"}, hn)
            },
            login: {optional: mn, defaults: hn},
            authorize: {
                optional: {
                    redirectUri: We,
                    approvalType: lt(["project"]),
                    scope: We,
                    throughTalk: Je,
                    plusFriendPublicId: We,
                    channelPublicId: We,
                    serviceTerms: We,
                    isPopup: Je,
                    state: We,
                    autoLogin: Je,
                    deviceType: lt(["watch", "tv"]),
                    prompts: We,
                    reauthenticate: Je,
                    throughSyncplugin: Je,
                    success: A,
                    fail: A,
                    always: A
                },
                defaults: {
                    throughTalk: !0,
                    isPopup: !1,
                    reauthenticate: !1,
                    throughSyncplugin: !0,
                    success: ot,
                    fail: ot,
                    always: ot
                }
            },
            autoLogin: {optional: {success: A, fail: A, always: A}, defaults: fn},
            issueAccessToken: {
                required: {code: We, redirectUri: We},
                optional: {success: A, fail: A, always: A},
                defaults: fn
            },
            selectShippingAddress: {
                optional: {success: A, fail: A, always: A, returnUrl: We},
                defaults: {success: ot, fail: ot, always: ot}
            },
            updateShippingAddress: {
                required: {addressId: $e},
                optional: {success: A, fail: A, always: A, returnUrl: We},
                defaults: {success: ot, fail: ot, always: ot}
            }
        };

    function gn(e) {
        var t, n, r, o, i, a;
        return rn(e, "_blank", (t = 480, n = 700, r = window.screenLeft ? window.screenLeft : window.screenX ? window.screenX : 0, o = window.screenTop ? window.screenTop : window.screenY ? window.screenY : 0, i = screen.width / 2 - t / 2 + r, a = screen.height / 2 - n / 2 + o, ["width=".concat(t), "height=".concat(n), "left=".concat(i), "top=".concat(a), "scrollbars=yes", "resizable=1"].join(",")))
    }

    function yn(e) {
        return "".concat(Ht.authorize, "?").concat(ut(e))
    }

    function bn(e) {
        var t = {client_id: Jt()};
        return e.approvalType && (t.approval_type = e.approvalType), e.scope && (t.scope = e.scope), e.state && (t.state = e.state), t
    }

    function _n(e) {
        var t = {};
        return e.plusFriendPublicId && (t["extra.plus_friend_public_id"] = e.plusFriendPublicId), e.channelPublicId && (t.channel_public_id = e.channelPublicId), e.serviceTerms && (t["extra.service_terms"] = e.serviceTerms), e.autoLogin && (t.prompt = "none"), e.reauthenticate && (t.prompt = "login"), e.prompts && (t.prompt = e.prompts), e.deviceType && (t.device_type = e.deviceType), t
    }

    function kn(e, t) {
        t.error ? e.fail(t) : e.success(t), e.always(t)
    }

    function wn(e, t) {
        !function (e, t) {
            var n = e.url, r = e.method, o = e.data, i = new XMLHttpRequest;
            if (void 0 !== i.withCredentials) i.open(r, n), i.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"), i.onreadystatechange = function () {
                i.readyState === XMLHttpRequest.DONE && 200 === i.status && t(i)
            }, i.send(o); else {
                var a = new XDomainRequest;
                a.open(r.toLowerCase(), n), a.onload = function () {
                    t({status: a.responseText ? 200 : "error", response: a.responseText})
                }, setTimeout((function () {
                    a.send(o)
                }), 0)
            }
        }({method: "GET", url: e}, t)
    }

    var Sn = new pn(1e3, 600);

    function xn(e, t) {
        e.state && (t.state = e.state), e.redirectUri ? location.href = "".concat(e.redirectUri, "?").concat(ut(t)) : kn(e, t)
    }

    var On = Object.freeze({
        __proto__: null, authorize: function (e) {
            if ((e = Qt(e, vn.authorize, "Auth.authorize")).autoLogin && !Dt) return xn(e, {
                error: "auto_login",
                error_description: "NOT_SUPPORTED_BROWSER"
            }), !1;
            var t = Zt(), n = Pe({}, bn(e), _n(e), {
                redirect_uri: e.redirectUri || Ht.redirectUri,
                response_type: "code",
                auth_tran_id: t
            }), r = Pe({}, n, {ka: Kt, is_popup: e.isPopup}), o = function (e) {
                var t = !(!Mt.os.ios && !Mt.os.android) && Dt,
                    n = !0 === e.reauthenticate || e.prompts && e.prompts.indexOf("login") > -1,
                    r = !0 === e.autoLogin || e.prompts && e.prompts.indexOf("none") > -1;
                return !t && !n && !0 === e.throughTalk && !r
            }(e), i = function (e) {
                return e.throughSyncplugin && Dt && /ch-home/i.test(Mt.ua)
            }(e), a = yn(r), c = o ? function (e, t, n) {
                var r = Pe({}, t, {is_popup: !0}), o = function () {
                    var t = ["intent:#Intent", "action=com.kakao.talk.intent.action.CAPRI_LOGGED_IN_ACTIVITY", "launchFlags=0x08880000", "S.com.kakao.sdk.talk.appKey=".concat(Jt()), "S.com.kakao.sdk.talk.redirectUri=".concat(r.redirect_uri), "S.com.kakao.sdk.talk.kaHeader=".concat(Kt), "S.com.kakao.sdk.talk.extraparams=".concat(encodeURIComponent(JSON.stringify(r)))];
                    return e.state && t.push("S.com.kakao.sdk.talk.state=".concat(e.state)), t.concat(["S.browser_fallback_url=".concat(encodeURIComponent(n)), "end;"]).join(";")
                }, i = function () {
                    var t = yn(r), o = e.isPopup ? t : n, i = "".concat(t, "&ka=").concat(encodeURIComponent(Kt)),
                        a = "".concat(Ht.talkInappScheme, "?url=").concat(encodeURIComponent(i));
                    return "".concat(Ht.universalKakaoLink).concat(encodeURIComponent(a), "&web=").concat(encodeURIComponent(o))
                };
                return Mt.os.android ? o() : i()
            }(e, n, a) : a, s = null;
            i ? function (e) {
                var t = Pe({}, e, {ka: Kt, is_popup: !0, approval_window_type: "v4_bizplugin"}),
                    n = encodeURIComponent(ut(t));
                location.href = "".concat(Ht.talkSyncpluginScheme, "&query=").concat(n)
            }(n) : e.isPopup ? s = gn(c) : location.href = c, (o || i || e.isPopup) && Sn.start((function () {
                var n = {client_id: Jt(), auth_tran_id: t, ka: Kt};
                wn("".concat(Ht.authDomain, "/apiweb/code.json?").concat(ut(n)), (function (t) {
                    (function (e, t) {
                        if (200 === t.status && t.response) {
                            var n = JSON.parse(t.response);
                            if ("ok" === n.status && n.code) return xn(e, {code: n.code}), !0;
                            if ("error" === n.status && n.error_code && "300" !== n.error_code) return xn(e, {
                                error: n.error,
                                error_description: n.error_description
                            }), "700" === n.error_code && (location.href = "".concat(Ht.authDomain, "/error/network")), !0
                        }
                        return !1
                    })(e, t) && (Sn.stop(), s && s.close && s.close()), !o && s && s.closed && Sn.stop()
                }))
            }), (function () {
                xn(e, {error: "timeout", error_description: "LOGIN_TIMEOUT"})
            })), dn.dispatch("LOGIN_START")
        }
    });

    function An() {
        return Mt.os.android && (2 == Mt.os.version.major && /Version\/\d+.\d+|/i.test(Mt.ua) || 4 == Mt.os.version.major && Mt.os.version.minor < 4 && /Version\/\d+.\d+|/i.test(Mt.ua) || /Version\/\d+\.\d+/i.test(Mt.ua) && (/Chrome\/\d+\.\d+\.\d+\.\d+ Mobile/i.test(Mt.ua) || /; wv\)/i.test(Mt.ua)))
    }

    function Tn() {
        return Mt.os.ios && Dt
    }

    var jn = "undefined" != typeof globalThis ? globalThis : "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : {};
    var Cn = function (e) {
            var t = {exports: {}};
            return e(t, t.exports), t.exports
        }((function (e, t) {
            e.exports = function () {
                function e(e) {
                    var t = typeof e;
                    return null !== e && ("object" === t || "function" === t)
                }

                function t(e) {
                    return "function" == typeof e
                }

                var n = Array.isArray ? Array.isArray : function (e) {
                    return "[object Array]" === Object.prototype.toString.call(e)
                }, r = 0, o = void 0, i = void 0, a = function (e, t) {
                    b[r] = e, b[r + 1] = t, 2 === (r += 2) && (i ? i(_) : w())
                };

                function c(e) {
                    i = e
                }

                function s(e) {
                    a = e
                }

                var u = "undefined" != typeof window ? window : void 0, l = u || {},
                    d = l.MutationObserver || l.WebKitMutationObserver,
                    p = "undefined" == typeof self && "undefined" != typeof process && "[object process]" === {}.toString.call(process),
                    f = "undefined" != typeof Uint8ClampedArray && "undefined" != typeof importScripts && "undefined" != typeof MessageChannel;

                function h() {
                    return function () {
                        return process.nextTick(_)
                    }
                }

                function m() {
                    return void 0 !== o ? function () {
                        o(_)
                    } : y()
                }

                function v() {
                    var e = 0, t = new d(_), n = document.createTextNode("");
                    return t.observe(n, {characterData: !0}), function () {
                        n.data = e = ++e % 2
                    }
                }

                function g() {
                    var e = new MessageChannel;
                    return e.port1.onmessage = _, function () {
                        return e.port2.postMessage(0)
                    }
                }

                function y() {
                    var e = setTimeout;
                    return function () {
                        return e(_, 1)
                    }
                }

                var b = new Array(1e3);

                function _() {
                    for (var e = 0; e < r; e += 2) (0, b[e])(b[e + 1]), b[e] = void 0, b[e + 1] = void 0;
                    r = 0
                }

                function k() {
                    try {
                        var e = Function("return this")().require("vertx");
                        return o = e.runOnLoop || e.runOnContext, m()
                    } catch (e) {
                        return y()
                    }
                }

                var w = void 0;

                function S(e, t) {
                    var n = this, r = new this.constructor(A);
                    void 0 === r[O] && J(r);
                    var o = n._state;
                    if (o) {
                        var i = arguments[o - 1];
                        a((function () {
                            return N(o, r, i, n._result)
                        }))
                    } else D(n, r, e, t);
                    return r
                }

                function x(e) {
                    var t = this;
                    if (e && "object" == typeof e && e.constructor === t) return e;
                    var n = new t(A);
                    return U(n, e), n
                }

                w = p ? h() : d ? v() : f ? g() : void 0 === u ? k() : y();
                var O = Math.random().toString(36).substring(2);

                function A() {
                }

                var T = void 0, j = 1, C = 2;

                function I() {
                    return new TypeError("You cannot resolve a promise with itself")
                }

                function P() {
                    return new TypeError("A promises callback cannot return that same promise.")
                }

                function F(e, t, n, r) {
                    try {
                        e.call(t, n, r)
                    } catch (e) {
                        return e
                    }
                }

                function B(e, t, n) {
                    a((function (e) {
                        var r = !1, o = F(n, t, (function (n) {
                            r || (r = !0, t !== n ? U(e, n) : z(e, n))
                        }), (function (t) {
                            r || (r = !0, M(e, t))
                        }), "Settle: " + (e._label || " unknown promise"));
                        !r && o && (r = !0, M(e, o))
                    }), e)
                }

                function E(e, t) {
                    t._state === j ? z(e, t._result) : t._state === C ? M(e, t._result) : D(t, void 0, (function (t) {
                        return U(e, t)
                    }), (function (t) {
                        return M(e, t)
                    }))
                }

                function L(e, n, r) {
                    n.constructor === e.constructor && r === S && n.constructor.resolve === x ? E(e, n) : void 0 === r ? z(e, n) : t(r) ? B(e, n, r) : z(e, n)
                }

                function U(t, n) {
                    if (t === n) M(t, I()); else if (e(n)) {
                        var r = void 0;
                        try {
                            r = n.then
                        } catch (e) {
                            return void M(t, e)
                        }
                        L(t, n, r)
                    } else z(t, n)
                }

                function R(e) {
                    e._onerror && e._onerror(e._result), q(e)
                }

                function z(e, t) {
                    e._state === T && (e._result = t, e._state = j, 0 !== e._subscribers.length && a(q, e))
                }

                function M(e, t) {
                    e._state === T && (e._state = C, e._result = t, a(R, e))
                }

                function D(e, t, n, r) {
                    var o = e._subscribers, i = o.length;
                    e._onerror = null, o[i] = t, o[i + j] = n, o[i + C] = r, 0 === i && e._state && a(q, e)
                }

                function q(e) {
                    var t = e._subscribers, n = e._state;
                    if (0 !== t.length) {
                        for (var r = void 0, o = void 0, i = e._result, a = 0; a < t.length; a += 3) r = t[a], o = t[a + n], r ? N(n, r, o, i) : o(i);
                        e._subscribers.length = 0
                    }
                }

                function N(e, n, r, o) {
                    var i = t(r), a = void 0, c = void 0, s = !0;
                    if (i) {
                        try {
                            a = r(o)
                        } catch (e) {
                            s = !1, c = e
                        }
                        if (n === a) return void M(n, P())
                    } else a = o;
                    n._state !== T || (i && s ? U(n, a) : !1 === s ? M(n, c) : e === j ? z(n, a) : e === C && M(n, a))
                }

                function K(e, t) {
                    try {
                        t((function (t) {
                            U(e, t)
                        }), (function (t) {
                            M(e, t)
                        }))
                    } catch (t) {
                        M(e, t)
                    }
                }

                var H = 0;

                function W() {
                    return H++
                }

                function J(e) {
                    e[O] = H++, e._state = void 0, e._result = void 0, e._subscribers = []
                }

                function X() {
                    return new Error("Array Methods must be provided an Array")
                }

                var $ = function () {
                    function e(e, t) {
                        this._instanceConstructor = e, this.promise = new e(A), this.promise[O] || J(this.promise), n(t) ? (this.length = t.length, this._remaining = t.length, this._result = new Array(this.length), 0 === this.length ? z(this.promise, this._result) : (this.length = this.length || 0, this._enumerate(t), 0 === this._remaining && z(this.promise, this._result))) : M(this.promise, X())
                    }

                    return e.prototype._enumerate = function (e) {
                        for (var t = 0; this._state === T && t < e.length; t++) this._eachEntry(e[t], t)
                    }, e.prototype._eachEntry = function (e, t) {
                        var n = this._instanceConstructor, r = n.resolve;
                        if (r === x) {
                            var o = void 0, i = void 0, a = !1;
                            try {
                                o = e.then
                            } catch (e) {
                                a = !0, i = e
                            }
                            if (o === S && e._state !== T) this._settledAt(e._state, t, e._result); else if ("function" != typeof o) this._remaining--, this._result[t] = e; else if (n === ee) {
                                var c = new n(A);
                                a ? M(c, i) : L(c, e, o), this._willSettleAt(c, t)
                            } else this._willSettleAt(new n((function (t) {
                                return t(e)
                            })), t)
                        } else this._willSettleAt(r(e), t)
                    }, e.prototype._settledAt = function (e, t, n) {
                        var r = this.promise;
                        r._state === T && (this._remaining--, e === C ? M(r, n) : this._result[t] = n), 0 === this._remaining && z(r, this._result)
                    }, e.prototype._willSettleAt = function (e, t) {
                        var n = this;
                        D(e, void 0, (function (e) {
                            return n._settledAt(j, t, e)
                        }), (function (e) {
                            return n._settledAt(C, t, e)
                        }))
                    }, e
                }();

                function G(e) {
                    return new $(this, e).promise
                }

                function V(e) {
                    var t = this;
                    return n(e) ? new t((function (n, r) {
                        for (var o = e.length, i = 0; i < o; i++) t.resolve(e[i]).then(n, r)
                    })) : new t((function (e, t) {
                        return t(new TypeError("You must pass an array to race."))
                    }))
                }

                function Y(e) {
                    var t = new this(A);
                    return M(t, e), t
                }

                function Q() {
                    throw new TypeError("You must pass a resolver function as the first argument to the promise constructor")
                }

                function Z() {
                    throw new TypeError("Failed to construct 'Promise': Please use the 'new' operator, this object constructor cannot be called as a function.")
                }

                var ee = function () {
                    function e(t) {
                        this[O] = W(), this._result = this._state = void 0, this._subscribers = [], A !== t && ("function" != typeof t && Q(), this instanceof e ? K(this, t) : Z())
                    }

                    return e.prototype.catch = function (e) {
                        return this.then(null, e)
                    }, e.prototype.finally = function (e) {
                        var n = this, r = n.constructor;
                        return t(e) ? n.then((function (t) {
                            return r.resolve(e()).then((function () {
                                return t
                            }))
                        }), (function (t) {
                            return r.resolve(e()).then((function () {
                                throw t
                            }))
                        })) : n.then(e, e)
                    }, e
                }();

                function te() {
                    var e = void 0;
                    if (void 0 !== jn) e = jn; else if ("undefined" != typeof self) e = self; else try {
                        e = Function("return this")()
                    } catch (e) {
                        throw new Error("polyfill failed because global object is unavailable in this environment")
                    }
                    var t = e.Promise;
                    if (t) {
                        var n = null;
                        try {
                            n = Object.prototype.toString.call(t.resolve())
                        } catch (e) {
                        }
                        if ("[object Promise]" === n && !t.cast) return
                    }
                    e.Promise = ee
                }

                return ee.prototype.then = S, ee.all = G, ee.race = V, ee.resolve = x, ee.reject = Y, ee._setScheduler = c, ee._setAsap = s, ee._asap = a, ee.polyfill = te, ee.Promise = ee, ee
            }()
        })), In = (function (e, t, n, r, o, i) {
            var a, c, s, u, l, d = this || e, p = Math.floor(1e4 * Math.random()), f = Function.prototype,
                h = /^((http.?:)\/\/([^:\/\s]+)(:\d+)*)/, m = /[\-\w]+\/\.\.\//, v = /([^:])\/\//g, g = "", y = {},
                b = e.easyXDM, _ = "easyXDM_", k = !1;

            function w(e, t) {
                var n = mt(e[t]);
                return "function" == n || !("object" != n || !e[t]) || "unknown" == n
            }

            function S() {
                var e, t = "Shockwave Flash", n = "application/x-shockwave-flash";
                if (!E(navigator.plugins) && "object" == mt(navigator.plugins[t])) {
                    var r = navigator.plugins[t].description;
                    r && !E(navigator.mimeTypes) && navigator.mimeTypes[n] && navigator.mimeTypes[n].enabledPlugin && (c = r.match(/\d+/g))
                }
                if (!c) try {
                    e = new ActiveXObject("ShockwaveFlash.ShockwaveFlash"), c = Array.prototype.slice.call(e.GetVariable("$version").match(/(\d+),(\d+),(\d+),(\d+)/), 1), e = null
                } catch (e) {
                }
                if (!c) return !1;
                var o = parseInt(c[0], 10), i = parseInt(c[1], 10);
                return s = o > 9 && i > 0, !0
            }

            if (w(e, "addEventListener")) u = function (e, t, n) {
                e.addEventListener(t, n, !1)
            }, l = function (e, t, n) {
                e.removeEventListener(t, n, !1)
            }; else {
                if (!w(e, "attachEvent")) throw new Error("Browser not supported");
                u = function (e, t, n) {
                    e.attachEvent("on" + t, n)
                }, l = function (e, t, n) {
                    e.detachEvent("on" + t, n)
                }
            }
            var x, O = !1, A = [];

            function T() {
                if (!O) {
                    O = !0;
                    for (var e = 0; e < A.length; e++) A[e]();
                    A.length = 0
                }
            }

            function j(e, t) {
                O ? e.call(t) : A.push((function () {
                    e.call(t)
                }))
            }

            function C(e) {
                return e.match(h)[3]
            }

            function I(e) {
                if (e.indexOf("file://") >= 0) return "file://";
                var t = e.toLowerCase().match(h);
                if (!t) return "";
                var n = t[2], r = t[3], o = t[4] || "";
                return ("http:" == n && ":80" == o || "https:" == n && ":443" == o) && (o = ""), n + "//" + r + o
            }

            function P(e) {
                if (!(e = e.replace(v, "$1/")).match(/^(http||https):\/\//)) {
                    var t = "/" === e.substring(0, 1) ? "" : n.pathname;
                    "/" !== t.substring(t.length - 1) && (t = t.substring(0, t.lastIndexOf("/") + 1)), e = n.protocol + "//" + n.host + t + e
                }
                for (; m.test(e);) e = e.replace(m, "");
                return e
            }

            function F(e, t) {
                var n = "", r = e.indexOf("#");
                -1 !== r && (n = e.substring(r), e = e.substring(0, r));
                var o = [];
                for (var a in t) t.hasOwnProperty(a) && o.push(a + "=" + i(t[a]));
                return e + (k ? "#" : -1 == e.indexOf("?") ? "?" : "&") + o.join("&") + n
            }

            "readyState" in t ? (x = t.readyState, O = "complete" == x || ~navigator.userAgent.indexOf("AppleWebKit/") && ("loaded" == x || "interactive" == x)) : O = !!t.body, O || (w(e, "addEventListener") ? u(t, "DOMContentLoaded", T) : (u(t, "readystatechange", (function () {
                "complete" == t.readyState && T()
            })), t.documentElement.doScroll && e === top && function e() {
                if (!O) {
                    try {
                        t.documentElement.doScroll("left")
                    } catch (t) {
                        return void r(e, 1)
                    }
                    T()
                }
            }()), u(e, "load", T));
            var B = function (e) {
                for (var t, n = {}, r = (e = e.substring(1).split("&")).length; r--;) n[(t = e[r].split("="))[0]] = o(t[1]);
                return n
            }(/xdm_e=/.test(n.search) ? n.search : n.hash);

            function E(e) {
                return void 0 === e
            }

            var L, U = function () {
                var e = {}, t = {a: [1, 2, 3]}, n = '{"a":[1,2,3]}';
                return "undefined" != typeof JSON && "function" == typeof JSON.stringify && JSON.stringify(t).replace(/\s/g, "") === n ? JSON : (Object.toJSON && Object.toJSON(t).replace(/\s/g, "") === n && (e.stringify = Object.toJSON), "function" == typeof String.prototype.evalJSON && (t = n.evalJSON()).a && 3 === t.a.length && 3 === t.a[2] && (e.parse = function (e) {
                    return e.evalJSON()
                }), e.stringify && e.parse ? (U = function () {
                    return e
                }, e) : null)
            };

            function R(e, t, n) {
                var r;
                for (var o in t) t.hasOwnProperty(o) && (o in e ? "object" === mt(r = t[o]) ? R(e[o], r, n) : n || (e[o] = t[o]) : e[o] = t[o]);
                return e
            }

            function z(e) {
                var n;
                E(a) && function () {
                    var e = t.body.appendChild(t.createElement("form")), n = e.appendChild(t.createElement("input"));
                    n.name = _ + "TEST" + p, a = n !== e.elements[n.name], t.body.removeChild(e)
                }(), a ? n = t.createElement('<iframe name="' + e.props.name + '"/>') : (n = t.createElement("IFRAME")).name = e.props.name, n.id = n.name = e.props.name, delete e.props.name, "string" == typeof e.container && (e.container = t.getElementById(e.container)), e.container || (R(n.style, {
                    position: "absolute",
                    top: "-2000px",
                    left: "0px"
                }), e.container = t.body);
                var r = e.props.src;
                if (e.props.src = "javascript:false", R(n, e.props), n.border = n.frameBorder = 0, n.allowTransparency = !0, e.container.appendChild(n), e.onLoad && u(n, "load", e.onLoad), e.usePost) {
                    var o, i = e.container.appendChild(t.createElement("form"));
                    if (i.target = n.name, i.action = r, i.method = "POST", "object" === mt(e.usePost)) for (var c in e.usePost) e.usePost.hasOwnProperty(c) && (a ? o = t.createElement('<input name="' + c + '"/>') : (o = t.createElement("INPUT")).name = c, o.value = e.usePost[c], i.appendChild(o));
                    i.submit(), i.parentNode.removeChild(i)
                } else n.src = r;
                return e.props.src = r, n
            }

            function M(e) {
                return e.replace(/[-[\]/{}()+.\^$|]/g, "\\$&").replace(/(\*)/g, ".$1").replace(/\?/g, ".")
            }

            function D(r) {
                var o, i = r.protocol;
                if (r.isHost = r.isHost || E(B.xdm_p), k = r.hash || !1, r.props || (r.props = {}), r.isHost) r.remote = P(r.remote), r.channel = r.channel || "default" + p++, r.secret = Math.random().toString(16).substring(2), E(i) && (i = I(n.href) == I(r.remote) ? "4" : w(e, "postMessage") || w(t, "postMessage") ? "1" : r.swf && w(e, "ActiveXObject") && S() ? "6" : "Gecko" === navigator.product && "frameElement" in e && -1 == navigator.userAgent.indexOf("WebKit") ? "5" : r.remoteHelper ? "2" : "0"); else if (r.channel = B.xdm_c.replace(/["'<>\\]/g, ""), r.secret = B.xdm_s, r.remote = B.xdm_e.replace(/["'<>\\]/g, ""), i = B.xdm_p, r.acl && !function (e, t) {
                    "string" == typeof e && (e = [e]);
                    for (var n, r = e.length; r--;) if (n = "^" === e[r].substr(0, 1) && "$" === e[r].substr(e[r].length - 1, 1) ? e[r] : "^" + M(e[r]) + "$", (n = new RegExp(n)).test(t)) return !0;
                    return !1
                }(r.acl, r.remote)) throw new Error("Access denied for " + r.remote);
                switch (r.protocol = i, i) {
                    case"0":
                        if (R(r, {interval: 100, delay: 2e3, useResize: !0, useParent: !1, usePolling: !1}, !0), r.isHost) {
                            if (!r.local) {
                                for (var a, s = n.protocol + "//" + n.host, u = t.body.getElementsByTagName("img"), l = u.length; l--;) if ((a = u[l]).src.substring(0, s.length) === s) {
                                    r.local = a.src;
                                    break
                                }
                                r.local || (r.local = e)
                            }
                            var d = {xdm_c: r.channel, xdm_p: 0};
                            r.local === e ? (r.usePolling = !0, r.useParent = !0, r.local = n.protocol + "//" + n.host + n.pathname + n.search, d.xdm_e = r.local, d.xdm_pa = 1) : d.xdm_e = P(r.local), r.container && (r.useResize = !1, d.xdm_po = 1), r.remote = F(r.remote, d)
                        } else R(r, {
                            useParent: !E(B.xdm_pa),
                            usePolling: !E(B.xdm_po),
                            useResize: !r.useParent && r.useResize
                        });
                        o = [new y.stack.HashTransport(r), new y.stack.ReliableBehavior({}), new y.stack.QueueBehavior({
                            encode: !0,
                            maxLength: 4e3 - r.remote.length
                        }), new y.stack.VerifyBehavior({initiate: r.isHost})];
                        break;
                    case"1":
                        o = [new y.stack.PostMessageTransport(r)];
                        break;
                    case"2":
                        r.isHost && (r.remoteHelper = P(r.remoteHelper)), o = [new y.stack.NameTransport(r), new y.stack.QueueBehavior, new y.stack.VerifyBehavior({initiate: r.isHost})];
                        break;
                    case"3":
                        o = [new y.stack.NixTransport(r)];
                        break;
                    case"4":
                        o = [new y.stack.SameOriginTransport(r)];
                        break;
                    case"5":
                        o = [new y.stack.FrameElementTransport(r)];
                        break;
                    case"6":
                        c || S(), o = [new y.stack.FlashTransport(r)]
                }
                return o.push(new y.stack.QueueBehavior({lazy: r.lazy, remove: !0})), o
            }

            function q(e) {
                for (var t, n = {
                    incoming: function (e, t) {
                        this.up.incoming(e, t)
                    }, outgoing: function (e, t) {
                        this.down.outgoing(e, t)
                    }, callback: function (e) {
                        this.up.callback(e)
                    }, init: function () {
                        this.down.init()
                    }, destroy: function () {
                        this.down.destroy()
                    }
                }, r = 0, o = e.length; r < o; r++) R(t = e[r], n, !0), 0 !== r && (t.down = e[r - 1]), r !== o - 1 && (t.up = e[r + 1]);
                return t
            }

            R(y, {
                version: "2.5.00.1",
                query: B,
                stack: {},
                apply: R,
                getJSONObject: U,
                whenReady: j,
                noConflict: function (t) {
                    return e.easyXDM = b, (g = t) && (_ = "easyXDM_" + g.replace(".", "_") + "_"), y
                }
            }), y.DomHelper = {
                on: u, un: l, requiresJSON: function (n) {
                    (function (e, t) {
                        return !("object" != mt(e[t]) || !e[t])
                    })(e, "JSON") || t.write('<script type="text/javascript" src="' + n + '"><\/script>')
                }
            }, L = {}, y.Fn = {
                set: function (e, t) {
                    L[e] = t
                }, get: function (e, t) {
                    if (L.hasOwnProperty(e)) {
                        var n = L[e];
                        return t && delete L[e], n
                    }
                }
            }, y.Socket = function (e) {
                var t = q(D(e).concat([{
                    incoming: function (t, n) {
                        e.onMessage(t, n)
                    }, callback: function (t) {
                        e.onReady && e.onReady(t)
                    }
                }])), n = I(e.remote);
                this.origin = I(e.remote), this.destroy = function () {
                    t.destroy()
                }, this.postMessage = function (e) {
                    t.outgoing(e, n)
                }, t.init()
            }, y.Rpc = function (e, t) {
                if (t.local) for (var n in t.local) if (t.local.hasOwnProperty(n)) {
                    var r = t.local[n];
                    "function" == typeof r && (t.local[n] = {method: r})
                }
                var o = q(D(e).concat([new y.stack.RpcBehavior(this, t), {
                    callback: function (t) {
                        e.onReady && e.onReady(t)
                    }
                }]));
                this.origin = I(e.remote), this.context = e.context || null, this.destroy = function () {
                    o.destroy()
                }, o.init()
            }, y.stack.SameOriginTransport = function (e) {
                var t, o, i, a;
                return t = {
                    outgoing: function (e, t, n) {
                        i(e), n && n()
                    }, destroy: function () {
                        o && (o.parentNode.removeChild(o), o = null)
                    }, onDOMReady: function () {
                        a = I(e.remote), e.isHost ? (R(e.props, {
                            src: F(e.remote, {
                                xdm_e: n.protocol + "//" + n.host + n.pathname,
                                xdm_c: e.channel,
                                xdm_p: 4
                            }), name: _ + e.channel + "_provider"
                        }), o = z(e), y.Fn.set(e.channel, (function (e) {
                            return i = e, r((function () {
                                t.up.callback(!0)
                            }), 0), function (e) {
                                t.up.incoming(e, a)
                            }
                        }))) : (i = function () {
                            var e = parent;
                            if ("" !== g) for (var t = 0, n = g.split("."); t < n.length; t++) e = e[n[t]];
                            return e.easyXDM
                        }().Fn.get(e.channel, !0)((function (e) {
                            t.up.incoming(e, a)
                        })), r((function () {
                            t.up.callback(!0)
                        }), 0))
                    }, init: function () {
                        j(t.onDOMReady, t)
                    }
                }
            }, y.stack.FlashTransport = function (e) {
                var o, a, c, u, l;

                function p(e, t) {
                    r((function () {
                        o.up.incoming(e, c)
                    }), 0)
                }

                function f(n) {
                    var r = e.swf + "?host=" + e.isHost, o = "easyXDM_swf_" + Math.floor(1e4 * Math.random());
                    y.Fn.set("flash_loaded" + n.replace(/[\-.]/g, "_"), (function () {
                        y.stack.FlashTransport[n].swf = u = l.firstChild;
                        for (var e = y.stack.FlashTransport[n].queue, t = 0; t < e.length; t++) e[t]();
                        e.length = 0
                    })), e.swfContainer ? l = "string" == typeof e.swfContainer ? t.getElementById(e.swfContainer) : e.swfContainer : (R((l = t.createElement("div")).style, s && e.swfNoThrottle ? {
                        height: "20px",
                        width: "20px",
                        position: "fixed",
                        right: 0,
                        top: 0
                    } : {
                        height: "1px",
                        width: "1px",
                        position: "absolute",
                        overflow: "hidden",
                        right: 0,
                        top: 0
                    }), t.body.appendChild(l));
                    var a = "callback=flash_loaded" + i(n.replace(/[\-.]/g, "_")) + "&proto=" + d.location.protocol + "&domain=" + i(C(d.location.href)) + "&port=" + i(function (e) {
                        return e.match(h)[4] || ""
                    }(d.location.href)) + "&ns=" + i(g);
                    l.innerHTML = "<object height='20' width='20' type='application/x-shockwave-flash' id='" + o + "' data='" + r + "'><param name='allowScriptAccess' value='always'></param><param name='wmode' value='transparent'><param name='movie' value='" + r + "'></param><param name='flashvars' value='" + a + "'></param><embed type='application/x-shockwave-flash' FlashVars='" + a + "' allowScriptAccess='always' wmode='transparent' src='" + r + "' height='1' width='1'></embed></object>"
                }

                return o = {
                    outgoing: function (t, n, r) {
                        u.postMessage(e.channel, t.toString()), r && r()
                    }, destroy: function () {
                        try {
                            u.destroyChannel(e.channel)
                        } catch (e) {
                        }
                        u = null, a && (a.parentNode.removeChild(a), a = null)
                    }, onDOMReady: function () {
                        c = e.remote, y.Fn.set("flash_" + e.channel + "_init", (function () {
                            r((function () {
                                o.up.callback(!0)
                            }))
                        })), y.Fn.set("flash_" + e.channel + "_onMessage", p), e.swf = P(e.swf);
                        var t = C(e.swf), i = function () {
                            y.stack.FlashTransport[t].init = !0, (u = y.stack.FlashTransport[t].swf).createChannel(e.channel, e.secret, I(e.remote), e.isHost), e.isHost && (s && e.swfNoThrottle && R(e.props, {
                                position: "fixed",
                                right: 0,
                                top: 0,
                                height: "20px",
                                width: "20px"
                            }), R(e.props, {
                                src: F(e.remote, {
                                    xdm_e: I(n.href),
                                    xdm_c: e.channel,
                                    xdm_p: 6,
                                    xdm_s: e.secret
                                }), name: _ + e.channel + "_provider"
                            }), a = z(e))
                        };
                        y.stack.FlashTransport[t] && y.stack.FlashTransport[t].init ? i() : y.stack.FlashTransport[t] ? y.stack.FlashTransport[t].queue.push(i) : (y.stack.FlashTransport[t] = {queue: [i]}, f(t))
                    }, init: function () {
                        j(o.onDOMReady, o)
                    }
                }
            }, y.stack.PostMessageTransport = function (t) {
                var o, i, a, c;

                function s(e) {
                    if ("string" == typeof e.data) {
                        var r = function (e) {
                            if (e.origin) return I(e.origin);
                            if (e.uri) return I(e.uri);
                            if (e.domain) return n.protocol + "//" + e.domain;
                            throw"Unable to retrieve the origin of the event"
                        }(e);
                        r == c && "string" == typeof e.data && e.data.substring(0, t.channel.length + 1) == t.channel + " " && o.up.incoming(e.data.substring(t.channel.length + 1), r)
                    }
                }

                function d(n) {
                    n.data == t.channel + "-ready" && (a = "postMessage" in i.contentWindow ? i.contentWindow : i.contentWindow.document, l(e, "message", d), u(e, "message", s), r((function () {
                        o.up.callback(!0)
                    }), 0))
                }

                return o = {
                    outgoing: function (e, n, r) {
                        a.postMessage(t.channel + " " + e, n || c), r && r()
                    }, destroy: function () {
                        l(e, "message", d), l(e, "message", s), i && (a = null, i.parentNode.removeChild(i), i = null)
                    }, onDOMReady: function () {
                        "file://" === (c = I(t.remote)) && (c = "*"), t.isHost ? (u(e, "message", d), R(t.props, {
                            src: F(t.remote, {
                                xdm_e: I(n.href),
                                xdm_c: t.channel,
                                xdm_p: 1
                            }), name: _ + t.channel + "_provider"
                        }), i = z(t)) : (u(e, "message", s), (a = "postMessage" in e.parent ? e.parent : e.parent.document).postMessage(t.channel + "-ready", c), r((function () {
                            o.up.callback(!0)
                        }), 0))
                    }, init: function () {
                        j(o.onDOMReady, o)
                    }
                }
            }, y.stack.FrameElementTransport = function (o) {
                var i, a, c, s;
                return i = {
                    outgoing: function (e, t, n) {
                        c.call(this, e), n && n()
                    }, destroy: function () {
                        a && (a.parentNode.removeChild(a), a = null)
                    }, onDOMReady: function () {
                        s = I(o.remote), o.isHost ? (R(o.props, {
                            src: F(o.remote, {
                                xdm_e: I(n.href),
                                xdm_c: o.channel,
                                xdm_p: 5
                            }), name: _ + o.channel + "_provider"
                        }), (a = z(o)).fn = function (e) {
                            return delete a.fn, c = e, r((function () {
                                i.up.callback(!0)
                            }), 0), function (e) {
                                i.up.incoming(e, s)
                            }
                        }) : (t.referrer && I(t.referrer) != B.xdm_e && (e.top.location = B.xdm_e), c = e.frameElement.fn((function (e) {
                            i.up.incoming(e, s)
                        })), i.up.callback(!0))
                    }, init: function () {
                        j(i.onDOMReady, i)
                    }
                }
            }, y.stack.NameTransport = function (e) {
                var t, n, o, i, a, c, s, u;

                function d(t) {
                    var r = e.remoteHelper + (n ? "#_3" : "#_2") + e.channel;
                    o.contentWindow.sendMessage(t, r)
                }

                function p() {
                    n ? 2 != ++a && n || t.up.callback(!0) : (d("ready"), t.up.callback(!0))
                }

                function f(e) {
                    t.up.incoming(e, s)
                }

                function h() {
                    c && r((function () {
                        c(!0)
                    }), 0)
                }

                return t = {
                    outgoing: function (e, t, n) {
                        c = n, d(e)
                    }, destroy: function () {
                        o.parentNode.removeChild(o), o = null, n && (i.parentNode.removeChild(i), i = null)
                    }, onDOMReady: function () {
                        n = e.isHost, a = 0, s = I(e.remote), e.local = P(e.local), n ? (y.Fn.set(e.channel, (function (t) {
                            n && "ready" === t && (y.Fn.set(e.channel, f), p())
                        })), u = F(e.remote, {
                            xdm_e: e.local,
                            xdm_c: e.channel,
                            xdm_p: 2
                        }), R(e.props, {
                            src: u + "#" + e.channel,
                            name: _ + e.channel + "_provider"
                        }), i = z(e)) : (e.remoteHelper = e.remote, y.Fn.set(e.channel, f)), o = z({
                            props: {src: e.local + "#_4" + e.channel},
                            onLoad: function t() {
                                var n = o || this;
                                l(n, "load", t), y.Fn.set(e.channel + "_load", h), function e() {
                                    "function" == typeof n.contentWindow.sendMessage ? p() : r(e, 50)
                                }()
                            }
                        })
                    }, init: function () {
                        j(t.onDOMReady, t)
                    }
                }
            }, y.stack.HashTransport = function (t) {
                var n, o, i, a, c, s, u, l, d, p;

                function f() {
                    if (u) {
                        var e = u.location.href, t = "", r = e.indexOf("#");
                        -1 != r && (t = e.substring(r)), t && t != c && function (e) {
                            c = e, n.up.incoming(c.substring(c.indexOf("_") + 1), p)
                        }(t)
                    }
                }

                function h() {
                    i = setInterval(f, a)
                }

                return n = {
                    outgoing: function (e, n) {
                        !function (e) {
                            if (l) {
                                var n = t.remote + "#" + s++ + "_" + e;
                                (o || !d ? l.contentWindow : l).location = n
                            }
                        }(e)
                    }, destroy: function () {
                        e.clearInterval(i), !o && d || l.parentNode.removeChild(l), l = null
                    }, onDOMReady: function () {
                        if (o = t.isHost, a = t.interval, c = "#" + t.channel, s = 0, d = t.useParent, p = I(t.remote), o) {
                            if (R(t.props, {src: t.remote, name: _ + t.channel + "_provider"}), d) t.onLoad = function () {
                                u = e, h(), n.up.callback(!0)
                            }; else {
                                var i = 0, f = t.delay / 50;
                                !function e() {
                                    if (++i > f) throw new Error("Unable to reference listenerwindow");
                                    try {
                                        u = l.contentWindow.frames[_ + t.channel + "_consumer"]
                                    } catch (e) {
                                    }
                                    u ? (h(), n.up.callback(!0)) : r(e, 50)
                                }()
                            }
                            l = z(t)
                        } else u = e, h(), d ? (l = parent, n.up.callback(!0)) : (R(t, {
                            props: {
                                src: t.remote + "#" + t.channel + new Date,
                                name: _ + t.channel + "_consumer"
                            }, onLoad: function () {
                                n.up.callback(!0)
                            }
                        }), l = z(t))
                    }, init: function () {
                        j(n.onDOMReady, n)
                    }
                }
            }, y.stack.ReliableBehavior = function (e) {
                var t, n, r = 0, o = 0, i = "";
                return t = {
                    incoming: function (e, a) {
                        var c = e.indexOf("_"), s = e.substring(0, c).split(",");
                        e = e.substring(c + 1), s[0] == r && (i = "", n && n(!0)), e.length > 0 && (t.down.outgoing(s[1] + "," + r + "_" + i, a), o != s[1] && (o = s[1], t.up.incoming(e, a)))
                    }, outgoing: function (e, a, c) {
                        i = e, n = c, t.down.outgoing(o + "," + ++r + "_" + e, a)
                    }
                }
            }, y.stack.QueueBehavior = function (e) {
                var t, n, a = [], c = !0, s = "", u = 0, l = !1, d = !1;

                function p() {
                    if (e.remove && 0 === a.length) !function (e) {
                        e.up.down = e.down, e.down.up = e.up, e.up = e.down = null
                    }(t); else if (!c && 0 !== a.length && !n) {
                        c = !0;
                        var o = a.shift();
                        t.down.outgoing(o.data, o.origin, (function (e) {
                            c = !1, o.callback && r((function () {
                                o.callback(e)
                            }), 0), p()
                        }))
                    }
                }

                return t = {
                    init: function () {
                        E(e) && (e = {}), e.maxLength && (u = e.maxLength, d = !0), e.lazy ? l = !0 : t.down.init()
                    }, callback: function (e) {
                        c = !1;
                        var n = t.up;
                        p(), n.callback(e)
                    }, incoming: function (n, r) {
                        if (d) {
                            var i = n.indexOf("_"), a = parseInt(n.substring(0, i), 10);
                            s += n.substring(i + 1), 0 === a && (e.encode && (s = o(s)), t.up.incoming(s, r), s = "")
                        } else t.up.incoming(n, r)
                    }, outgoing: function (n, r, o) {
                        e.encode && (n = i(n));
                        var c, s = [];
                        if (d) {
                            for (; 0 !== n.length;) c = n.substring(0, u), n = n.substring(c.length), s.push(c);
                            for (; c = s.shift();) a.push({
                                data: s.length + "_" + c,
                                origin: r,
                                callback: 0 === s.length ? o : null
                            })
                        } else a.push({data: n, origin: r, callback: o});
                        l ? t.down.init() : p()
                    }, destroy: function () {
                        n = !0, t.down.destroy()
                    }
                }
            }, y.stack.VerifyBehavior = function (e) {
                var t, n, r;

                function o() {
                    n = Math.random().toString(16).substring(2), t.down.outgoing(n)
                }

                return t = {
                    incoming: function (i, a) {
                        var c = i.indexOf("_");
                        -1 === c ? i === n ? t.up.callback(!0) : r || (r = i, e.initiate || o(), t.down.outgoing(i)) : i.substring(0, c) === r && t.up.incoming(i.substring(c + 1), a)
                    }, outgoing: function (e, r, o) {
                        t.down.outgoing(n + "_" + e, r, o)
                    }, callback: function (t) {
                        e.initiate && o()
                    }
                }
            }, y.stack.RpcBehavior = function (e, t) {
                var n, r = t.serializer || U(), o = 0, i = {};

                function a(e) {
                    e.jsonrpc = "2.0", n.down.outgoing(r.stringify(e))
                }

                function c(e, t) {
                    var n = Array.prototype.slice;
                    return function () {
                        var r, c = arguments.length, s = {method: t};
                        c > 0 && "function" == typeof arguments[c - 1] ? (c > 1 && "function" == typeof arguments[c - 2] ? (r = {
                            success: arguments[c - 2],
                            error: arguments[c - 1]
                        }, s.params = n.call(arguments, 0, c - 2)) : (r = {success: arguments[c - 1]}, s.params = n.call(arguments, 0, c - 1)), i["" + ++o] = r, s.id = o) : s.params = n.call(arguments, 0), e.namedParams && 1 === s.params.length && (s.params = s.params[0]), a(s)
                    }
                }

                function s(t, n, r, o) {
                    if (r) {
                        var i, c;
                        n ? (i = function (e) {
                            i = f, a({id: n, result: e})
                        }, c = function (e, t) {
                            c = f;
                            var r = {id: n, error: {code: -32099, message: e}};
                            t && (r.error.data = t), a(r)
                        }) : i = c = f, function (e) {
                            return "[object Array]" === Object.prototype.toString.call(e)
                        }(o) || (o = [o]);
                        try {
                            var s = e.context || r.scope, u = r.method.apply(s, o.concat([i, c]));
                            E(u) || i(u)
                        } catch (e) {
                            c(e.message)
                        }
                    } else n && a({id: n, error: {code: -32601, message: "Procedure not found."}})
                }

                return n = {
                    incoming: function (e, n) {
                        var o = r.parse(e);
                        if (o.method) t.handle ? t.handle(o, a) : s(o.method, o.id, t.local[o.method], o.params); else {
                            var c = i[o.id];
                            o.error ? c.error && c.error(o.error) : c.success && c.success(o.result), delete i[o.id]
                        }
                    }, init: function () {
                        if (t.remote) for (var r in t.remote) t.remote.hasOwnProperty(r) && (e[r] = c(t.remote[r], r));
                        n.down.init()
                    }, destroy: function () {
                        for (var r in t.remote) t.remote.hasOwnProperty(r) && e.hasOwnProperty(r) && delete e[r];
                        n.down.destroy()
                    }
                }
            }, d.easyXDM = y
        }(window, document, location, window.setTimeout, decodeURIComponent, encodeURIComponent), easyXDM.noConflict("Kakao")),
        Pn = function () {
            var e, t, n = n || function (e, t) {
                var n = {}, r = n.lib = {}, o = function () {
                }, i = r.Base = {
                    extend: function (e) {
                        o.prototype = this;
                        var t = new o;
                        return e && t.mixIn(e), t.hasOwnProperty("init") || (t.init = function () {
                            t.$super.init.apply(this, arguments)
                        }), t.init.prototype = t, t.$super = this, t
                    }, create: function () {
                        var e = this.extend();
                        return e.init.apply(e, arguments), e
                    }, init: function () {
                    }, mixIn: function (e) {
                        for (var t in e) e.hasOwnProperty(t) && (this[t] = e[t]);
                        e.hasOwnProperty("toString") && (this.toString = e.toString)
                    }, clone: function () {
                        return this.init.prototype.extend(this)
                    }
                }, a = r.WordArray = i.extend({
                    init: function (e, t) {
                        e = this.words = e || [], this.sigBytes = null != t ? t : 4 * e.length
                    }, toString: function (e) {
                        return (e || s).stringify(this)
                    }, concat: function (e) {
                        var t = this.words, n = e.words, r = this.sigBytes;
                        if (e = e.sigBytes, this.clamp(), r % 4) for (var o = 0; o < e; o++) t[r + o >>> 2] |= (n[o >>> 2] >>> 24 - o % 4 * 8 & 255) << 24 - (r + o) % 4 * 8; else if (65535 < n.length) for (o = 0; o < e; o += 4) t[r + o >>> 2] = n[o >>> 2]; else t.push.apply(t, n);
                        return this.sigBytes += e, this
                    }, clamp: function () {
                        var t = this.words, n = this.sigBytes;
                        t[n >>> 2] &= 4294967295 << 32 - n % 4 * 8, t.length = e.ceil(n / 4)
                    }, clone: function () {
                        var e = i.clone.call(this);
                        return e.words = this.words.slice(0), e
                    }, random: function (t) {
                        for (var n = [], r = 0; r < t; r += 4) n.push(4294967296 * e.random() | 0);
                        return new a.init(n, t)
                    }
                }), c = n.enc = {}, s = c.Hex = {
                    stringify: function (e) {
                        var t = e.words;
                        e = e.sigBytes;
                        for (var n = [], r = 0; r < e; r++) {
                            var o = t[r >>> 2] >>> 24 - r % 4 * 8 & 255;
                            n.push((o >>> 4).toString(16)), n.push((15 & o).toString(16))
                        }
                        return n.join("")
                    }, parse: function (e) {
                        for (var t = e.length, n = [], r = 0; r < t; r += 2) n[r >>> 3] |= parseInt(e.substr(r, 2), 16) << 24 - r % 8 * 4;
                        return new a.init(n, t / 2)
                    }
                }, u = c.Latin1 = {
                    stringify: function (e) {
                        var t = e.words;
                        e = e.sigBytes;
                        for (var n = [], r = 0; r < e; r++) n.push(String.fromCharCode(t[r >>> 2] >>> 24 - r % 4 * 8 & 255));
                        return n.join("")
                    }, parse: function (e) {
                        for (var t = e.length, n = [], r = 0; r < t; r++) n[r >>> 2] |= (255 & e.charCodeAt(r)) << 24 - r % 4 * 8;
                        return new a.init(n, t)
                    }
                }, l = c.Utf8 = {
                    stringify: function (e) {
                        try {
                            return decodeURIComponent(escape(u.stringify(e)))
                        } catch (e) {
                            throw Error("Malformed UTF-8 data")
                        }
                    }, parse: function (e) {
                        return u.parse(unescape(encodeURIComponent(e)))
                    }
                }, d = r.BufferedBlockAlgorithm = i.extend({
                    reset: function () {
                        this._data = new a.init, this._nDataBytes = 0
                    }, _append: function (e) {
                        "string" == typeof e && (e = l.parse(e)), this._data.concat(e), this._nDataBytes += e.sigBytes
                    }, _process: function (t) {
                        var n = this._data, r = n.words, o = n.sigBytes, i = this.blockSize, c = o / (4 * i);
                        if (t = (c = t ? e.ceil(c) : e.max((0 | c) - this._minBufferSize, 0)) * i, o = e.min(4 * t, o), t) {
                            for (var s = 0; s < t; s += i) this._doProcessBlock(r, s);
                            s = r.splice(0, t), n.sigBytes -= o
                        }
                        return new a.init(s, o)
                    }, clone: function () {
                        var e = i.clone.call(this);
                        return e._data = this._data.clone(), e
                    }, _minBufferSize: 0
                });
                r.Hasher = d.extend({
                    cfg: i.extend(), init: function (e) {
                        this.cfg = this.cfg.extend(e), this.reset()
                    }, reset: function () {
                        d.reset.call(this), this._doReset()
                    }, update: function (e) {
                        return this._append(e), this._process(), this
                    }, finalize: function (e) {
                        return e && this._append(e), this._doFinalize()
                    }, blockSize: 16, _createHelper: function (e) {
                        return function (t, n) {
                            return new e.init(n).finalize(t)
                        }
                    }, _createHmacHelper: function (e) {
                        return function (t, n) {
                            return new p.HMAC.init(e, n).finalize(t)
                        }
                    }
                });
                var p = n.algo = {};
                return n
            }(Math);
            return t = (e = n).lib.WordArray, e.enc.Base64 = {
                stringify: function (e) {
                    var t = e.words, n = e.sigBytes, r = this._map;
                    e.clamp(), e = [];
                    for (var o = 0; o < n; o += 3) for (var i = (t[o >>> 2] >>> 24 - o % 4 * 8 & 255) << 16 | (t[o + 1 >>> 2] >>> 24 - (o + 1) % 4 * 8 & 255) << 8 | t[o + 2 >>> 2] >>> 24 - (o + 2) % 4 * 8 & 255, a = 0; 4 > a && o + .75 * a < n; a++) e.push(r.charAt(i >>> 6 * (3 - a) & 63));
                    if (t = r.charAt(64)) for (; e.length % 4;) e.push(t);
                    return e.join("")
                }, parse: function (e) {
                    var n = e.length, r = this._map;
                    (o = r.charAt(64)) && -1 != (o = e.indexOf(o)) && (n = o);
                    for (var o = [], i = 0, a = 0; a < n; a++) if (a % 4) {
                        var c = r.indexOf(e.charAt(a - 1)) << a % 4 * 2, s = r.indexOf(e.charAt(a)) >>> 6 - a % 4 * 2;
                        o[i >>> 2] |= (c | s) << 24 - i % 4 * 8, i++
                    }
                    return t.create(o, i)
                }, _map: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="
            }, function (e) {
                function t(e, t, n, r, o, i, a) {
                    return ((e = e + (t & n | ~t & r) + o + a) << i | e >>> 32 - i) + t
                }

                function r(e, t, n, r, o, i, a) {
                    return ((e = e + (t & r | n & ~r) + o + a) << i | e >>> 32 - i) + t
                }

                function o(e, t, n, r, o, i, a) {
                    return ((e = e + (t ^ n ^ r) + o + a) << i | e >>> 32 - i) + t
                }

                function i(e, t, n, r, o, i, a) {
                    return ((e = e + (n ^ (t | ~r)) + o + a) << i | e >>> 32 - i) + t
                }

                for (var a = n, c = (u = a.lib).WordArray, s = u.Hasher, u = a.algo, l = [], d = 0; 64 > d; d++) l[d] = 4294967296 * e.abs(e.sin(d + 1)) | 0;
                u = u.MD5 = s.extend({
                    _doReset: function () {
                        this._hash = new c.init([1732584193, 4023233417, 2562383102, 271733878])
                    }, _doProcessBlock: function (e, n) {
                        for (var a = 0; 16 > a; a++) {
                            var c = e[s = n + a];
                            e[s] = 16711935 & (c << 8 | c >>> 24) | 4278255360 & (c << 24 | c >>> 8)
                        }
                        a = this._hash.words;
                        var s = e[n + 0], u = (c = e[n + 1], e[n + 2]), d = e[n + 3], p = e[n + 4], f = e[n + 5],
                            h = e[n + 6], m = e[n + 7], v = e[n + 8], g = e[n + 9], y = e[n + 10], b = e[n + 11],
                            _ = e[n + 12], k = e[n + 13], w = e[n + 14], S = e[n + 15],
                            x = t(x = a[0], T = a[1], A = a[2], O = a[3], s, 7, l[0]), O = t(O, x, T, A, c, 12, l[1]),
                            A = t(A, O, x, T, u, 17, l[2]), T = t(T, A, O, x, d, 22, l[3]);
                        x = t(x, T, A, O, p, 7, l[4]), O = t(O, x, T, A, f, 12, l[5]), A = t(A, O, x, T, h, 17, l[6]), T = t(T, A, O, x, m, 22, l[7]), x = t(x, T, A, O, v, 7, l[8]), O = t(O, x, T, A, g, 12, l[9]), A = t(A, O, x, T, y, 17, l[10]), T = t(T, A, O, x, b, 22, l[11]), x = t(x, T, A, O, _, 7, l[12]), O = t(O, x, T, A, k, 12, l[13]), A = t(A, O, x, T, w, 17, l[14]), x = r(x, T = t(T, A, O, x, S, 22, l[15]), A, O, c, 5, l[16]), O = r(O, x, T, A, h, 9, l[17]), A = r(A, O, x, T, b, 14, l[18]), T = r(T, A, O, x, s, 20, l[19]), x = r(x, T, A, O, f, 5, l[20]), O = r(O, x, T, A, y, 9, l[21]), A = r(A, O, x, T, S, 14, l[22]), T = r(T, A, O, x, p, 20, l[23]), x = r(x, T, A, O, g, 5, l[24]), O = r(O, x, T, A, w, 9, l[25]), A = r(A, O, x, T, d, 14, l[26]), T = r(T, A, O, x, v, 20, l[27]), x = r(x, T, A, O, k, 5, l[28]), O = r(O, x, T, A, u, 9, l[29]), A = r(A, O, x, T, m, 14, l[30]), x = o(x, T = r(T, A, O, x, _, 20, l[31]), A, O, f, 4, l[32]), O = o(O, x, T, A, v, 11, l[33]), A = o(A, O, x, T, b, 16, l[34]), T = o(T, A, O, x, w, 23, l[35]), x = o(x, T, A, O, c, 4, l[36]), O = o(O, x, T, A, p, 11, l[37]), A = o(A, O, x, T, m, 16, l[38]), T = o(T, A, O, x, y, 23, l[39]), x = o(x, T, A, O, k, 4, l[40]), O = o(O, x, T, A, s, 11, l[41]), A = o(A, O, x, T, d, 16, l[42]), T = o(T, A, O, x, h, 23, l[43]), x = o(x, T, A, O, g, 4, l[44]), O = o(O, x, T, A, _, 11, l[45]), A = o(A, O, x, T, S, 16, l[46]), x = i(x, T = o(T, A, O, x, u, 23, l[47]), A, O, s, 6, l[48]), O = i(O, x, T, A, m, 10, l[49]), A = i(A, O, x, T, w, 15, l[50]), T = i(T, A, O, x, f, 21, l[51]), x = i(x, T, A, O, _, 6, l[52]), O = i(O, x, T, A, d, 10, l[53]), A = i(A, O, x, T, y, 15, l[54]), T = i(T, A, O, x, c, 21, l[55]), x = i(x, T, A, O, v, 6, l[56]), O = i(O, x, T, A, S, 10, l[57]), A = i(A, O, x, T, h, 15, l[58]), T = i(T, A, O, x, k, 21, l[59]), x = i(x, T, A, O, p, 6, l[60]), O = i(O, x, T, A, b, 10, l[61]), A = i(A, O, x, T, u, 15, l[62]), T = i(T, A, O, x, g, 21, l[63]);
                        a[0] = a[0] + x | 0, a[1] = a[1] + T | 0, a[2] = a[2] + A | 0, a[3] = a[3] + O | 0
                    }, _doFinalize: function () {
                        var t = this._data, n = t.words, r = 8 * this._nDataBytes, o = 8 * t.sigBytes;
                        n[o >>> 5] |= 128 << 24 - o % 32;
                        var i = e.floor(r / 4294967296);
                        for (n[15 + (o + 64 >>> 9 << 4)] = 16711935 & (i << 8 | i >>> 24) | 4278255360 & (i << 24 | i >>> 8), n[14 + (o + 64 >>> 9 << 4)] = 16711935 & (r << 8 | r >>> 24) | 4278255360 & (r << 24 | r >>> 8), t.sigBytes = 4 * (n.length + 1), this._process(), n = (t = this._hash).words, r = 0; 4 > r; r++) o = n[r], n[r] = 16711935 & (o << 8 | o >>> 24) | 4278255360 & (o << 24 | o >>> 8);
                        return t
                    }, clone: function () {
                        var e = s.clone.call(this);
                        return e._hash = this._hash.clone(), e
                    }
                }), a.MD5 = s._createHelper(u), a.HmacMD5 = s._createHmacHelper(u)
            }(Math), function () {
                var e, t = n, r = (e = t.lib).Base, o = e.WordArray, i = (e = t.algo).EvpKDF = r.extend({
                    cfg: r.extend({keySize: 4, hasher: e.MD5, iterations: 1}),
                    init: function (e) {
                        this.cfg = this.cfg.extend(e)
                    },
                    compute: function (e, t) {
                        for (var n = (c = this.cfg).hasher.create(), r = o.create(), i = r.words, a = c.keySize, c = c.iterations; i.length < a;) {
                            s && n.update(s);
                            var s = n.update(e).finalize(t);
                            n.reset();
                            for (var u = 1; u < c; u++) s = n.finalize(s), n.reset();
                            r.concat(s)
                        }
                        return r.sigBytes = 4 * a, r
                    }
                });
                t.EvpKDF = function (e, t, n) {
                    return i.create(n).compute(e, t)
                }
            }(), n.lib.Cipher || function (e) {
                var t = (h = n).lib, r = t.Base, o = t.WordArray, i = t.BufferedBlockAlgorithm, a = h.enc.Base64,
                    c = h.algo.EvpKDF, s = t.Cipher = i.extend({
                        cfg: r.extend(), createEncryptor: function (e, t) {
                            return this.create(this._ENC_XFORM_MODE, e, t)
                        }, createDecryptor: function (e, t) {
                            return this.create(this._DEC_XFORM_MODE, e, t)
                        }, init: function (e, t, n) {
                            this.cfg = this.cfg.extend(n), this._xformMode = e, this._key = t, this.reset()
                        }, reset: function () {
                            i.reset.call(this), this._doReset()
                        }, process: function (e) {
                            return this._append(e), this._process()
                        }, finalize: function (e) {
                            return e && this._append(e), this._doFinalize()
                        }, keySize: 4, ivSize: 4, _ENC_XFORM_MODE: 1, _DEC_XFORM_MODE: 2, _createHelper: function (e) {
                            return {
                                encrypt: function (t, n, r) {
                                    return ("string" == typeof n ? m : f).encrypt(e, t, n, r)
                                }, decrypt: function (t, n, r) {
                                    return ("string" == typeof n ? m : f).decrypt(e, t, n, r)
                                }
                            }
                        }
                    });
                t.StreamCipher = s.extend({
                    _doFinalize: function () {
                        return this._process(!0)
                    }, blockSize: 1
                });
                var u = h.mode = {}, l = function (e, t, n) {
                    var r = this._iv;
                    r ? this._iv = undefined : r = this._prevBlock;
                    for (var o = 0; o < n; o++) e[t + o] ^= r[o]
                }, d = (t.BlockCipherMode = r.extend({
                    createEncryptor: function (e, t) {
                        return this.Encryptor.create(e, t)
                    }, createDecryptor: function (e, t) {
                        return this.Decryptor.create(e, t)
                    }, init: function (e, t) {
                        this._cipher = e, this._iv = t
                    }
                })).extend();
                d.Encryptor = d.extend({
                    processBlock: function (e, t) {
                        var n = this._cipher, r = n.blockSize;
                        l.call(this, e, t, r), n.encryptBlock(e, t), this._prevBlock = e.slice(t, t + r)
                    }
                }), d.Decryptor = d.extend({
                    processBlock: function (e, t) {
                        var n = this._cipher, r = n.blockSize, o = e.slice(t, t + r);
                        n.decryptBlock(e, t), l.call(this, e, t, r), this._prevBlock = o
                    }
                }), u = u.CBC = d, d = (h.pad = {}).Pkcs7 = {
                    pad: function (e, t) {
                        for (var n, r = (n = (n = 4 * t) - e.sigBytes % n) << 24 | n << 16 | n << 8 | n, i = [], a = 0; a < n; a += 4) i.push(r);
                        n = o.create(i, n), e.concat(n)
                    }, unpad: function (e) {
                        e.sigBytes -= 255 & e.words[e.sigBytes - 1 >>> 2]
                    }
                }, t.BlockCipher = s.extend({
                    cfg: s.cfg.extend({mode: u, padding: d}), reset: function () {
                        s.reset.call(this);
                        var e = (t = this.cfg).iv, t = t.mode;
                        if (this._xformMode == this._ENC_XFORM_MODE) var n = t.createEncryptor; else n = t.createDecryptor, this._minBufferSize = 1;
                        this._mode = n.call(t, this, e && e.words)
                    }, _doProcessBlock: function (e, t) {
                        this._mode.processBlock(e, t)
                    }, _doFinalize: function () {
                        var e = this.cfg.padding;
                        if (this._xformMode == this._ENC_XFORM_MODE) {
                            e.pad(this._data, this.blockSize);
                            var t = this._process(!0)
                        } else t = this._process(!0), e.unpad(t);
                        return t
                    }, blockSize: 4
                });
                var p = t.CipherParams = r.extend({
                    init: function (e) {
                        this.mixIn(e)
                    }, toString: function (e) {
                        return (e || this.formatter).stringify(this)
                    }
                }), f = (u = (h.format = {}).OpenSSL = {
                    stringify: function (e) {
                        var t = e.ciphertext;
                        return ((e = e.salt) ? o.create([1398893684, 1701076831]).concat(e).concat(t) : t).toString(a)
                    }, parse: function (e) {
                        var t = (e = a.parse(e)).words;
                        if (1398893684 == t[0] && 1701076831 == t[1]) {
                            var n = o.create(t.slice(2, 4));
                            t.splice(0, 4), e.sigBytes -= 16
                        }
                        return p.create({ciphertext: e, salt: n})
                    }
                }, t.SerializableCipher = r.extend({
                    cfg: r.extend({format: u}), encrypt: function (e, t, n, r) {
                        r = this.cfg.extend(r);
                        var o = e.createEncryptor(n, r);
                        return t = o.finalize(t), o = o.cfg, p.create({
                            ciphertext: t,
                            key: n,
                            iv: o.iv,
                            algorithm: e,
                            mode: o.mode,
                            padding: o.padding,
                            blockSize: e.blockSize,
                            formatter: r.format
                        })
                    }, decrypt: function (e, t, n, r) {
                        return r = this.cfg.extend(r), t = this._parse(t, r.format), e.createDecryptor(n, r).finalize(t.ciphertext)
                    }, _parse: function (e, t) {
                        return "string" == typeof e ? t.parse(e, this) : e
                    }
                })), h = (h.kdf = {}).OpenSSL = {
                    execute: function (e, t, n, r) {
                        return r || (r = o.random(8)), e = c.create({keySize: t + n}).compute(e, r), n = o.create(e.words.slice(t), 4 * n), e.sigBytes = 4 * t, p.create({
                            key: e,
                            iv: n,
                            salt: r
                        })
                    }
                }, m = t.PasswordBasedCipher = f.extend({
                    cfg: f.cfg.extend({kdf: h}), encrypt: function (e, t, n, r) {
                        return n = (r = this.cfg.extend(r)).kdf.execute(n, e.keySize, e.ivSize), r.iv = n.iv, (e = f.encrypt.call(this, e, t, n.key, r)).mixIn(n), e
                    }, decrypt: function (e, t, n, r) {
                        return r = this.cfg.extend(r), t = this._parse(t, r.format), n = r.kdf.execute(n, e.keySize, e.ivSize, t.salt), r.iv = n.iv, f.decrypt.call(this, e, t, n.key, r)
                    }
                })
            }(), function () {
                for (var e = n, t = e.lib.BlockCipher, r = e.algo, o = [], i = [], a = [], c = [], s = [], u = [], l = [], d = [], p = [], f = [], h = [], m = 0; 256 > m; m++) h[m] = 128 > m ? m << 1 : m << 1 ^ 283;
                var v = 0, g = 0;
                for (m = 0; 256 > m; m++) {
                    var y = (y = g ^ g << 1 ^ g << 2 ^ g << 3 ^ g << 4) >>> 8 ^ 255 & y ^ 99;
                    o[v] = y, i[y] = v;
                    var b = h[v], _ = h[b], k = h[_], w = 257 * h[y] ^ 16843008 * y;
                    a[v] = w << 24 | w >>> 8, c[v] = w << 16 | w >>> 16, s[v] = w << 8 | w >>> 24, u[v] = w, w = 16843009 * k ^ 65537 * _ ^ 257 * b ^ 16843008 * v, l[y] = w << 24 | w >>> 8, d[y] = w << 16 | w >>> 16, p[y] = w << 8 | w >>> 24, f[y] = w, v ? (v = b ^ h[h[h[k ^ b]]], g ^= h[h[g]]) : v = g = 1
                }
                var S = [0, 1, 2, 4, 8, 16, 32, 64, 128, 27, 54];
                r = r.AES = t.extend({
                    _doReset: function () {
                        for (var e = (n = this._key).words, t = n.sigBytes / 4, n = 4 * ((this._nRounds = t + 6) + 1), r = this._keySchedule = [], i = 0; i < n; i++) if (i < t) r[i] = e[i]; else {
                            var a = r[i - 1];
                            i % t ? 6 < t && 4 == i % t && (a = o[a >>> 24] << 24 | o[a >>> 16 & 255] << 16 | o[a >>> 8 & 255] << 8 | o[255 & a]) : (a = o[(a = a << 8 | a >>> 24) >>> 24] << 24 | o[a >>> 16 & 255] << 16 | o[a >>> 8 & 255] << 8 | o[255 & a], a ^= S[i / t | 0] << 24), r[i] = r[i - t] ^ a
                        }
                        for (e = this._invKeySchedule = [], t = 0; t < n; t++) i = n - t, a = t % 4 ? r[i] : r[i - 4], e[t] = 4 > t || 4 >= i ? a : l[o[a >>> 24]] ^ d[o[a >>> 16 & 255]] ^ p[o[a >>> 8 & 255]] ^ f[o[255 & a]]
                    }, encryptBlock: function (e, t) {
                        this._doCryptBlock(e, t, this._keySchedule, a, c, s, u, o)
                    }, decryptBlock: function (e, t) {
                        var n = e[t + 1];
                        e[t + 1] = e[t + 3], e[t + 3] = n, this._doCryptBlock(e, t, this._invKeySchedule, l, d, p, f, i), n = e[t + 1], e[t + 1] = e[t + 3], e[t + 3] = n
                    }, _doCryptBlock: function (e, t, n, r, o, i, a, c) {
                        for (var s = this._nRounds, u = e[t] ^ n[0], l = e[t + 1] ^ n[1], d = e[t + 2] ^ n[2], p = e[t + 3] ^ n[3], f = 4, h = 1; h < s; h++) {
                            var m = r[u >>> 24] ^ o[l >>> 16 & 255] ^ i[d >>> 8 & 255] ^ a[255 & p] ^ n[f++],
                                v = r[l >>> 24] ^ o[d >>> 16 & 255] ^ i[p >>> 8 & 255] ^ a[255 & u] ^ n[f++],
                                g = r[d >>> 24] ^ o[p >>> 16 & 255] ^ i[u >>> 8 & 255] ^ a[255 & l] ^ n[f++];
                            p = r[p >>> 24] ^ o[u >>> 16 & 255] ^ i[l >>> 8 & 255] ^ a[255 & d] ^ n[f++], u = m, l = v, d = g
                        }
                        m = (c[u >>> 24] << 24 | c[l >>> 16 & 255] << 16 | c[d >>> 8 & 255] << 8 | c[255 & p]) ^ n[f++], v = (c[l >>> 24] << 24 | c[d >>> 16 & 255] << 16 | c[p >>> 8 & 255] << 8 | c[255 & u]) ^ n[f++], g = (c[d >>> 24] << 24 | c[p >>> 16 & 255] << 16 | c[u >>> 8 & 255] << 8 | c[255 & l]) ^ n[f++], p = (c[p >>> 24] << 24 | c[u >>> 16 & 255] << 16 | c[l >>> 8 & 255] << 8 | c[255 & d]) ^ n[f++], e[t] = m, e[t + 1] = v, e[t + 2] = g, e[t + 3] = p
                    }, keySize: 8
                });
                e.AES = t._createHelper(r)
            }(), n
        }();

    function Fn() {
        return Jt()
    }

    var Bn = null;

    function En() {
        var e, t, n, r;
        return null === Bn && (e = Mn(), t = pt.getItem(e), Bn = t ? (n = t, r = Fn(), Pn.AES.decrypt(n, r).toString(Pn.enc.Utf8)) : null), Bn
    }

    function Ln(e) {
        var t = !(arguments.length > 1 && void 0 !== arguments[1]) || arguments[1];
        Bn = e, null === e || !1 === t ? Rn(Mn()) : Un(Mn(), e)
    }

    function Un(e, t) {
        var n, r, o = (n = t, r = Fn(), Pn.AES.encrypt(n, r).toString());
        pt.setItem(e, o)
    }

    function Rn(e) {
        pt.removeItem(e)
    }

    var zn = {};

    function Mn() {
        var e;
        return zn.accessTokenKey || (zn.accessTokenKey = "kakao_" + (e = "kat" + Fn(), Pn.MD5(e).toString())), zn.accessTokenKey
    }

    var Dn = Object.freeze({
        __proto__: null,
        getAppKey: Fn,
        getAccessToken: En,
        setAccessToken: Ln,
        getRefreshToken: function () {
            return console.error("unsupported operation: Auth.getRefreshToken()"), ""
        },
        setRefreshToken: function (e) {
            console.error("unsupported operation: Auth.setRefreshToken()")
        }
    });

    function qn() {
        return "Bearer ".concat(En())
    }

    function Nn() {
        return "KakaoAK ".concat(Fn())
    }

    var Kn = {
        permission: lt(["A", "F", "M"]),
        enable_share: Je,
        android_exec_param: We,
        ios_exec_param: We,
        android_market_param: We,
        ios_market_param: We
    }, Hn = {secure_resource: Je};

    function Wn(e) {
        !1 === e.secure_resource && (console && console.warn("KakaoWarning: The secure_resource parameter is deprecated."), e.secure_resource = !0)
    }

    function Jn(e) {
        if (!We(e)) return !1;
        if (0 === e.length || e.length > 2048) throw new $t("content length should be between 0 and 2048");
        return !0
    }

    function Xn(e) {
        return (e.header_image_url || e.header_image_width || e.header_image_height) && (delete e.header_image_url, delete e.header_image_width, delete e.header_image_height, console && console.warn("KakaoWarning: The parameters (".concat(["header_image_url", "header_image_width", "header_image_height"].join(", "), ") for header background image are deprecated."))), !0
    }

    var $n = {
        "/v1/user/signup": {method: "post", data: {optional: {properties: g}}},
        "/v1/user/unlink": {method: "post"},
        "/v2/user/me": {method: "get", data: {optional: Pe({property_keys: f}, Hn)}},
        "/v1/user/logout": {method: "post", data: {}},
        "/v1/user/update_profile": {method: "post", data: {required: {properties: g}}},
        "/v1/user/access_token_info": {method: "get", data: {}},
        "/v2/user/scopes": {method: "get", data: {optional: {scopes: f}}},
        "/v2/user/revoke/scopes": {method: "post", data: {required: {scopes: f}}},
        "/v1/user/service/terms": {method: "get"},
        "/v1/user/shipping_address": {
            method: "get",
            data: {optional: {address_id: $e, from_updated_at: $e, page_size: $e}}
        },
        "/v1/api/talk/profile": {method: "get", data: {optional: Hn, after: Wn}},
        "/v1/api/talk/friends": {
            method: "get",
            data: {optional: Pe({offset: $e, limit: $e, order: We}, Hn), after: Wn}
        },
        "/v1/friends": {
            method: "get",
            data: {optional: Pe({offset: $e, limit: $e, order: We, friend_order: We}, Hn), after: Wn}
        },
        "/v2/api/talk/memo/send": {method: "post", data: {required: {template_id: $e}, optional: {template_args: g}}},
        "/v2/api/talk/memo/scrap/send": {
            method: "post",
            data: {required: {request_url: We}, optional: {template_id: $e, template_args: g}}
        },
        "/v2/api/talk/memo/default/send": {
            method: "post", data: {
                required: {
                    template_object: function (e) {
                        return g(e) && Xn(e)
                    }
                }
            }
        },
        "/v1/api/talk/friends/message/send": {
            method: "post",
            data: {
                required: {template_id: $e, receiver_uuids: f, receiver_id_type: We},
                optional: {template_args: g},
                defaults: function () {
                    return {receiver_id_type: "uuid"}
                }
            }
        },
        "/v1/api/talk/friends/message/scrap/send": {
            method: "post",
            data: {
                required: {request_url: We, receiver_uuids: f, receiver_id_type: We},
                optional: {template_id: $e, template_args: g},
                defaults: function () {
                    return {receiver_id_type: "uuid"}
                }
            }
        },
        "/v1/api/talk/friends/message/default/send": {
            method: "post", data: {
                required: {
                    template_object: function (e) {
                        return g(e) && Xn(e)
                    }, receiver_uuids: f, receiver_id_type: We
                }, defaults: function () {
                    return {receiver_id_type: "uuid"}
                }
            }
        },
        "/v2/api/kakaolink/talk/template/validate": {
            method: "get",
            data: {required: {link_ver: We, template_id: $e}, optional: {template_args: g}},
            authType: Nn
        },
        "/v2/api/kakaolink/talk/template/scrap": {
            method: "get",
            data: {required: {link_ver: We, request_url: We}, optional: {template_id: $e, template_args: g}},
            authType: Nn
        },
        "/v2/api/kakaolink/talk/template/default": {
            method: "get",
            data: {required: {link_ver: We, template_object: g}},
            authType: Nn
        },
        "/v2/api/talk/message/image/upload": {method: "post", data: {required: {file: g}}, authType: Nn},
        "/v2/api/talk/message/image/delete": {method: "delete", data: {required: {image_url: We}}, authType: Nn},
        "/v2/api/talk/message/image/scrap": {method: "post", data: {required: {image_url: We}}, authType: Nn},
        "/v1/api/story/profile": {method: "get", data: {optional: Hn}},
        "/v1/api/story/isstoryuser": {method: "get"},
        "/v1/api/story/mystory": {method: "get", data: {required: {id: We}}},
        "/v1/api/story/mystories": {method: "get", data: {optional: {last_id: We}}},
        "/v1/api/story/linkinfo": {method: "get", data: {required: {url: We}}},
        "/v1/api/story/post/note": {method: "post", data: {required: {content: Jn}, optional: Kn}},
        "/v1/api/story/post/photo": {
            method: "post", data: {
                required: {
                    image_url_list: function (e) {
                        return !!f(e) && tt(e, (function (e) {
                            if (!We(e)) return !1;
                            if (/(http|ftp|https):\/\/[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:\/~+#-]*[\w@?^=%&amp;\/~+#-])?/.test(e)) throw new $t("url in image_url_list should be a kage url, obtained from '/v1/api/story/upload/multi'.");
                            return !0
                        }))
                    }
                }, optional: Pe({content: Jn}, Kn)
            }
        },
        "/v1/api/story/post/link": {method: "post", data: {required: {link_info: g}, optional: Pe({content: Jn}, Kn)}},
        "/v1/api/story/upload/multi": {method: "post", data: {}},
        "/v1/api/story/delete/mystory": {method: "delete", data: {required: {id: We}}},
        "/v1/api/talk/channels": {method: "get", data: {optional: {channel_public_ids: f}}},
        "/v1/api/talk/plusfriends": {method: "get", data: {optional: {plus_friend_public_ids: f}}}
    }, Gn = {
        request: {
            required: {
                url: function (e) {
                    return lt(rt($n))(e)
                }
            }, optional: {
                data: g, files: function (e) {
                    return dt([f, Ze])(e) && tt(e, dt([Qe, Ye]))
                }, file: Qe, success: A, fail: A, always: A
            }, defaults: {data: {}, success: ot, fail: ot, always: ot}
        }, api: $n
    }, Vn = null;

    function Yn(e) {
        var t = (e = Qt(e, Gn.request, "API.request")).url, n = Gn.api[t].data;
        return n && (e.data = Qt(e.data, n, "API.request - ".concat(t))), Vn || (Vn = tn((function () {
            return new In.Rpc({remote: Ht.apiRemote}, {remote: {request: {}}})
        })), Qn.push((function () {
            Vn.destroy(), Vn = null
        }))), new Cn.Promise((function (t, n) {
            (function (e) {
                var t = e.url, n = Gn.api[t], r = {};
                He(e.data, (function (e, t) {
                    r[t] = We(e) ? e : JSON.stringify(e)
                }));
                var o = {
                    url: t,
                    method: n.method,
                    headers: {
                        KA: Kt,
                        Authorization: (n.authType || qn)(),
                        "Cache-Control": "no-cache",
                        Pragma: "no-cache"
                    },
                    data: r
                };
                return new Cn.Promise((function (n, i) {
                    if (function (e) {
                        return "/v1/api/story/upload/multi" === e || "/v2/api/talk/message/image/upload" === e
                    }(t) || e.data.file) {
                        var a = e.files || e.data.file;
                        if (!a) throw new $t("'files' parameter should be set for ".concat(t));
                        (function (e) {
                            var t = et(e, (function (e) {
                                return function (e) {
                                    return new Cn.Promise((function (t, n) {
                                        "undefined" == typeof FileReader && n(new $t("File API is not supported for this browser."));
                                        var r = new FileReader;
                                        r.onload = function (e) {
                                            try {
                                                t((r = e.target.result, Array.prototype.slice.call(new Uint8Array(r)).reduce((function (e, t) {
                                                    return e + String.fromCharCode.apply(null, [t])
                                                }), "")))
                                            } catch (e) {
                                                n(e)
                                            }
                                            var r
                                        }, r.onerror = function (t) {
                                            n(new $t("Cannot read file: ".concat(e.name)))
                                        }, r.readAsArrayBuffer(e)
                                    }))
                                }(e).then((function (t) {
                                    return {name: e.name, type: e.type, str: t}
                                }))
                            }));
                            return new Cn.Promise((function (e, n) {
                                Cn.Promise.all(t).then((function (t) {
                                    e({paramName: "file", data: t})
                                }), (function (e) {
                                    n(e)
                                }))
                            }))
                        })(a).then((function (e) {
                            var t = [];
                            for (var i in r) "file" !== i && t.push("".concat(i, "=").concat(encodeURIComponent(r[i])));
                            t.length > 0 && (o.url += "?".concat(t.join("&"))), o.file = e, n(o)
                        }), (function (e) {
                            i(e)
                        }))
                    } else n(o)
                }))
            })(e).then((function (r) {
                Vn.request(r, (function (n) {
                    e.success(n), e.always(n), t(n)
                }), (function (t) {
                    var r = function (e) {
                        try {
                            return JSON.parse(e.message.responseText)
                        } catch (e) {
                            return {code: -777, msg: "Unknown error"}
                        }
                    }(t);
                    e.fail(r), e.always(r), n(r)
                }))
            }), (function (e) {
                n(e)
            }))
        }))
    }

    var Qn = [];
    var Zn = Object.freeze({
        __proto__: null, request: Yn, cleanup: function () {
            Vt(Qn)
        }
    });

    function er(e, t) {
        return Pe(e, {remote: Ht.loginWidget, channel: it()}), tn((function () {
            var n = new In.Rpc(e, {
                local: {
                    postResponse: t, getKakaoAgent: function () {
                        return Kt
                    }
                }, remote: {getCode: {}, getAccessToken: {}, setClient: {}, setStateToken: {}, deleteAuthCookie: {}}
            });
            return n.channel = e.channel, n
        }))
    }

    var tr = "_blank", nr = "width=380, height=520, scrollbars=yes",
        rr = /Version\/4.0/i.test(Mt.ua) || /; wv\)/i.test(Mt.ua),
        or = /naver\(inapp|fb_iab|daumapps|instagram|ebay/g.test(Mt.ua) || "object" === ("undefined" == typeof daumApps ? "undefined" : mt(daumApps));

    function ir() {
        return Mt.os.ios ? /safari|FxiOS|CriOS/.test(Mt.ua) || !Dt : !!Mt.os.android && (Mt.browser.chrome && !/opr\//i.test(Mt.ua) && Mt.browser.version.major >= 30 && (!rr || rr && or))
    }

    var ar = {
        login: function (e, t, n, r) {
            if (ir()) {
                var o = null;
                if (Mt.os.ios) {
                    var i = function (e, t) {
                            t.state = e;
                            var n = {client_id: Jt(), redirect_uri: Ht.redirectUri, params: JSON.stringify(t)};
                            return "".concat(Ht.talkLoginScheme, "?").concat(ut(n))
                        }(e, n),
                        a = "".concat(Ht.universalKakaoLink).concat(encodeURIComponent(i), "&web=").concat(encodeURIComponent(t));
                    r ? location.href = a : o = rn(a, tr, nr)
                } else if (Mt.os.android) {
                    var c = function (e, t, n) {
                        return ["intent:#Intent", "action=com.kakao.talk.intent.action.CAPRI_LOGGED_IN_ACTIVITY", "launchFlags=0x08880000", "S.com.kakao.sdk.talk.appKey=".concat(Jt()), "S.com.kakao.sdk.talk.redirectUri=".concat(Ht.talkLoginRedirectUri), "S.com.kakao.sdk.talk.state=".concat(e), "S.com.kakao.sdk.talk.kaHeader=".concat(Kt), "S.com.kakao.sdk.talk.extraparams=".concat(encodeURIComponent(JSON.stringify(n))), "S.browser_fallback_url=".concat(encodeURIComponent(t)), "end;"].join(";")
                    }(e, t, n);
                    r ? location.href = c : Mt.browser.version.major > 40 && (!rr || rr && or) ? o = rn(c, tr, nr) : (o = rn("", tr, nr)) && (o.addEventListener("unload", (function () {
                        setTimeout((function () {
                            o && o.location && (o.location.href = t)
                        }), 10)
                    })), o.location.href = c)
                }
                return o
            }
        }, isSupport: ir
    }, cr = new pn(1e3, 600);

    function sr(e) {
        var t = it() + it();
        if (ar.isSupport() && e.throughTalk) fr(e, t); else if (e.redirectUri) location.href = gr(e); else if (Mt.os.android && Dt && Mt.browser.chrome && Mt.browser.version.major >= 71) {
            fr(e, t, yn(Pe({}, bn(e), _n(e), {
                redirect_uri: Ht.talkLoginRedirectUri,
                response_type: "code",
                state: t,
                ka: Kt,
                origin: zt
            })))
        } else {
            Mt.browser.msie && parseInt(Mt.browser.version.major) <= 9 || function (e) {
                var t = function t(n) {
                    var r = n.origin, o = n.data;
                    if (/\.kakao\.com$/.test(r) && o && "string" == typeof o) {
                        var i = o.split(" ");
                        if ("postResponse" === i[1]) {
                            var a = JSON.parse(decodeURIComponent(i[2]));
                            yr(e, a), st(window, "message", t)
                        }
                    }
                };
                ct(window, "message", t), _r.push((function () {
                    st(window, "message", t)
                }))
            }(e), gn(vr(e, t))
        }
        dn.dispatch("LOGIN_START")
    }

    var ur = null, lr = function () {
        ur && ur.close && ur.close(), ur = null
    }, dr = null, pr = null;

    function fr(e, t, n) {
        dr || (dr = er({}, (function (t) {
            if ("error" === t.status && t.error_code && "300" !== t.error_code && (cr.stop(), "700" === t.error_code && (location.href = "".concat(Ht.authDomain, "/error/network")), yr(e, {
                error: t.error,
                error_description: t.error_description
            })), t.status) if ("ok" === t.status) {
                if (cr.stop(), pr === t.code) return;
                pr = t.code, dr.getAccessToken(t.code, Jt(), Mt.os.ios && !n ? Ht.redirectUri : Ht.talkLoginRedirectUri, e.approvalType), lr()
            } else Mt.os.ios && "about:blank" === ur.location.href && lr(); else yr(e, t)
        })), _r.push((function () {
            dr.destroy(), dr = null
        })));
        var r = "";
        if (n) e.redirectUri ? location.href = n : gn(n); else {
            r = e.redirectUri ? gr(e) : vr(e, t, Mt.os.ios ? Ht.redirectUri : Ht.talkLoginRedirectUri);
            var o = Pe({}, bn(e), _n(e));
            setTimeout((function () {
                ur = ar.login(t, r, o, e.redirectUri)
            }), 500)
        }
        cr.start((function () {
            t && dr.getCode(t, Jt(), Kt)
        }), (function () {
            yr(e, {
                error: "timeout",
                description: "Account login timed out. Please login again.",
                error_description: "Account login timed out. Please login again."
            }), e.redirectUri ? location.href = r : gn(r)
        }))
    }

    var hr = null, mr = {};

    function vr(e, t, n) {
        hr || (hr = er({}, (function (e) {
            yr(function (e, t) {
                if (!t[e.stateToken]) throw new $t("security error: #CST2");
                var n = t[e.stateToken];
                return delete t[e.stateToken], delete e.stateToken, n
            }(e, mr), e)
        })), _r.push((function () {
            hr.destroy(), hr = null
        }))), mr[t] = e;
        var r = e.redirectUri ? e.redirectUri : n || "kakaojs";
        return yn(Pe({}, bn(e), _n(e), {
            redirect_uri: r,
            response_type: "code",
            state: t,
            proxy: "easyXDM_Kakao_".concat(hr.channel, "_provider"),
            ka: Kt,
            origin: zt
        }))
    }

    function gr(e) {
        return yn(Pe({}, bn(e), _n(e), {redirect_uri: e.redirectUri, response_type: "code", ka: Kt, origin: zt}))
    }

    function yr(e, t) {
        t.error ? "access_denied" !== t.error && Ln(null) : (Ln(t.access_token, e.persistAccessToken), dn.dispatch("LOGIN")), kn(e, t)
    }

    var br = null;
    var _r = [];

    function kr(e, t) {
        Sr();
        var n = Zt(),
            r = ht({app_key: Jt(), access_token: En(), ka: Kt, trans_id: n}, e.addressId && {address_id: e.addressId}),
            o = Ht.appsDomain + t;
        e.returnUrl ? (r.return_url = e.returnUrl, un(r, o)) : (an(n, "".concat(Ht.appsDomain, "/proxy?trans_id=").concat(n), wr), cn(e, Ht.appsDomain, wr), sn(r, {
            url: o,
            popupName: "shipping_address",
            popupFeatures: "location=no,resizable=no,status=no,scrollbars=no,width=460,height=608"
        }))
    }

    var wr = [];

    function Sr() {
        Vt(wr)
    }

    var xr = Gt([On, Object.freeze({
        __proto__: null, createLoginButton: function (e) {
            var t = at((e = Qt(e, vn.createLoginButton, "Auth.createLoginButton")).container);
            if (!t) throw new $t("container is required for Kakao login button: pass in element or id");
            var n = "medium" === e.size ? "02" : "small" === e.size ? "03" : "01",
                r = "".concat(Ht.authDomain, "/public/widget/login/").concat(e.lang, "/").concat(e.lang, "_").concat(n, "_medium"),
                o = "".concat(r, ".png"), i = "".concat(r, "_press.png");
            t.innerHTML = '<img\n    id="kakao-login-btn"\n    src='.concat(o, "\n    onmouseover=this.src='").concat(i, "'\n    onmouseout=this.src='").concat(o, '\'\n    style="cursor: pointer"\n  />');
            var a = function () {
                sr(e)
            };
            ct(t, "click", a), _r.push((function () {
                st(t, "click", a)
            }))
        }, login: function (e) {
            sr(e = Qt(e, vn.login, "Auth.login"))
        }, loginForm: function (e) {
            e = Qt(e, vn.login, "Auth.loginForm");
            var t = it() + it(), n = "&prompt=login";
            e.redirectUri ? location.href = "".concat(gr(e)).concat(n) : gn("".concat(vr(e, t)).concat(n))
        }, autoLogin: function (e) {
            if (e = Qt(e, vn.autoLogin, "Auth.autoLogin"), Tn() || Mt.os.android && Dt) {
                var t = it() + it();
                fr(e, t, yn(Pe({}, bn(e), {
                    redirect_uri: Ht.talkLoginRedirectUri,
                    response_type: "code",
                    state: t,
                    ka: Kt,
                    origin: zt,
                    prompt: "none"
                })))
            } else kn(e, {
                error: "auto_login",
                error_description: "Kakao.Auth.autoLogin is only supported by KakaoTalk InAppBrowser",
                error_code: "400",
                status: "error"
            });
            dn.dispatch("LOGIN_START")
        }, logout: function () {
            var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : ot;
            Yt(e, A, "Auth.logout"), Yn({
                url: "/v1/user/logout", always: function () {
                    Ln(null), dn.dispatch("LOGOUT"), e(!0)
                }
            })
        }, issueAccessToken: function (e) {
            e = Qt(e, vn.issueAccessToken, "Auth.issueAccessToken"), br || (br = er({}, (function (t) {
                yr(e, t)
            })), _r.push((function () {
                br.destroy(), br = null
            }))), br.getAccessToken(e.code, Jt(), e.redirectUri)
        }, cleanup: function () {
            Vt(_r)
        }
    }), Dn, Object.freeze({
        __proto__: null, getStatusInfo: function (e) {
            Yt(e, A, "Auth.getStatusInfo"), En() ? Yn({
                url: "/v2/user/me", success: function (t) {
                    e({status: "connected", user: t})
                }, fail: function () {
                    e({status: "not_connected"})
                }
            }) : e({status: "not_connected"})
        }
    }), Object.freeze({
        __proto__: null, selectShippingAddress: function (e) {
            kr(e = Qt(e, vn.selectShippingAddress, "Auth.selectShippingAddress"), "/user/address")
        }, updateShippingAddress: function (e) {
            kr(e = Qt(e, vn.updateShippingAddress, "Auth.updateShippingAddress"), "/user/edit/address")
        }, cleanup: Sr
    })]), Or = Gt([Zn]);

    function Ar(e) {
        return e.charAt(0).toUpperCase() + e.slice(1)
    }

    function Tr(e) {
        return e.replace(/[A-Z]/g, (function (e) {
            return "_".concat(e.toLowerCase())
        }))
    }

    function jr(e) {
        return g(e) ? JSON.stringify(e) : e
    }

    function Cr(e, t) {
        return Yn({url: e, data: t})
    }

    function Ir(e, t, n) {
        return Qt(e, t, 'parameter "'.concat(n, '" in Link')), !0
    }

    function Pr(e) {
        return rt(e).reduce((function (t, n) {
            return t[Tr(n)] = e[n], t
        }), {})
    }

    var Fr = {
        optional: {
            webUrl: We,
            mobileWebUrl: We,
            androidExecutionParams: We,
            androidExecParams: We,
            iosExecutionParams: We,
            iosExecParams: We
        }, builder: Er
    }, Br = {required: {item: We, itemOp: We}};

    function Er(e) {
        var t = Pr(e);
        return t.android_exec_params && (t.android_execution_params = t.android_exec_params, delete t.android_exec_params), t.ios_exec_params && (t.ios_execution_params = t.ios_exec_params, delete t.ios_exec_params), t
    }

    function Lr(e) {
        return {title: e.title, link: Er(e.link)}
    }

    function Ur(e) {
        var t = Pr(e);
        return t.link = Er(t.link), t
    }

    var Rr = {
        headerLink: Fr,
        link: Fr,
        button: {
            required: {
                title: We, link: function (e) {
                    Ir(e, Fr, "link")
                }
            }, builder: Lr
        },
        buttons: {
            optional: {
                0: function (e) {
                    Ir(e, Rr.button, "button")
                }, 1: function (e) {
                    Ir(e, Rr.button, "button")
                }
            }, builder: function (e) {
                return et(e, Lr)
            }
        },
        content: {
            required: {
                title: We, imageUrl: We, link: function (e) {
                    Ir(e, Fr, "link")
                }
            }, optional: {imageWidth: $e, imageHeight: $e, description: We}, builder: Ur
        },
        contents: {
            optional: {
                0: function (e) {
                    Ir(e, Rr.content, "content")
                }, 1: function (e) {
                    Ir(e, Rr.content, "content")
                }, 2: function (e) {
                    Ir(e, Rr.content, "content")
                }
            }, builder: function (e) {
                return et(e, Ur)
            }
        },
        commerce: {
            required: {regularPrice: $e},
            optional: {
                discountPrice: $e,
                discountRate: $e,
                fixedDiscountPrice: $e,
                currencyUnit: We,
                currencyUnitPosition: lt([0, 1]),
                productName: We
            },
            builder: Pr
        },
        social: {
            optional: {likeCount: $e, commentCount: $e, sharedCount: $e, viewCount: $e, subscriberCount: $e},
            builder: Pr
        },
        itemContent: {
            optional: {
                profileText: We,
                profileImageUrl: We,
                titleImageUrl: We,
                titleImageText: We,
                titleImageCategory: We,
                items: function (e) {
                    return f(e) && e.length < 6 && tt(e, (function (e) {
                        return Ir(e, Br, "items.item")
                    }))
                },
                sum: We,
                sumOp: We
            }, builder: function (e) {
                var t = Pr(e);
                return t.items && (t.items = et(t.items, (function (e) {
                    return Pr(e)
                }))), t
            }
        }
    };
    var zr = {
        create: function (e, t, n) {
            var r = Rr[t];
            if (r) return e = Qt(e, r, 'parameter "'.concat(t, '" in ').concat(n || "Link")), r.builder(e)
        }
    }, Mr = "4.0", Dr = function e(t, n) {
        vt(this, e), this.appkey = Jt(), this.appver = "1.0", this.linkver = Mr, this.extras = ht(ht({KA: Kt}, t.extras), t.serverCallbackArgs && {lcba: jr(t.serverCallbackArgs)}), this.template_json = n.template_msg, this.template_args = n.template_args, this.template_id = n.template_id
    };
    var qr = function e(t) {
        var n = this;
        vt(this, e), this.link_ver = Mr, this.template_object = ht({object_type: t.objectType}, t.buttonTitle && {button_title: t.buttonTitle}), He(t, (function (e, t) {
            var r = zr.create(e, t, "defaultObject");
            r && (n.template_object[Tr(t)] = r)
        }))
    }, Nr = {
        FeedLink: qr, CommerceLink: qr, ListLink: function (e) {
            bt(n, e);
            var t = St(n);

            function n(e) {
                var r;
                return vt(this, n), (r = t.call(this, e)).template_object.header_title = e.headerTitle, console && (e.headerImageUrl || e.headerImageWidth || e.headerImageHeight) && console.warn("KakaoWarning: The parameters (".concat(["headerImageUrl", "headerImageWidth", "headerImageHeight"].join(", "), ") for header background image are deprecated.")), r
            }

            return n
        }(qr), LocationLink: function (e) {
            bt(n, e);
            var t = St(n);

            function n(e) {
                var r;
                vt(this, n);
                var o = (r = t.call(this, e)).template_object;
                return o.address = e.address || "", o.address_title = e.addressTitle || "", r
            }

            return n
        }(qr), TextLink: function (e) {
            bt(n, e);
            var t = St(n);

            function n(e) {
                var r;
                return vt(this, n), (r = t.call(this, e)).template_object.text = e.text || "", r
            }

            return n
        }(qr)
    }, Kr = function e(t) {
        vt(this, e), this.link_ver = Mr, this.request_url = t.requestUrl, t.templateId && (this.template_id = t.templateId), t.templateArgs && (this.template_args = t.templateArgs)
    }, Hr = function e(t) {
        vt(this, e), this.link_ver = Mr, this.template_id = t.templateId, this.template_args = t.templateArgs
    };
    var Wr = "kakao_link_web_sharer", Jr = "location=no,resizable=no,status=no,scrollbars=no,width=460,height=608";
    var Xr = {
        send: function (e, t, n) {
            var r = {app_key: Jt(), ka: Kt, validation_action: t, validation_params: JSON.stringify(n)};
            e.serverCallbackArgs && (r.lcba = jr(e.serverCallbackArgs));
            var o = "".concat(Ht.sharerDomain, "/talk/friends/picker/easylink?").concat(ut(r)), i = null;
            !Mt.browser.msie && !Mt.browser.spartan && o.length < 2084 ? (i = rn(o, Wr, Jr)).focus() : i = sn(r, {
                url: "".concat(Ht.sharerDomain, "/talk/friends/picker/link"),
                popupName: Wr,
                popupFeatures: Jr
            }), e.callback && function (e, t) {
                if (Mt.browser.msie) return void (console && console.warn("KakaoWarning: The callback parameter does not support the IE browser."));
                var n = function (e) {
                    "sent" === e.data && e.origin === Ht.sharerDomain && t()
                };
                ct(window, "message", n);
                var r = setInterval((function () {
                    e.closed && (clearInterval(r), st(window, "message", n))
                }), 1e3)
            }(i, e.callback)
        }
    }, $r = function () {
        var e = jt(), t = e.os, n = ["firefox", "opr/"], r = ["KAKAOTALK"];

        function o(e) {
            window.top.location.replace(e)
        }

        function i(e, t, n) {
            var r = (new Date).getTime();
            return setTimeout((function () {
                var o = (new Date).getTime();
                a() && o - r < e + 100 && n(t)
            }), e)
        }

        function a() {
            for (var e = ["hidden", "webkitHidden"], t = 0, n = e.length; t < n; t++) if (void 0 !== document[e[t]]) return !document[e[t]];
            return !0
        }

        function c(e) {
            setTimeout((function () {
                (function (e) {
                    var t = document.createElement("iframe");
                    return t.id = e, t.style.border = "none", t.style.width = "0", t.style.height = "0", t.style.display = "none", t.style.overflow = "hidden", document.body.appendChild(t), t
                }("appLauncher")).src = e
            }), 100)
        }

        return function (s) {
            var u, l, d, p, f = "function" == typeof s.willInvokeApp ? s.willInvokeApp : function () {
                }, h = "function" == typeof s.onAppMissing ? s.onAppMissing : o,
                m = "function" == typeof s.onUnsupportedEnvironment ? s.onUnsupportedEnvironment : function () {
                };
            f(), t.android ? (l = e.browser.chrome && +e.browser.version.major >= 25, d = new RegExp(n.join("|"), "i"), p = new RegExp(r.join("|"), "i"), (l && !d.test(e.ua) || p.test(e.ua)) && s.intentURI && !s.useUrlScheme ? function (t) {
                e.browser.chrome ? n() : setTimeout(n, 100);

                function n() {
                    top.location.href = t
                }
            }(s.intentURI) : s.storeURL && (u = s.urlScheme, i(300, s.storeURL, h), c(u))) : t.ios && s.storeURL ? function (t, n, r, o) {
                var s = i(5e3, n, r);
                parseInt(e.os.version.major, 10) < 8 ? function (e) {
                    window.addEventListener("pagehide", (function t() {
                        a() && (clearTimeout(e), window.removeEventListener("pagehide", t))
                    }))
                }(s) : function (e) {
                    document.addEventListener("visibilitychange", (function t() {
                        a() && (clearTimeout(e), document.removeEventListener("visibilitychange", t))
                    }))
                }(s);
                parseInt(e.os.version.major, 10) > 8 && e.os.ios ? (void 0 === o ? o = t : clearTimeout(s), function (e) {
                    window.top.location.replace(e)
                }(o)) : c(t)
            }(s.urlScheme, s.storeURL, h, s.universalLink) : setTimeout((function () {
                m()
            }), 100)
        }
    }(), Gr = new pn(100, 100), Vr = "362057947";

    function Yr(e, t) {
        !function (e, t, n) {
            var r = ["intent:".concat(e, "#Intent"), "launchFlags=0x14008000", "".concat(!0 === n ? "package=".concat(Ht.talkAndroidPackage, ";") : "", "end;")].join(";"),
                o = {
                    urlScheme: e,
                    intentURI: r,
                    appName: "KakaoTalk",
                    storeURL: en(Ht.talkAndroidPackage, Vr),
                    onUnsupportedEnvironment: function () {
                        t(e)
                    }
                };
            (!n || Tn() || An()) && (o.onAppMissing = ot);
            Tn() && (o.universalLink = void 0);
            try {
                $r(o)
            } catch (e) {
            }
        }(function (e, t) {
            var n = new Dr(e, t);
            if (JSON.stringify(n).length > 1e4) throw new $t("Failed to send message because it exceeds the message size limit. Please contact the app administrator.");
            var r = Mt.os.ios ? Ht.talkLinkScheme : "kakaolink://send";
            return "".concat(r, "?").concat(ut(n))
        }(t, e), t.fail, t.installTalk);
        var n = {
            template_msg: e.template_msg || {},
            warning_msg: e.warning_msg || {},
            argument_msg: e.argument_msg || {}
        };
        t.success(n), t.always(n)
    }

    var Qr = {
        send: function (e, t, n) {
            var r = null;
            if (Mt.browser.iphone && /version/.test(Mt.ua.toLowerCase())) {
                var o = null;
                r = function (e) {
                    o = e
                }, Gr.start((function () {
                    null !== o && (Gr.stop(), Yr(o, e))
                }), (function () {
                    var t = {error: "timeout", error_description: "LINK_TIMEOUT"};
                    e.fail(t), e.always(t)
                }))
            } else r = Yr;
            return Cr(t, n).then((function (t) {
                r(t, e)
            }), (function (t) {
                e.fail(t), e.always(t)
            }))
        }
    }, Zr = {
        success: A,
        fail: A,
        always: A,
        callback: A,
        installTalk: Je,
        throughTalk: Je,
        extras: g,
        serverCallbackArgs: dt([function (e) {
            try {
                JSON.parse(e)
            } catch (e) {
                return !1
            }
            return !0
        }, g])
    }, eo = {success: ot, fail: ot, always: ot, installTalk: !1, throughTalk: !0};

    function to(e) {
        if (!f(e)) return !1;
        if (e.length > 2) throw new $t('Illegal argument for "buttons" in Link: size of buttons should be up to 2');
        return !0
    }

    var no = {
        required: {
            objectType: function (e) {
                return "feed" === e
            }, content: g
        }, optional: Pe({itemContent: g, social: g, buttonTitle: We, buttons: to}, Zr), defaults: eo
    }, ro = {
        required: {
            objectType: function (e) {
                return "list" === e
            }, headerTitle: We, headerLink: g, contents: function (e) {
                if (!f(e)) return !1;
                if (e.length < 2 || e.length > 3) throw new $t('Illegal argument for "contents" in Link: size of contents should be more than 1 and up to 3');
                return !0
            }
        },
        optional: Pe({
            buttonTitle: We,
            buttons: to,
            headerImageUrl: We,
            headerImageWidth: $e,
            headerImageHeight: $e
        }, Zr),
        defaults: eo
    }, oo = {
        required: {
            objectType: function (e) {
                return "commerce" === e
            }, content: g, commerce: g
        }, optional: Pe({buttonTitle: We, buttons: to}, Zr), defaults: eo
    }, io = {
        required: {
            objectType: function (e) {
                return "location" === e
            }, content: g, address: We
        }, optional: Pe({addressTitle: We, social: g, buttonTitle: We, buttons: to}, Zr), defaults: eo
    }, ao = {
        required: {
            objectType: function (e) {
                return "text" === e
            }, text: We, link: g
        }, optional: Pe({buttonTitle: We, buttons: to}, Zr), defaults: eo
    }, co = {
        required: {requestUrl: We},
        optional: Pe({templateId: $e, templateArgs: g}, Zr),
        defaults: Pe({templateArgs: {}}, eo)
    }, so = {required: {templateId: $e}, optional: Pe({templateArgs: g}, Zr), defaults: Pe({templateArgs: {}}, eo)};

    function uo(e) {
        return Ke({required: Pe({container: dt([Xe, We])}, e.required)}, e)
    }

    var lo = {
        defaultObjectTypes: ["feed", "list", "commerce", "location", "text"],
        sendFeed: no,
        createFeedButton: uo(no),
        sendList: ro,
        createListButton: uo(ro),
        sendCommerce: oo,
        createCommerceButton: uo(oo),
        sendLocation: io,
        createLocationButton: uo(io),
        sendText: ao,
        createTextButton: uo(ao),
        sendScrap: co,
        createScrapButton: uo(co),
        sendCustom: so,
        createCustomButton: uo(so),
        uploadImage: {required: {file: g}},
        deleteImage: {required: {imageUrl: We}},
        scrapImage: {required: {imageUrl: We}}
    };

    function po(e, t) {
        var n = at(e.container);
        if (!n) throw new $t("container is required for KakaoTalk Link: pass in element or id");
        var r = function (n) {
            n.preventDefault(), n.stopPropagation(), ho(e, t)
        };
        ct(n, "click", r), mo.push((function () {
            st(n, "click", r)
        }))
    }

    var fo = {
        default: {
            makeLinkFunc: function (e) {
                return new (0, Nr["".concat(Ar(e.objectType), "Link")])(e)
            }, requestUrl: "/v2/api/kakaolink/talk/template/default"
        }, scrap: {
            makeLinkFunc: function (e) {
                return new Kr(e)
            }, requestUrl: "/v2/api/kakaolink/talk/template/scrap"
        }, custom: {
            makeLinkFunc: function (e) {
                return new Hr(e)
            }, requestUrl: "/v2/api/kakaolink/talk/template/validate"
        }
    };

    function ho(e, t) {
        var n = fo[t], r = n.makeLinkFunc, o = n.requestUrl, i = r(e), a = Mt.os.ios && "tablet" === Mt.platform;
        Dt || e.throughTalk && ("mobile" === Mt.platform || a) ? Qr.send(e, o, i) : Xr.send(e, t, i)
    }

    var mo = [];
    var vo = Gt([Object.freeze({
        __proto__: null, createDefaultButton: function (e) {
            if (!e.objectType || !lt(lo.defaultObjectTypes)(e.objectType)) throw new $t("objectType should be one of (".concat(lo.defaultObjectTypes.join(", "), ")"));
            po(e = Qt(e, lo["create".concat(Ar(e.objectType), "Button")], "Link.createDefaultButton"), "default")
        }, sendDefault: function (e) {
            if (!e.objectType || !lt(lo.defaultObjectTypes)(e.objectType)) throw new $t("objectType should be one of (".concat(lo.defaultObjectTypes.join(", "), ")"));
            ho(e = Qt(e, lo["send".concat(Ar(e.objectType))], "Link.sendDefault"), "default")
        }, createScrapButton: function (e) {
            po(e = Qt(e, lo.createScrapButton, "Link.createScrapButton"), "scrap")
        }, sendScrap: function (e) {
            ho(e = Qt(e, lo.sendScrap, "Link.sendScrap"), "scrap")
        }, createCustomButton: function (e) {
            po(e = Qt(e, lo.createCustomButton, "Link.createCustomButton"), "custom")
        }, sendCustom: function (e) {
            ho(e = Qt(e, lo.sendCustom, "Link.sendCustom"), "custom")
        }, cleanup: function () {
            Vt(mo)
        }
    }), Object.freeze({
        __proto__: null, uploadImage: function (e) {
            return Cr("/v2/api/talk/message/image/upload", {file: (e = Qt(e, lo.uploadImage, "Link.uploadImage")).file})
        }, deleteImage: function (e) {
            return Cr("/v2/api/talk/message/image/delete", {image_url: (e = Qt(e, lo.deleteImage, "Link.deleteImage")).imageUrl})
        }, scrapImage: function (e) {
            return Cr("/v2/api/talk/message/image/scrap", {image_url: (e = Qt(e, lo.scrapImage, "Link.scrapImage")).imageUrl})
        }
    })]), go = "width=350, height=510";

    function yo(e, t, n) {
        var r = document.createElement("a");
        r.setAttribute("href", "#");
        var o = document.createElement("img");
        return o.setAttribute("src", t), o.setAttribute("title", n), o.setAttribute("alt", n), e.supportMultipleDensities && o.setAttribute("srcset", [t.replace(".png", "_2X.png 2x"), t.replace(".png", "_3X.png 3x")].join(", ")), r.appendChild(o), r
    }

    function bo(e) {
        return ut({api_ver: e, kakao_agent: Kt, app_key: Jt(), referer: zt + location.pathname + location.search})
    }

    var _o = ["small", "large"], ko = ["yellow", "mono"], wo = ["pc", "mobile"], So = ["consult", "question"], xo = {
        createAddChannelButton: {
            required: {container: dt([Xe, We]), channelPublicId: We},
            optional: {size: lt(_o), supportMultipleDensities: Je},
            defaults: {size: _o[0], supportMultipleDensities: !1}
        },
        addChannel: {required: {channelPublicId: We}},
        createChatButton: {
            required: {container: dt([Xe, We]), channelPublicId: We},
            optional: {size: lt(_o), color: lt(ko), shape: lt(wo), title: lt(So), supportMultipleDensities: Je},
            defaults: {size: _o[0], color: ko[0], shape: wo[0], title: So[0], supportMultipleDensities: !1}
        },
        chat: {required: {channelPublicId: We}}
    };

    function Oo(e) {
        var t = "".concat(Ht.channel, "/").concat(e.channelPublicId, "/friend");
        null !== Jt() && (t += "?".concat(bo("1.1"))), rn(t, "channel_add_social_plugin", go)
    }

    function Ao(e) {
        var t = "".concat(Ht.channel, "/").concat(e.channelPublicId, "/chat");
        null !== Jt() && (t += "?".concat(bo("1.1"))), rn(t, "channel_chat_social_plugin", go)
    }

    var To = [];
    var jo = Gt([Object.freeze({
        __proto__: null, createAddChannelButton: function (e) {
            var t = at(e.container);
            if (!t) throw new $t("container is required for Channel.createAddChannelButton: pass in element or id");
            on(e, t, {
                channelPublicId: "data-channel-public-id",
                size: "data-size",
                supportMultipleDensities: "data-support-multiple-densities"
            });
            var n = function (e) {
                var t = "friendadd_".concat(e.size, "_yellow_rect.png");
                return "".concat(Ht.channelIcon, "/channel/").concat(t)
            }(e = Qt(e, xo.createAddChannelButton, "Channel.createAddChannelButton")), r = yo(e, n, "카카오톡 채널 추가 버튼");
            t.appendChild(r);
            var o = function (t) {
                t.preventDefault(), Oo(e)
            };
            ct(r, "click", o), To.push((function () {
                st(r, "click", o), t.removeChild(r)
            }))
        }, addChannel: function (e) {
            Oo(e = Qt(e, xo.addChannel, "Channel.addChannel"))
        }, createChatButton: function (e) {
            var t = at(e.container);
            if (!t) throw new $t("container is required for Channel.createChatButton: pass in element or id");
            on(e, t, {
                channelPublicId: "data-channel-public-id",
                size: "data-size",
                color: "data-color",
                shape: "data-shape",
                title: "data-title",
                supportMultipleDensities: "data-support-multiple-densities"
            });
            var n = function (e) {
                var t = "".concat(e.title, "_").concat(e.size, "_").concat(e.color, "_").concat(e.shape, ".png");
                return "".concat(Ht.channelIcon, "/channel/").concat(t)
            }(e = Qt(e, xo.createChatButton, "Channel.createChatButton")), r = yo(e, n, "카카오톡 채널 1:1 채팅 버튼");
            t.appendChild(r);
            var o = function (t) {
                t.preventDefault(), Ao(e)
            };
            ct(r, "click", o), To.push((function () {
                st(r, "click", o), t.removeChild(r)
            }))
        }, chat: function (e) {
            Ao(e = Qt(e, xo.chat, "Channel.chat"))
        }, cleanup: function () {
            Vt(To)
        }
    })]), Co = {
        createAddFriendButton: {
            required: {container: dt([Xe, We]), plusFriendId: We},
            optional: {
                size: lt(["small", "large"]),
                color: lt(["yellow", "black"]),
                shape: lt(["rect", "round"]),
                supportMultipleDensities: Je
            },
            defaults: {size: "small", color: "yellow", shape: "rect", supportMultipleDensities: !1}
        },
        addFriend: {required: {plusFriendId: We}},
        createChatButton: {
            required: {container: dt([Xe, We]), plusFriendId: We},
            optional: {
                size: lt(["small", "large"]),
                color: lt(["yellow", "mono"]),
                shape: lt(["pc", "mobile"]),
                title: lt(["consult", "question"]),
                supportMultipleDensities: Je
            },
            defaults: {size: "small", color: "yellow", shape: "pc", title: "consult", supportMultipleDensities: !1}
        },
        chat: {required: {plusFriendId: We}}
    };

    function Io() {
        console && console.warn("KakaoWarning: Kakao.PlusFriend is deprecated. Please use Kakao.Channel instead.")
    }

    function Po(e) {
        var t = "".concat(Ht.channel, "/").concat(e.plusFriendId, "/friend");
        null !== Jt() && (t += "?".concat(bo("1.0"))), rn(t, "plus_friend_add_social_plugin", go)
    }

    function Fo(e) {
        var t = "".concat(Ht.channel, "/").concat(e.plusFriendId, "/chat");
        null !== Jt() && (t += "?".concat(bo("1.0"))), rn(t, "plus_friend_chat_social_plugin", go)
    }

    var Bo = [];
    var Eo = Gt([Object.freeze({
        __proto__: null, createAddFriendButton: function (e) {
            Io();
            var t = at(e.container);
            if (!t) throw new $t("container is required for PlusFriend.createAddFriendButton: pass in element or id");
            on(e, t, {
                plusFriendId: "data-plusfriend-id",
                size: "data-size",
                color: "data-color",
                shape: "data-shape",
                supportMultipleDensities: "data-support-multiple-densities"
            });
            var n = function (e) {
                var t = "friendadd_".concat(e.size, "_").concat(e.color, "_").concat(e.shape, ".png");
                return "".concat(Ht.channelIcon, "/plusfriend/").concat(t)
            }(e = Qt(e, Co.createAddFriendButton, "PlusFriend.createAddFriendButton")), r = yo(e, n, "플러스친구 친구 추가 버튼");
            t.appendChild(r);
            var o = function (t) {
                t.preventDefault(), Po(e)
            };
            ct(r, "click", o), Bo.push((function () {
                st(r, "click", o), t.removeChild(r)
            }))
        }, addFriend: function (e) {
            Io(), Po(e = Qt(e, Co.addFriend, "PlusFriend.addFriend"))
        }, createChatButton: function (e) {
            Io();
            var t = at(e.container);
            if (!t) throw new $t("container is required for PlusFriend.createChatButton: pass in element or id");
            on(e, t, {
                plusFriendId: "data-plusfriend-id",
                size: "data-size",
                color: "data-color",
                shape: "data-shape",
                title: "data-title",
                supportMultipleDensities: "data-support-multiple-densities"
            });
            var n = function (e) {
                var t = "".concat(e.title, "_").concat(e.size, "_").concat(e.color, "_").concat(e.shape, ".png");
                return "".concat(Ht.channelIcon, "/plusfriend/").concat(t)
            }(e = Qt(e, Co.createChatButton, "PlusFriend.createChatButton")), r = yo(e, n, "플러스친구 1:1 채팅 버튼");
            t.appendChild(r);
            var o = function (t) {
                t.preventDefault(), Fo(e)
            };
            ct(r, "click", o), Bo.push((function () {
                st(r, "click", o), t.removeChild(r)
            }))
        }, chat: function (e) {
            Io(), Fo(e = Qt(e, Co.chat, "PlusFriend.chat"))
        }, cleanup: function () {
            Vt(Bo)
        }
    })]), Lo = {
        required: {title: We},
        optional: {desc: We, name: We, images: f, type: We},
        defaults: {type: "website"},
        after: function (e) {
            e.images && (e.imageurl = e.images, delete e.images)
        }
    }, Uo = {
        createShareButton: {
            required: {container: dt([Xe, We])},
            optional: {url: We, text: We},
            defaults: {url: location.href}
        },
        share: {optional: {url: We, text: We}, defaults: {url: location.href}},
        open: {
            optional: {
                url: We, text: We, urlInfo: function (e) {
                    return g(e) && !!Qt(e, Lo, "Story.open")
                }, install: Je
            }, defaults: {url: location.href, install: !1}
        },
        createFollowButton: {
            required: {container: dt([Xe, We]), id: We},
            optional: {showFollowerCount: Je, type: lt(["horizontal", "vertical"])},
            defaults: {showFollowerCount: !0, type: "horizontal"},
            after: function (e) {
                "@" !== e.id[0] && (e.id = "@".concat(e.id))
            }
        }
    };

    function Ro(e) {
        var t = Pe({url: e.url}, Mo());
        e.text && (t.text = e.text), rn("".concat(Ht.storyShare, "?").concat(ut(t)), "kakaostory_social_plugin", "width=670, height=800, scrollbars=yes")
    }

    var zo = 0;

    function Mo() {
        var e = {kakao_agent: Kt};
        return null !== Jt() && (e.app_key = Jt()), e
    }

    var Do = [];
    var qo = Gt([Object.freeze({
        __proto__: null, createShareButton: function (e) {
            var t = at(e.container);
            if (!t) throw new $t("container is required for Story.createShareButton: pass in element or id");
            on(e, t, {url: "data-url"}), e = Qt(e, Uo.createShareButton, "Story.createShareButton");
            var n = function (e, t) {
                var n = document.createElement("a");
                n.setAttribute("href", "#");
                var r = document.createElement("img");
                return r.setAttribute("src", e), r.setAttribute("title", t), r.setAttribute("alt", t), n.appendChild(r), n
            }(Ht.storyIcon, "카카오스토리 웹 공유 버튼");
            t.appendChild(n);
            var r = function (t) {
                t.preventDefault(), Ro(e)
            };
            ct(n, "click", r), Do.push((function () {
                st(n, "click", r), t.removeChild(n)
            }))
        }, share: function (e) {
            Ro(e = Qt(e, Uo.share, "Story.share"))
        }, open: function (e) {
            var t = function (e) {
                var t = location.hostname || "", n = Pe({
                    apiver: "1.0",
                    appver: qt,
                    appid: t,
                    appname: t,
                    post: e.text ? "".concat(e.text, "\n").concat(e.url) : e.url
                }, Mo());
                e.urlInfo && (n.urlinfo = JSON.stringify(e.urlInfo), n.appname = e.urlInfo.name || n.appname);
                return "".concat(Ht.storyPostScheme, "?").concat(ut(n))
            }(e = Qt(e, Uo.open, "Story.open")), n = {
                urlScheme: t,
                intentURI: ["intent:".concat(t, "#Intent"), "".concat(e.install ? "package=com.kakao.story;" : "", "end;")].join(";"),
                appName: "KakaoStory",
                storeURL: en("com.kakao.story", "486244601"),
                onUnsupportedEnvironment: function () {
                    e.fail && e.fail()
                }
            };
            try {
                $r(n)
            } catch (e) {
            }
        }, createFollowButton: function (e) {
            var t = at(e.container);
            if (!t) throw new $t("container is required for Story.createFollowButton: pass in element or id");
            on(e, t, {id: "data-id", showFollowerCount: "data-show-follower-count", type: "data-type"});
            var n = function (e) {
                var t = zo++, n = e.showFollowerCount && "horizontal" === e.type ? 85 : 59,
                    r = e.showFollowerCount && "vertical" === e.type ? 46 : 20, o = document.createElement("iframe");
                o.src = function (e, t) {
                    var n = Pe({id: e.id, type: e.type, hideFollower: !e.showFollowerCount, frameId: t}, Mo());
                    return "".concat(Ht.storyChannelFollow, "?").concat(ut(n))
                }(e, t), o.setAttribute("frameborder", "0"), o.setAttribute("marginwidth", "0"), o.setAttribute("marginheight", "0"), o.setAttribute("scrolling", "no"), o.setAttribute("style", "width:".concat(n, "px; height:").concat(r, "px;"));
                var i = function (e) {
                    if (e.data && /\.kakao\.com$/.test(e.origin) && "string" == typeof e.data) {
                        var i = xt(et(e.data.split(","), (function (e) {
                            return parseInt(e, 10)
                        })), 3), a = i[0], c = i[1], s = i[2];
                        a === t && (n !== c && (o.style.width = "".concat(c, "px")), r !== s && (o.style.height = "".concat(s, "px")))
                    }
                };
                return {iframe$: o, messageHandler: i}
            }(e = Qt(e, Uo.createFollowButton, "Story.createFollowButton")), r = n.iframe$, o = n.messageHandler;
            t.appendChild(r), ct(window, "message", o), Do.push((function () {
                st(window, "message", o), t.removeChild(r)
            }))
        }, cleanup: function () {
            Vt(Do)
        }
    })]), No = ["wgs84", "katec"], Ko = {required: {name: We, x: Ge, y: Ge}, optional: {rpflag: We, cid: We}}, Ho = {
        start: {
            required: {name: We, x: Ge, y: Ge},
            optional: {
                coordType: lt(No),
                vehicleType: lt([1, 2, 3, 4, 5, 6, 7]),
                rpOption: lt([1, 2, 3, 4, 5, 6, 8, 100]),
                routeInfo: Je,
                sX: Ge,
                sY: Ge,
                sAngle: Ge,
                returnUri: We,
                rpflag: We,
                cid: We,
                guideId: Ge,
                viaPoints: function (e) {
                    if (f(e)) {
                        if (e.length > 3) throw new $t("Invalid parameter keys: via points should not be exceed 3. at Navi.start");
                        return He(e, (function (e) {
                            return Qt(e, Ko, "Navi.start")
                        })), !0
                    }
                    return !1
                }
            },
            defaults: {coordType: "katec", vehicleType: 1, rpOption: 100, routeInfo: !1}
        },
        share: {
            required: {name: We, x: Ge, y: Ge},
            optional: {coordType: lt(No), rpflag: We, cid: We, guideId: Ge},
            defaults: {coordType: "katec"}
        }
    };

    function Wo() {
        return {appkey: Jt(), apiver: "1.0", extras: {KA: Kt}}
    }

    function Jo(e, t) {
        var n = {
            urlScheme: e,
            intentURI: ["intent:".concat(e, "#Intent"), "package=com.locnall.KimGiSa", "S.browser_fallback_url=".concat(encodeURIComponent(t)), "end;"].join(";"),
            storeURL: t,
            universalLink: t
        };
        try {
            $r(n)
        } catch (e) {
        }
    }

    var Xo = Gt([Object.freeze({
        __proto__: null, start: function (e) {
            var t = ut(function (e) {
                var t = {name: e.name, x: e.x, y: e.y, rpflag: e.rpflag, cid: e.cid, guide_id: e.guideId}, n = {
                    coord_type: e.coordType,
                    vehicle_type: e.vehicleType,
                    rpoption: e.rpOption,
                    route_info: e.routeInfo,
                    s_x: e.sX,
                    s_y: e.sY,
                    s_angle: e.sAngle,
                    return_uri: e.returnUri
                }, r = Wo();
                return r.param = {destination: t, option: n, via_list: e.viaPoints}, r
            }(e = Qt(e, Ho.start, "Navi.start")));
            Jo("".concat(Ht.naviStartScheme, "?").concat(t), "".concat(Ht.naviWeb, "?").concat(t))
        }, share: function (e) {
            var t = ut(function (e) {
                var t = {name: e.name, x: e.x, y: e.y, rpflag: e.rpflag, cid: e.cid, guide_id: e.guideId},
                    n = {coord_type: e.coordType}, r = Wo();
                return r.param = {destination: t, option: n}, r.scheme_type = "sharePoi", r
            }(e = Qt(e, Ho.share, "Navi.share")));
            Jo("".concat(Ht.naviShareScheme, "?").concat(t), "".concat(Ht.naviWeb, "?").concat(t))
        }
    })]);

    function $o(e) {
        return $e(e) && e > 0 && e < 101
    }

    function Go(e) {
        if (e.maxPickableCount < e.minPickableCount) throw new $t('"minPickableCount" should not larger than "maxPickableCount"')
    }

    function Vo(e) {
        var t = {
            required: {reason: lt(["msgBlocked", "registered", "unregistered", "notFriend", "custom"])},
            optional: {message: We, uuids: f},
            after: function (e) {
                if (!("custom" !== e.reason || e.message && e.uuids)) throw new $t('"message" and "uuids" must be set for "custom" option in disableSelectOption')
            }
        };
        return f(e) && tt(e, (function (e) {
            return g(e) && !!Qt(e, t, "disableSelectOption")
        }))
    }

    function Yo(e) {
        if ("chatMember" === e.selectionType) {
            var t = e.chatFilters;
            if (t.indexOf("open") > -1) throw new $t('"open" is not allowed in "chatFilters"');
            if ((t.indexOf("direct") > -1 || t.indexOf("multi") > -1) && -1 === t.indexOf("regular")) throw new $t('"regular" should be included in "chatFilters"')
        }
    }

    var Qo = ["none", "invitable", "registered"], Zo = ["talk", "story", "talkstory"], ei = ["age"],
        ti = ["chat", "chatMember"], ni = ["regular", "direct", "multi", "open"], ri = ["all", "ios", "android"], oi = {
            returnUrl: We,
            success: A,
            fail: A,
            always: A,
            friendFilter: lt(Qo),
            serviceTypeFilter: lt(Zo),
            friendOrder: lt(ei),
            title: We,
            enableSearch: Je,
            countryCodeFilters: f,
            usingOsFilter: lt(ri),
            showMyProfile: Je,
            showFavorite: Je,
            disableSelectOptions: Vo,
            displayAllProfile: Je
        }, ii = {success: ot, fail: ot, always: ot, friendFilter: Qo[0], serviceTypeFilter: Zo[0]}, ai = {
            optional: {
                friendFilter: lt(Qo),
                serviceTypeFilter: lt(Zo),
                friendOrder: lt(ei),
                countryCodeFilters: f,
                usingOsFilter: lt(ri),
                showMyProfile: Je,
                showFavorite: Je,
                showPickedFriend: Je
            }, defaults: {friendFilter: Qo[0], serviceTypeFilter: Zo[0]}
        }, ci = {
            optional: {
                selectionType: lt(ti), chatFilters: function (e) {
                    return f(e) && tt(e, (function (e) {
                        return lt(ni)(e)
                    }))
                }
            }, defaults: {selectionType: ti[0], chatFilters: [ni[0]]}, after: Yo
        }, si = {
            selectFriend: {optional: oi, defaults: ii},
            selectFriends: {
                optional: ht(ht({}, oi), {}, {
                    showPickedFriend: Je,
                    maxPickableCount: $o,
                    minPickableCount: $o
                }), defaults: ii, after: Go
            },
            selectChat: {
                optional: {
                    returnUrl: We,
                    success: A,
                    fail: A,
                    always: A,
                    selectionType: lt(ti),
                    chatFilters: function (e) {
                        return f(e) && tt(e, (function (e) {
                            return lt(ni)(e)
                        }))
                    },
                    title: We,
                    enableSearch: Je,
                    disableSelectOptions: Vo,
                    displayAllProfile: Je,
                    maxPickableCount: $o,
                    minPickableCount: $o
                },
                defaults: {success: ot, fail: ot, always: ot, selectionType: ti[0], chatFilters: [ni[0]]},
                after: function (e) {
                    Go(e), Yo(e)
                }
            },
            select: {
                optional: {
                    returnUrl: We,
                    success: A,
                    fail: A,
                    always: A,
                    title: We,
                    enableSearch: Je,
                    disableSelectOptions: Vo,
                    displayAllProfile: Je,
                    maxPickableCount: $o,
                    minPickableCount: $o,
                    friendsParams: function (e) {
                        return g(e) && !!Qt(e, ai, "Picker.select")
                    },
                    chatParams: function (e) {
                        return g(e) && !!Qt(e, ci, "Picker.select")
                    }
                }, defaults: {success: ot, fail: ot, always: ot}, after: Go
            }
        };

    function ui(e, t, n) {
        pi();
        var r = Zt(), o = ht(ht({transId: r, appKey: Jt(), ka: Kt}, En() && {token: En()}), function (e) {
            ["countryCodeFilters", "chatFilters"].forEach((function (t) {
                void 0 !== e[t] && (e[t] = e[t].join(","))
            })), e.disableSelectOptions && (e.disableSelectOptions = JSON.stringify(e.disableSelectOptions));
            return e
        }(t)), i = Ht.pickerDomain + n;
        e.returnUrl ? (o.returnUrl = e.returnUrl, un(o, i)) : (an(r, "".concat(Ht.pickerDomain, "/proxy?transId=").concat(r), di), cn(e, Ht.pickerDomain, di), sn(o, {
            url: i,
            popupName: "friend_picker",
            popupFeatures: "location=no,resizable=no,status=no,scrollbars=no,width=460,height=608"
        }))
    }

    function li(e) {
        var t = ht({}, e);
        return ["returnUrl", "success", "fail", "always", "friendsParams", "chatParams"].forEach((function (e) {
            t[e] && delete t[e]
        })), t
    }

    var di = [];

    function pi() {
        Vt(di)
    }

    var fi = Gt([Object.freeze({
        __proto__: null, selectFriends: function (e) {
            ui(e = Qt(e, si.selectFriends, "Picker.selectFriends"), li(e), "/select/multiple")
        }, selectFriend: function (e) {
            ui(e = Qt(e, si.selectFriend, "Picker.selectFriend"), li(e), "/select/single")
        }, selectChat: function (e) {
            ui(e = Qt(e, si.selectChat, "Picker.selectChat"), li(e), "/chat/select")
        }, select: function (e) {
            ui(e = Qt(e, si.select, "Picker.select"), ht(ht(ht({}, li(e)), e.friendsParams), e.chatParams), "/tab/select")
        }, cleanup: pi
    })]);

    function hi() {
        return null !== Jt()
    }

    "function" == typeof define && define.amd && (window.Kakao = e), "function" == typeof window.kakaoAsyncInit && setTimeout((function () {
        window.kakaoAsyncInit()
    }), 0), e.VERSION = qt, e.cleanup = function () {
        var e = this;
        He(["Auth", "API", "Link", "Channel", "PlusFriend", "Story", "Navi", "Picker"], (function (t) {
            return e[t] && e[t].cleanup()
        })), Xt(null)
    }, e.init = function (e) {
        if (Mt.browser.msie && Mt.browser.version.major < 9) throw new $t("Kakao.init: Unsupported browser");
        if (hi()) throw new $t("Kakao.init: Already initialized");
        if (!We(e)) throw new $t("Kakao.init: App key must be provided");
        Xt(e), this.Auth = xr, this.API = Or, this.Link = vo, this.Channel = jo, this.PlusFriend = Eo, this.Story = qo, this.Navi = Xo, this.Picker = fi
    }, e.isInitialized = hi, Object.defineProperty(e, "__esModule", {value: !0})
}));